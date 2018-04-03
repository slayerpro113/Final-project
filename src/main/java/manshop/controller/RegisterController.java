package manshop.controller;

import manshop.entity.*;
import manshop.helper.GmailSender;
import manshop.helper.Pbkdf2Encryptor;
import manshop.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.util.List;
import java.util.Random;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
public class RegisterController {

    @Autowired
    UserRepository userRepository;
    @Autowired
    PasswordRepository passwordRepository;
    @Autowired
    RoleRepository roleRepository;
    @Autowired
    ProductRepository productRepository;
    @Autowired
    DiscountCodeRepository discountCodeRepository;

    @RequestMapping(value = "register", method = GET)
    public String showSignUpPage(Model model) {
        model.addAttribute("userEntity", new UserEntity());
        return "register";
    }

    @RequestMapping(value="register", method = POST)
    public String doRegister(UserEntity userEntity, Model model,
                             @RequestParam(name="pass") String password,
                             HttpServletRequest request){
        HttpSession session= request.getSession();
        UserEntity userCheckEmail = userRepository.findByEmail(userEntity.getEmail());
        if(userCheckEmail == null) {
            String keyHash = Pbkdf2Encryptor.getSaltString();
            String hashedPass = Pbkdf2Encryptor.createHash(password, keyHash, 1000);
            //password
            PasswordEntity passwordEntity = new PasswordEntity();
            passwordEntity.setKeyHash(keyHash);
            passwordEntity.setHashedPass(hashedPass);
            userEntity.setPasswordEntity(passwordEntity);
            //set role
            RoleEntity role = roleRepository.findOne(1);
            userEntity.setRoleEntity(role);
            userEntity.setIsDel("true");
            userRepository.save(userEntity);

            //discount code
            Random rd = new Random();
            int rand = rd.nextInt(1000) + 10000;
            String discountCodde = String.valueOf(rand);

            DiscountCodeEntity discountCodeEntity = new DiscountCodeEntity();
            discountCodeEntity.setCode(discountCodde);
            discountCodeEntity.setIsUsed("False");
            discountCodeRepository.save(discountCodeEntity);


            session.setAttribute("user", userEntity);
            sendMail(userEntity,discountCodde);
            List<ProductEntity> products = (List<ProductEntity>)productRepository.getHotProduct();
            model.addAttribute("products",products);
        }else{
            String message = "Your email is already taken. Try again!";
            model.addAttribute("message",message);
            return "register";
        }
        return "redirect:index";
    }

    public void sendMail(UserEntity userEntity, String discountCode){
        String subject = "Registration successfully";
        String body = "<h1> Dear " + userEntity.getFullName() + ",<h1>"
                + "<h2>You've registered successfully to our website. </h2>"
                + "<h2>And to wellcome you to our system, here is a small gift for our new customer. " +
                    "Use this code to get 20% discount on your fisrt order. Your code: </h2>" +discountCode
                + "<h2>Enjoy your time with us</h2>";
        try {
            GmailSender.send(userEntity.getEmail(), subject, body, true);
        } catch (Exception e) {
            System.out.println(e);
        }
    }

}

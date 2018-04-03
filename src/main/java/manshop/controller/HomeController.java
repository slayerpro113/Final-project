package manshop.controller;


import manshop.entity.BannerEntity;
import manshop.entity.ProductEntity;
import manshop.entity.UserEntity;
import manshop.repository.BannerRepository;
import manshop.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.util.List;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
@RequestMapping("/")
public class HomeController {
    @Autowired
    ProductRepository productRepository;
    @Autowired
    BannerRepository bannerRepository;

    @RequestMapping
    public String showHome(Model model,HttpServletRequest request) {
        HttpSession session = request.getSession();
        List<ProductEntity> products = (List<ProductEntity>)productRepository.getHotProduct();
        List<BannerEntity> banners= bannerRepository.getBanners();

        session.setAttribute("banners",banners);
        model.addAttribute("products",products);
        return "index";
    }

    @RequestMapping("index")
    public String showIndex(HttpServletRequest request, Model model) {
        HttpSession session = request.getSession();

        List<ProductEntity> products = (List<ProductEntity>)productRepository.getHotProduct();
        List<BannerEntity> banners= bannerRepository.getBanners();

        model.addAttribute("products",products);
        session.setAttribute("banners",banners);
        return "index";
    }


    @RequestMapping(value="about")
    public String  aboutPage(){
        return "about";
    }


}


package manshop.controller;

import manshop.entity.CartItem;
import manshop.entity.FavouriteEntity;
import manshop.entity.ProductEntity;
import manshop.entity.UserEntity;
import manshop.repository.FavouriteRepository;
import manshop.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class FavouriteController {

    @Autowired
    ProductRepository productRepository;
    @Autowired
    FavouriteRepository favouriteRepository;

    @RequestMapping(value="favourite", method = RequestMethod.POST)
    @ResponseBody
    public String favourite(Model model,
                            HttpServletRequest request,
                            @RequestParam(name="productId") int productId){
        HttpSession session = request.getSession();
        UserEntity user = (UserEntity)session.getAttribute("user");
        ProductEntity product = productRepository.findOne(productId);
        if(user != null) {
            List<FavouriteEntity> favouriteList =
                    favouriteRepository.getFavouriteListByUserId(user.getId());

            if (favouriteList != null) {
                boolean isExistingId = false;
                for (FavouriteEntity favouriteEntity : favouriteList) {
                    if (favouriteEntity.getProductEntity().getId() == productId) {
                        isExistingId = true;
                        break;
                    }
                }
                if (!isExistingId) {
                  FavouriteEntity favouriteEntity = new FavouriteEntity();
                  favouriteEntity.setProductEntity(product);
                  favouriteEntity.setUserEntity(user);
                  favouriteRepository.save(favouriteEntity);
                }
            } else { // new account
                favouriteList = new ArrayList<>();
                FavouriteEntity favouriteEntity = new FavouriteEntity();
                favouriteEntity.setProductEntity(product);
                favouriteEntity.setUserEntity(user);
                favouriteRepository.save(favouriteEntity);
            }
        }
        return "";
    }

    @RequestMapping(value = "deleteFavourite")
    public String deleteFavourite(Model model,
                                  @RequestParam(name="favouriteId") int favouriteId,
                                  @RequestParam(name="userId") int userId){
        FavouriteEntity favourite = favouriteRepository.findOne(favouriteId);
        favouriteRepository.delete(favourite);
        // load again
        List<FavouriteEntity> favouriteList =
                favouriteRepository.getFavouriteListByUserId(userId);
        model.addAttribute("favouriteList",favouriteList);
        return "favourite";
    }
}

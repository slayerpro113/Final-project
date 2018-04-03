package manshop.controller;

import manshop.entity.ProductEntity;
import manshop.entity.SizeEntity;
import manshop.entity.ViewEntity;
import manshop.repository.PasswordRepository;
import manshop.repository.ProductRepository;
import manshop.repository.SizeRepository;
import manshop.repository.ViewRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class ProductDetailController {
    @Autowired
    ProductRepository productRepository;
    @Autowired
    ViewRepository viewRepository;
    @Autowired
    SizeRepository sizeRepository;

    @RequestMapping(value="product-detail")
    public String showProductDetailPage(Model model,
                                        @RequestParam(name="productId") int productId
                                        ){

        ViewEntity viewEntity = viewRepository.getViewByProductId(productId);
        viewEntity.setCount(viewEntity.getCount() + 1);
        viewRepository.save(viewEntity);
        //selected product
        ProductEntity product = productRepository.findOne(productId);

        double price = product.getPrice();
        int categoryId = product.getCategoryEntity().getId();

        //recommend product
        List<ProductEntity> recommendProducts =
                productRepository.getProductbyPriceAndCategoryId(price,categoryId, productId);

        //related hot product
        List<ProductEntity> hotProducts = productRepository.getHotProductByCategoryID(categoryId);

        //size
        if(categoryId == 2 ){
            List<SizeEntity> sizeEntities = (List<SizeEntity>)sizeRepository.getSizeJeans();
            model.addAttribute("sizeEntities",sizeEntities);
        }else{
            List<SizeEntity> sizeEntities = (List<SizeEntity>)sizeRepository.getSize();
            model.addAttribute("sizeEntities",sizeEntities);
        }

        model.addAttribute("product",product);
        model.addAttribute("recommendProducts",recommendProducts);
        model.addAttribute("hotProducts",hotProducts);
        return "product-detail";
    }
}

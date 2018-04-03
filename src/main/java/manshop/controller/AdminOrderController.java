package manshop.controller;

import manshop.entity.CartItem;
import manshop.entity.OrderDetailEntity;
import manshop.entity.OrdersEntity;
import manshop.entity.StateEntity;
import manshop.repository.OrderDetailRepository;
import manshop.repository.OrdersRepository;
import manshop.repository.StateRepository;
import org.hibernate.internal.CriteriaImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class AdminOrderController {

    @Autowired
    OrdersRepository ordersRepository;
    @Autowired
    StateRepository stateRepository;
    @Autowired
    OrderDetailRepository orderDetailRepository;

    @RequestMapping("admin_order")
    public String showOrders(Model model){
        List<OrdersEntity> orders= (List<OrdersEntity>) ordersRepository.getOrdersDESC();
        model.addAttribute("orders", orders);
        return "admin_order";
    }

    @RequestMapping("detailOrder")
    public String viewOrder(@RequestParam(name = "id") int id,
                            Model model){
        OrdersEntity order= (OrdersEntity) ordersRepository.findOne(id);
        List<OrderDetailEntity> orderDetailList= orderDetailRepository.getOrderDetailByOrdersId(id);

        if(!order.getStateEntity().getStateName().equalsIgnoreCase("Canceled")){
            List<StateEntity> states= stateRepository.getStates(order.getStateEntity().getId());
            model.addAttribute("states", states);
        }
        model.addAttribute("order", order);
        model.addAttribute("orderDetailList", orderDetailList);
        return "admin_orderdetail";
    }

    @RequestMapping("updateOrder")
    public String updateOrder(@RequestParam(name = "id") int id,
                              @RequestParam(name = "state") int stateId){
        OrdersEntity order= (OrdersEntity) ordersRepository.findOne(id);
        StateEntity stateEntity= stateRepository.findOne(stateId);
        order.setStateEntity(stateEntity);
        ordersRepository.save(order);
        return "redirect:admin_order";
    }

}

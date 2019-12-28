package com.bestore.controller;

import com.bestore.dao.BestoreDao;
import com.bestore.dao.BrandDao;
import com.bestore.dao.ProductDao;
import com.bestore.entity.Bestore;
import com.bestore.entity.Brand;
import com.bestore.entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class LoginController {
    @Autowired
    BestoreDao bestore_server;
    @Autowired
    ProductDao product_server;
    @Autowired
    BrandDao brand_server;

    String USERNAME = "admin";
    String PASSWORD = "admin";

    /**
     * login 登录检查
     * @param session
     * @param username
     * @param password
     * @return
     */
    @RequestMapping(value = "login",method = RequestMethod.GET)
    public String login(HttpSession session,String username,String password){
        String login_infor;
        if (USERNAME.equals(username) && PASSWORD.equals(password)){
            //bestore 店铺信息
            Bestore bestore = bestore_server.findBestore();
            session.setAttribute("bestore",bestore);
            //product 商品信息
            List<Product> admin_product = product_server.findProduct();
            session.setAttribute("admin_product",admin_product);
            //brand 加盟信息
            List<Brand> brand = brand_server.findBrand();
            session.setAttribute("brand",brand);
            session.setAttribute("username",username);
            return "redirect:/html/adminBestore.jsp";
        }else{
            login_infor = "用户名或密码错误！";
            session.setAttribute("login_infor",login_infor);
            return "redirect:/html/adminLogin.jsp";
        }
    }
}

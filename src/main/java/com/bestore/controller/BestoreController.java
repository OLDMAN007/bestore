package com.bestore.controller;

import com.bestore.dao.*;
import com.bestore.entity.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * BestoreController
 * Harper Cheung
 * 2016/6/29
 * 1.0 version
 */
@Controller
public class BestoreController {
    @Autowired
    BestoreDao bestor_server;
    @Autowired
    ProkindDao prokind_server;
    @Autowired
    ProductDao product_server;
    @Autowired
    RecruitmentDao recruitment_server;
    @Autowired
    BrandDao brand_service;

    /**
     * findBestore
     * 查询 bestore prokind product recruitment brand
     * @param session
     * @return
     */
    @RequestMapping(value = "findBestore",method = RequestMethod.GET)
    public String findBestore(HttpSession session){
        /**
         * bestore 店铺所有信息
         * history 店铺历史信息
         */
        Bestore bestore = bestor_server.findBestore();
        session.setAttribute("bestore",bestore);
        List<History> history = bestore.getHistory();
        session.setAttribute("history",history);
        /**
         * prokind 商品种类信息
         */
        List<Prokind> prokind = prokind_server.findProkind();
        session.setAttribute("prokind",prokind);
        /**
         * product 商品信息
         */
        List<Product> product = product_server.findProduct();
        session.setAttribute("product",product);
        /**
         * recruitment 招聘信息
         * rec_comment 岗位信息
         */
        Recruitment recruitment = recruitment_server.findRecruitment();
        session.setAttribute("recruitment",recruitment);
        List<Rec_comment> rec_comment = recruitment.getRec_comment();
        session.setAttribute("rec_comment",rec_comment);
        /**
         * brand 加盟信息表
         */
        List<Brand> brand = brand_service.findBrand();
        session.setAttribute("brand",brand);

        return "redirect:/html/index.jsp";
    }

    /**
     * updateStore_name 修改店铺名
     * @param session
     * @param store_name
     * @return
     */
    @RequestMapping(value = "updateStore_name",method = RequestMethod.GET)
    public String updateStore_name(HttpSession session,String store_name){
        String store_name_infor ;
        bestor_server.updateStore_name(store_name);
        store_name_infor = "店铺信息修改成功";
        session.setAttribute("store_name_infor",store_name_infor);
        return "redirect:/html/adminBestore.jsp";
    }

    /**
     * updateStore_place 修改店铺地址
     * @param session
     * @param store_place
     * @return
     */
    @RequestMapping(value = "updateStore_place",method = RequestMethod.GET)
    public String updateStore_place(HttpSession session,String store_place){
        String store_place_infor ;
        bestor_server.updateStore_place(store_place);
        store_place_infor = "店铺地址修改成功";
        session.setAttribute("store_place_infor",store_place_infor);
        return "redirect:/html/adminBestore.jsp";
    }

    /**
     * updateStore_zipcode 修改店铺邮编
     * @param session
     * @param store_zipcode
     * @return
     */
    @RequestMapping(value = "updateStore_zipcode",method = RequestMethod.GET)
    public String updateStore_zipcode(HttpSession session,String store_zipcode){
        String store_zipcode_infor;
        bestor_server.updateStore_zipcode(store_zipcode);
        store_zipcode_infor = "店铺邮编修改成功";
        session.setAttribute("store_zipcode_infor",store_zipcode_infor);
        return "redirect:/html/adminBestore.jsp";
    }
}

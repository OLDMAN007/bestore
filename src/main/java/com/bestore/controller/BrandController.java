package com.bestore.controller;

import com.bestore.dao.BrandDao;
import com.bestore.entity.Brand;
import com.bestore.tool.ImageUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * BrandController
 * Harper Cheung
 * 2019/6/29
 * 1.0 version
 */
@Controller
public class BrandController {
    @Autowired
    BrandDao brand_server;

    @RequestMapping(value = "insertBrand",method = RequestMethod.POST)
    public String insertBrand(HttpServletRequest request, HttpSession session, String brand_title, MultipartFile pictureFile, String brand_comment){
        String insertBrand_infor;

        Brand brand = new Brand();
        brand.setBrand_title(brand_title);
        brand.setBrand_comment(brand_comment);

        // 得到上传图片的地址
        String brand_image;
        try {
            //ImageUtils为之前添加的工具类
            brand_image = ImageUtils.upload(request, pictureFile);
            if (brand_image != null) {
                // 将上传图片的地址封装到实体类
                brand.setBrand_image(brand_image);
                System.out.println("-----------------图片上传成功！");
            }else{
                System.out.println("-----------------图片上传失败！");
            }
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            System.out.println("----------------图片上传失败！!");
        }

        SimpleDateFormat sdf = new SimpleDateFormat();  // 格式化时间
        sdf.applyPattern("yyyy-MM-dd HH:mm:ss");        // a为am/pm的标记
        Date date = new Date();                         // 获取当前时间
        brand.setBrand_time(sdf.format(date));
        brand_server.insertBrand(brand);

        insertBrand_infor = "添加成功";
        session.setAttribute("insertBrand_infor",insertBrand_infor);
        return "redirect:/html/adminBrand.jsp";
    }

    /**
     * deleteBrand 删除加盟信息
     * @param session
     * @param brand_id
     * @return
     */
    @RequestMapping(value = "deleteBrand",method = RequestMethod.GET)
    public String deleteBrand(HttpSession session,String brand_id){
        String deleteBrand_infor;
        brand_server.deleteBrand(brand_id);
        deleteBrand_infor = "删除成功！";
        session.setAttribute("deleteBrand_infor",deleteBrand_infor);
        return "redirect:/html/adminBrand.jsp";
    }
}

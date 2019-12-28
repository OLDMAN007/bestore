package com.bestore.controller;

import com.bestore.dao.ProductDao;
import com.bestore.entity.Product;
import com.bestore.tool.ImageUtils;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

/**
 * ProduceController
 * Harper Cheung
 * 2019/6/29
 * 1.0 version
 */
@Controller
public class ProductController {
    @Autowired
    ProductDao product_server;

    /**
     * insertProduct 添加商品
     * @param request
     * @param session
     * @param pro_name
     * @param pictureFile
     * @param pro_kind
     * @return
     */
    @RequestMapping(value = "insertProduct",method = RequestMethod.POST)
    public String insertProduct(HttpServletRequest request, HttpSession session, String pro_name, MultipartFile pictureFile, int pro_kind)throws Exception{
        String product_infor;

        Product product = new Product();
        product.setPro_name(pro_name);
        product.setPro_kind(pro_kind);

//        //使用UUID给图片重命名，并去掉四个“-”
//        String name = UUID.randomUUID().toString().replaceAll("-", "");
//        //获取文件的扩展名
//        String ext = FilenameUtils.getExtension(pictureFile.getOriginalFilename());
        /**
         * 1.0  失败
         * 1. 路径错误，错误路径为 F:\IdeaProjects\bestore\target\harper,cheung\image
         * 2. 上传文件失败，报错 HTTP Status 500 - Request processing failed; nested exception is java.lang.NullPointerException
         */
////        //设置图片上传路径
////        String url = request.getSession().getServletContext().getRealPath("/image");
////        System.out.println(url);
        /**
         * 2.0  失败
         * 1. 路径错误
         * 2. 报错  H:\Java\apache-tomcat-8.0.50\bin\src\main\webapp\image\0b9cf70d1e5543e6b3ef4139fe753e32.jpg (系统找不到指定的路径。)
         */
//        File directory = new File("");// 参数为空
//        String workspacePath = directory.getCanonicalPath(); //获取工作空间的绝对路径
//        System.out.println(workspacePath);
//        String uploadDicPath = "\\src\\main\\webapp\\image\\"; //手动添加上传文件夹的路径
//        String uploadPath = workspacePath + uploadDicPath; //最终图片上传的路径
//        System.out.println(uploadPath);
//
//        //以绝对路径保存重名命后的图片
//        pictureFile.transferTo(new File(uploadPath+"/"+name + "." + ext));
//        product.setPro_image("../image"+"/"+name + "." + ext);
        /**
         * 3.0  success
         */
        // 得到上传图片的地址
        String pro_image;
        try {
            //ImageUtils为之前添加的工具类
            pro_image = ImageUtils.upload(request, pictureFile);
            if (pro_image != null) {
                // 将上传图片的地址封装到实体类
                product.setPro_image(pro_image);
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
        product.setPro_time(sdf.format(date));

        product_server.insertProduct(product);

        product_infor = "商品添加成功";

        session.setAttribute("product_infor",product_infor);

        return "redirect:/html/adminProduct.jsp";
    }

    /**
     * deleteProduct 删除商品
     * @param session
     * @param pro_id
     * @return
     */
    @RequestMapping(value = "deleteProduct",method = RequestMethod.GET)
    public String deleteProduct(HttpSession session,String pro_id){
        String deleteProduct_infor;
        product_server.deleteProduct(pro_id);
        deleteProduct_infor = "删除成功";
        session.setAttribute("deleteProduct_infor",deleteProduct_infor);
        return "redirect:/html/adminProduct.jsp";
    }
}

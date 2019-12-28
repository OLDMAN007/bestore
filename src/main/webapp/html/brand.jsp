<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="../css/index_1.css">
        <link rel="stylesheet" type="text/css" href="../css/index_2.css">
		<title>品牌加盟</title>
	</head>
	<body>
    <div class="header">
        <div class="header-top"></div>
        <div class="header_1">
            <div class="logo fl"><a href="index.jsp"><img src="${bestore.store_logo}"></a></div>
            <ul class="nav_1">
                <li class="nav_1-2" style="margin-left:0;"><a href="index.jsp">首页</a></li>
                <li class="nav_1-3"><a href="about.jsp">关于${bestore.store_name}</a></li>
                <li class="nav_1-4"><a href="product.jsp">产品中心</a></li>
                <li class="nav_1-5"><a href="#">新闻中心</a></li>
                <li class="on_1" style="margin-left:72px;"><a href="brand.jsp">品牌加盟</a></li>
                <li class="nav_1-6"><a href="advertise.jsp">企业招聘</a></li>
                <li class="nav_1-7"><a href="connect.jsp">联系我们</a></li>
            </ul>
        </div>

    </div>
<!-- header结束 -->
<div class="banner_3">
	<a href="#"></a>
	<div class="focus_1">
               <a href="#"></a>
               <a href="#"></a>
               <a href="#"></a>
               <a href="#"></a>
               <a href="#" class="on_6"></a>
               <a href="#"></a>
               <a href="#"></a>
    </div>

</div>
<!--banner_3结束-->
<div class="box_12">
	   <div class="title_3">
            	    <p class="title_3-1">品牌加盟</p>
            	    <div class="square_1"></div>
            	    <p class="title_3-2">LEARN &nbsp;MORE &nbsp;ABOUT&nbsp;LIANGPINPIZI</p>
            	    <ul class="nav_5 fl">
            	    	  <li><a href="#">加盟信息</a></li>
            	    	  <li class="on_2 nav_5-2"><a href="#">加盟文化</a></li>
            	    	  <li><a href="#">我要加盟</a></li>
            	    </ul>
     </div> 	
</div>
<div class="box_13">
	 <c:forEach items="${brand}" var="brand">
         <dl class="one-13">
           <dt class="fl"><img src="${brand.brand_image}" style="width: 379px;height: 259px;"></dt>
           <dd>
              <p class="box_13-1"><a href="#">惊喜：${brand.brand_title}</a></p>
              <p class="box_13-2">${brand.brand_time}</p>
              <p class="box_13-3">${brand.brand_comment}</p>
              <p class="box_13-4"><a href="#">查看详情&gt;</a></p>
           </dd>
         </dl>
     </c:forEach>
	 <div class="turn_num">
	 	  <a href="#" class="up_1 fl">上一页</a>
	 	  <a href="#" class="down_1 fr">下一页</a>
	 	  <ul class="turn_num-1 fl">
	 	  	<li class="turn_num-2"><a href="#">1</a></li>
	 	  	<li class="turn_num-3"><a href="#">2</a></li>
	 	  	<li class="turn_num-4"><a href="#">3</a></li>
	 	  </ul>
	 </div>
</div>
<div class="box_11">
	   <div class="box_11-1">
	          <p class="box_11-2">树根文化</p>
	          <div class="pic_9"><img src="../images/pic-2.png"></div>
	          <p class="box_11-3">${bestore.clutur}</p>
	   </div>
</div>
<!--box_11结束-->
<div class="footer">
       <div class="box_7">
              <div class="content_2 fl">
                     <div class="background_3 fl">
                            <div class="contact_1">
                                   <p class="contact_1-1">CONTACT</p>
                                   <p class="contact_1-2">FOR&nbsp;ME</p>
                            </div>                            
                     </div>
                     <div class="word_4 fr">
                            <p class="word_4-1">ONLINE&nbsp;SERVICE</p>
                            <p class="word_4-2">400-1177-517</p>
                            <hr class="word_4-3">
                            <p class="word_4-4">传真:（86）${bestore.store_tel}</p>
                            <p class="word_4-5">邮箱：liangpinpuzi@liangpinpuzi.cn</p>
                     </div>
              </div>
              <div class="content_3 fr">
                     <div class="nav_3 fl">
                             <li class="nav_3-1">关于${bestore.store_name}</li>
                             <li><a href="#">企业简介</a></li>
                             <li><a href="#">企业文化</a></li>
                             <li><a href="#">企业历程</a></li>
                     </div>
                     <div class="nav_4 fr">
                             <li class="nav_3-1">产品中心</li>
                             <li><a href="#">新款上市</a></li>
                             <li><a href="#">明星爆款</a></li>
                             <li><a href="#">产品总汇</a></li>
                     </div>
              </div>
       </div>
       <div class="footer-bottom">
              <div class="footer-bottom_1">
                      <p>COPYRIGHT&nbsp;&copy;&nbsp;2011&nbsp;ZHOUHEIYA.&nbsp;ALL&nbsp;RIGHTS&nbsp;RESERVED鄂ICP&nbsp; 备07004825号&nbsp;POWERED&nbsp;BY&nbsp;JL-TECH&nbsp;京伦科技</p>
              </div>
       </div>    
</div>
<!--footer结束-->
</body>
</html>









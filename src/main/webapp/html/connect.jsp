<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
	<head>
		<%--<meta charset="UTF-8">--%>
		<link rel="stylesheet" type="text/css" href="../css/index_1.css">
        <link rel="stylesheet" type="text/css" href="../css/index_2.css">
		<title>招聘</title>
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
                <li class="nav_1-6"><a href="brand.jsp">品牌加盟</a></li>
                <li class="nav_1-7"><a href="advertise.jsp">企业招聘</a></li>
                <li class="on_1" style="margin-left:72px;"><a href="connect.jsp">联系我们</a></li>
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
               <a href="#"></a>
               <a href="#"></a>
               <a href="#" class="on_6"></a>
    </div>
</div>
<!--banner_5结束-->
<div class="box_16">
	<div class="title_3">
            	    <p class="title_3-1">联系我们</p>
            	    <div class="square_1"></div>
            	    <p class="title_3-2">THE&nbsp;FOLLOWING&nbsp;INFORMATION&nbsp;CAN&nbsp;BE&nbsp;CONVENIENT&nbsp;TO&nbsp;CONTACT&nbsp;US</p>
  </div>
</div>
<!--box_16结束-->
<div class="box_17">
	 <div class="box_18 fl">
	       <i></i>
	       <p class="box_18-1">公司地址</p>
	       <p class="box_18-2">${bestore.store_place}</p>
	       <p class="box_18-3">邮编：${bestore.store_zipcode}</p>
	 </div>
	  <div class="box_19 fl" style="margin-left:127px;">
	       <i></i>
	       <p class="box_18-1">联系电话</p>
	       <p class="box_18-2">电话：${bestore.store_tel}</p>
	       <p class="box_18-3">传真：${bestore.store_fax}</p>
	 </div>
	  <div class="box_20 fl" style="margin-left:127px;">
	       <i></i>
	       <p class="box_18-1">联系电话</p>
	       <p class="box_18-2">电话：${bestore.store_tel}</p>
	       <p class="box_18-3">传真：${bestore.store_fax}</p>
	 </div>
</div>
<!--box_17结束-->
<div class="box_21">
	  <div class="box_22 fl">
        <p class="box_22-1">如何到达</p>
	  	<p class="box_22-2">公交车</p>
	  	<p class="box_22-3">线路；1路，8路，21路，45路，61路，221路</p> 
	  	<p class="box_22-2" style="margin-top:67px;">出租车？自驾</p>
	  	<p class="box_22-3">地点：锦江区同瑞大厦</p>
	  	<p class="box_22-3">地址：${bestore.store_place}</p>
      
</div>
      <iframe class="box_23 fr" src="../iframe/map.html"></iframe>
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
</body>
</html>

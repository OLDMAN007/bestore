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
	<title>${bestore.store_name}</title>
</head>
<body>
<div class="header">
       <div class="header-top"></div>
       <div class="header_1">
           <%--<form action="/findBestore" method="get"><input type="submit" value="刷新"></form>--%>
              <div class="logo fl"><a href="/findBestore"><img src="${bestore.store_logo}"></a></div>
              <ul class="nav_1">
                    <li class="on_1"><a href="#">首页</a></li>
                    <li class="nav_1-2"><a href="about.jsp">关于${bestore.store_name}</a></li>
                    <li class="nav_1-3"><a href="product.jsp">产品中心</a></li>
                    <li class="nav_1-4"><a href="#">新闻中心</a></li>
                    <li class="nav_1-5"><a href="brand.jsp">品牌加盟</a></li>
                    <li class="nav_1-6"><a href="advertise.jsp">企业招聘</a></li>
                    <li class="nav_1-7"><a href="connect.jsp">联系我们</a></li>
              </ul>
       </div>
	
</div>
<!-- header结束 -->
<div class="banner">
	<a href="#"></a>
	 <div class="focus">
               <a href="#" class="on_5"></a>
               <a href="#"></a>
               <a href="#"></a>
               <a href="#"></a>
               <a href="#"></a>
               <a href="#"></a>
               <a href="#"></a>
    </div>
</div>
<!-- banner结束 -->
<div class="box_1">
       <div class="sidebar_1 fl">
              <div class="background_1">
                     <img src="../images/background_1.png">
                     <span></span>
                     <p class="background_1-1">了解我们</p>
                     <hr/>
                     <p class="background_1-2"><a href="#">LEARN&nbsp;MORE&nbsp;ABOUT</a></p>
                     <p class="background_1-3"><a href="#">OUR&nbsp;&nbsp;COMPANY</a></p>
              </div>
              <div class="pic_1"><img src="../images/pic_1.png"></div>
       </div>
       <div class="box_2 fr">
               <div class="pic_2 fl"><img src="../images/pic_2.png"></div>
               <div class="word_1 fr">
                       <p class="word_1-1">${bestore.store_name}</p>
                       <p class="word_1-2">${bestore.store_about.working}</p>
                       <p class="word_1-3 fr"><a href="#">更多</a></p>
               </div>
       </div>
</div>
<!-- box_1结束 -->
<div class="box_2_1">
       <div class="title_1">
              <p class="title_1-1">OUR&nbsp;&nbsp;PRODUCT</p>
              <p class="title_1-2">${bestore.store_name}产品</p>
              <p class="title_1-3">品牌产品</p>
       </div>
        <c:forEach items="${prokind}" var="kind" varStatus="status">
           <dl class="one-${status.index + 1} fl">
                 <dt><a href="#"><img src="${kind.kind_image}"></a></dt>
                 <dd>${kind.kind_name}</dd>
                 <a href="#"></a>
           </dl>
        </c:forEach>
</div>
<!-- box_2结束 -->
<div class="box_3">
       <div class="title_1">
              <p class="title_1-1">SEARCH&nbsp;FOR &nbsp;GROWTH&nbsp;TIME&nbsp;MACHINE</p>
              <p class="title_1-2">${bestore.store_name}时光机</p>
              <p class="title_1-3">品牌发展</p>
       </div>
       <div class="background_2 fl"></div>
       <div class="pic_3">,<img src="../images/pic_11.png"></div>
       <div class="word_2 fr">
              <p class="word_2-1"><span>缘起</span>&nbsp;<img src="../images/pic-1.png">&nbsp;SINCE&nbsp;THE&nbsp;EDGE</p>
              <p class="word_2-2"><a href="#">${bestore.since}</a></p>
       </div>
       <div class="circle_1 fl">
               <a href="#" class="on_2"></a>
               <a href="#"></a>
               <a href="#"></a>
       </div>
</div>
<%--<div class="box_4"></div>--%>
<div class="box_5">
	   <div class="title_1">
              <p class="title_1-1">SEARCH&nbsp;YOUR&nbsp;DREAM&nbsp;BRAND&nbsp;STORE</p>
              <p class="title_1-2">寻找我们的足迹</p>
              <p class="title_1-3">品牌店面</p>
       </div>
       <div class="pic_4">
       	       <img src="../images/pic_13.png">
       	       <div class="word_3">
       	       	      <p class="word_3-1">${bestore.store_name}门店信息查询</p>
       	       	      <form>
       	       	      	 <select class="select_1">
       	       	      	 	<option>四川省</option>
       	       	      	 	<option>广东省</option>
       	       	      	 </select>
       	       	      	  <select>
       	       	      	 	<option>成都</option>
       	       	      	 	<option>广州</option>
       	       	      	  </select>
       	       	      	   <select>
       	       	      	 	<option>新都区</option>
       	       	      	 	<option>番禹区</option>
       	       	      	  </select>
       	       	      	  <input type="submit" value="立即查询" />
       	       	      	 
       	       	      </form>
       	       </div>
       </div>	
</div>
<!--box_5结束-->
<div class="box_6">
	   <div class="content_1">
	   	     <div class="title_2">
	   	     	    <p class="title_2-1">网络商城</p>
	   	     	    <p class="title_2-2">YOU&nbsp;CAN&nbsp;BE&nbsp;IN&nbsp;THE&nbsp;FOLLOWING&nbsp;ONLINE&nbsp;MALL&nbsp;TO&nbsp;BUY&nbsp;OUR&nbsp;PRODUCTS</p>
	   	     </div>
	   	     <ul class="nav_2 fl">
	   	     	   <li class="nav_2-1"><a href="#">天猫旗舰店</a></li>
	   	     	   <li><a href="#">良品铺子专卖店</a></li>
	   	     	   <li><a href="#">京东商城</a></li>
	   	     </ul>
	   	     <ul class="nav_2 fl" style="margin-top:13px;">
	   	           <li class="nav_2-1"><a href="#">一号店商城</a></li>
	   	     	   <li><a href="#">当当网</a></li>
	   	     	   <li><a href="#">淘宝网</a></li>

	   </div>
	   
</div>
<!-- box_6结束 -->
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
</body>
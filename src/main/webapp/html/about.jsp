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
		<title>关于我们</title>
	</head>
	<body>
    <div class="header">
        <div class="header-top"></div>
        <div class="header_1">
            <div class="logo fl"><a href="index.jsp"><img src="${bestore.store_logo}"></a></div>
            <ul class="nav_1">
                <li class="nav_1-2" style="margin-left:0;"><a href="index.jsp">首页</a></li>
                <li class="on_1" ><a href="about.jsp">关于${bestore.store_name}</a></li>
                <li class="nav_1-3" style="margin-left:72px"><a href="product.jsp">产品中心</a></li>
                <li class="nav_1-4"><a href="#">新闻中心</a></li>
                <li class="nav_1-5"><a href="brand.jsp">品牌加盟</a></li>
                <li class="nav_1-6"><a href="advertise.jsp">企业招聘</a></li>
                <li class="nav_1-7"><a href="connect.jsp">联系我们</a></li>
            </ul>
        </div>

    </div>
<!-- header结束 -->
<div class="banner_1">
	<a href="#"></a>
	<div class="focus_1">
               <a href="#"></a>
               <a href="#" class="on_6"></a>
               <a href="#"></a>
               <a href="#"></a>
               <a href="#"></a>
               <a href="#"></a>
               <a href="#"></a>
    </div>
</div>
<!--banner_1结束-->
<div class="box_8">
            <div class="title_3">
            	    <p class="title_3-1">企业简介</p>
            	    <div class="square_1"></div>
            	    <p class="title_3-2">LEARN &nbsp;MORE &nbsp;ABOUT&nbsp;LIANGPINPIZI</p>
            	    <ul class="nav_5 fl">
            	    	  <li class="on_2"><a href="#">企业简介</a></li>
            	    	  <li class="nav_5-2"><a href="#">企业文化</a></li>
            	    	  <li><a href="#">企业历程</a></li>
            	    </ul>
            </div> 
            <div class="box_8-bottom">
            	  <div class="pic_5 fl"><a href="#"><img src="../images/pic_14.jpg"></a></div>
            	  <div class="word_5 fr">
            	  	      <p class="word_5-1"><span>FROFI</span>LE</p>
            	  	      <p class="word_5-2">${bestore.store_about.forfile}</p>
            	  </div>
            </div>
</div>
<!--box_8结束-->
<div class="box_9">
	   <div class="content_4">
           <c:forEach items="${history}" var="his" varStatus="status">
	   	      <dl class="one-${status.index+9} fl">
	   	      	    <dt><a href="#"><img src="${his.verimage}"></a></dt>
	   	      	    <dd>${his.vernum}代店</dd>
	   	      </dl>
           </c:forEach>
	   </div>	
</div>
<!--box_9结束-->
<div class="box_10">
	  <div class="word_6 fl">
            	  	      <p class="same_1"><span>WORK</span>ING</p>
            	  	      <p class="same_2">${bestore.store_about.working}
                          </p>
     </div>
     <div class="pic_6 fr"><img src="../images/pic_19.jpg"></div>
     <div class="pic_7 fl"><img src="../images/pic_20.jpg"></div>
     <div class="word_6 fr">
            	  	      <p class="same_1"><span>REPUT</span>ATION</p>
            	  	      <p class="same_2">${bestore.store_about.reputation}
                           </p>
     </div>
    <div class="word_6 fl word_7">
            	  	      <p class="same_1"><span>DREA</span>M</p>
            	  	      <p class="same_2">${bestore.store_about.dream}
                           </p>
     </div>
     <div class="pic_8 fr"><img src="../images/pic_21.jpg"></div>
</div>
<!--div_10结束-->
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
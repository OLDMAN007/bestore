<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Harper Cheung
  Date: 2019/7/2
  Time: 7:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>admin</title>
</head>
<body>
    <c:if test="${username==null}">
        <a href="adminLogin.jsp">请登录！</a>
    </c:if>
    <c:if test="${username!=null}">
        <h2>店铺信息管理</h2>
        <form action="/updateStore_name" method="get">
            修改店铺名称：<input type="text" name="store_name">
            <input type="submit" value="确认">${store_name_infor}
        </form>
        <form action="/updateStore_place" method="get">
            修改店铺地址：<input type="text" name="store_place">
            <input type="submit" value="确认">
        </form>
        <form action="/updateStore_zipcode" method="get">
            修改店铺邮编：<input type="text" name="store_zipcode">
            <input type="submit" value="确认">
        </form>
        <form>
            修改店铺电话：<input type="text" name="store_tel">
            <input type="submit" value="确认">
        </form>
        <form>
            修改店铺传真：<input type="text" name="store_fax">
            <input type="submit" value="确认">
        </form>
        <form>
            修改店铺forfile：<input type="text" name="frofile" style="width: 250px;height:100px" maxlength="300">
            <input type="submit" value="确认">
        </form>
        <form>
            修改店铺working：<input type="text" name="working" style="width: 250px;height:100px" maxlength="300">
            <input type="submit" value="确认">
        </form>
        <form>
            修改店铺reputation：<input type="text" name="reputation" style="width: 250px;height:100px" maxlength="300">
            <input type="submit" value="确认">
        </form>
        <form>
            修改店铺dream：<input type="text" name="dream" style="width: 250px;height:100px" maxlength="300">
            <input type="submit" value="确认">
        </form>
        <form>
            修改店铺since：<input type="text" name="since" style="width: 250px;height:100px" maxlength="300">
            <input type="submit" value="确认">
        </form>
        <form>
            修改店铺clutur：<input type="text" name="clutur" style="width: 250px;height:100px" maxlength="300">
            <input type="submit" value="确认">
        </form>
        <form>
            修改店铺history：<input type="text" name="history" style="width: 250px;height:100px" maxlength="300">
            <input type="submit" value="确认">
        </form>

        <h2>商品信息管理</h2>
        <table border="1">
            <tr>
                <td>商品名称</td>
                <td>商品图片</td>
                <td>所属种类</td>
                <td>操作</td>
            </tr>
            <c:forEach items="${admin_product}" var="product">
                <tr>
                    <td>${product.pro_name}</td>
                    <td ><img src="${product.pro_image}" style="width:250px;height:200px;"></td>
                    <td>
                        <c:if test="${product.pro_kind==1}">坚果炒货</c:if>
                        <c:if test="${product.pro_kind==2}">肉脯鱼干</c:if>
                        <c:if test="${product.pro_kind==4}">果干果脯</c:if>
                        <c:if test="${product.pro_kind==8}">糕点糖果</c:if>
                        <c:if test="${product.pro_kind==16}">素食山珍</c:if>
                        <c:if test="${product.pro_kind==32}">花茶饮品</c:if>
                        <c:if test="${product.pro_kind==64}">进口食品</c:if>
                        <c:if test="${product.pro_kind==128}">精选礼盒</c:if>
                    </td>
                    <td>
                        <a href="#">修改</a>
                        <a href="/deleteProduct?pro_id=${product.pro_id}">删除</a>
                    </td>
                </tr>
            </c:forEach>
            <tr>
                <form action="${pageContext.request.contextPath}/insertProduct" method="post" enctype="multipart/form-data">
                    <td><input type="text" name="pro_name"></td>
                    <td><input type="file" value="上传图片"   name="pictureFile"></td>
                    <td>
                        <select name="pro_kind">
                            <option value="1">坚果炒货</option>
                            <option value="2">肉脯鱼干</option>
                            <option value="4">果干果脯</option>
                            <option value="8">糕点糖果</option>
                            <option value="16">素食山珍</option>
                            <option value="32">花茶饮品</option>
                            <option value="64">进口食品</option>
                            <option value="128">精选礼盒</option>
                        </select>
                    </td>
                    <td><input type="submit" value="保存">${product_infor}</td>
                </form>
            </tr>
        </table>
        ${deleteProduct_infor}

        <h2>加盟信息管理</h2>
        <table border="1">
            <tr>
                <td>标题信息</td>
                <td>加盟图片</td>
                <td>详细信息</td>
                <td>操作</td>
            </tr>
            <c:forEach items="${brand}" var="brand">
                <tr>
                    <td>${brand.brand_title}</td>
                    <td><img src="${brand.brand_image}" style="width: 250px;height: 200px;"></td>
                    <td>${brand.brand_comment}</td>
                    <td>
                        <a href="#">修改</a>
                        <a href="/deleteBrand?brand_id=${brand.brand_id}">删除</a>
                    </td>
                </tr>
            </c:forEach>
            <tr>
                <form action="/insertBrand" method="post" enctype="multipart/form-data">
                    <td><input type="text" name="brand_title"></td>
                    <td><input type="file" accept="*.jpg" value="上传图片" name="pictureFile" ></td>
                    <td><input type="text" name="brand_comment" style="width: 250px;height:100px" maxlength="300"></td>
                    <td><input type="submit" value="保存">${insertBrand_infor}</td>
                </form>
            </tr>
        </table>
        ${deleteBrand_infor}
    </c:if>
</body>
</html>

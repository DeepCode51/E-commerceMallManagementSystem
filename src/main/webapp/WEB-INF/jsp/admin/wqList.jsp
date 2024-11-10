<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>查询展示页面</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Bootstrap HelloWorld</title>

    <!-- Bootstrap -->
    <link href="/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">

    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="/js/jquery/2.0.0/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="/js/bootstrap/3.3.6/bootstrap.min.js"></script>
</head>
<body>
<h4>产品信息：</h4>
<br>
<%--鼠标悬停--%>
<table border="1" class="table table-hover">
    <tr>
        <td>ID</td>
        <td>名称</td>
        <td>原价</td>
        <td>优惠价</td>
        <td>库存</td>
    </tr>

    <c:forEach items="${list}" var="listProduct">
        <tr>
        <td>${listProduct.id}</td>
        <td>${listProduct.name}</td>
        <td>${listProduct.original_price}</td>
        <td>${listProduct.promote_price}</td>
        <td>${listProduct.stock}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

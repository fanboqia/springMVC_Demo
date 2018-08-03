<%@page import="entity.Items"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page language="java" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ItemList</title>
</head>
<body>
<!--<form action="${pageContext.request.contextPath}/pages/success.jsp" method="post">  -->
为了减少风险，可以把这些页面文件移到WEB-INF 目录下。基于Servlet的声明，WEB-INF不作为Web应用的公共文档树的一部分。
因此，WEB-INF 目录下的资源不是为客户直接服务的。
我们仍然可以使用WEB-INF目录下的JSP页面来提供视图给客户，客户却不能直接请求访问JSP。
<form action="${pageContext.request.contextPath}/success.action" method="post">
<table border="solid 1px">
<c:forEach var="item" items="${items}">
<tr><td>Id:</td><td>${item.id}</td></tr>
<tr><td>Name:</td><td>${item.name}</td></tr>
<tr><td>Pic:</td><td>${item.pic}</td></tr>
<tr><td>Price:</td><td>${item.price}</td></tr>
<tr><td>Detail:</td><td>${item.detail}</td></tr>
<tr><td>CreateTime:</td><td>${item.createtime}</td></tr>
</c:forEach>
<tr><td><input type="submit" value="查询"></td></tr>
</table>
<a href="/WEB-INF/jsp/items/itemsList.jsp?pageIndex=0"></a>
</form>
</body>
</html>
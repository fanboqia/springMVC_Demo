<%@page import="entity.Items"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page language="java" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String pageIndex = request.getParameter("pageIndex");
	//set进来给el用
	request.setAttribute("pageIndex", pageIndex);
	
	String pageCount = request.getParameter("pageCount");
	//set进来给el用
	request.setAttribute("pageCount", pageCount);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ItemList</title>
</head>
<body>
PageIndex: <%=pageIndex%>
<!--<form action="${pageContext.request.contextPath}/pages/success.jsp" method="post">  -->
为了减少风险，可以把这些页面文件移到WEB-INF 目录下。基于Servlet的声明，WEB-INF不作为Web应用的公共文档树的一部分。
因此，WEB-INF 目录下的资源不是为客户直接服务的。
我们仍然可以使用WEB-INF目录下的JSP页面来提供视图给客户，客户却不能直接请求访问JSP。
<form action="${pageContext.request.contextPath}/success.action" method="post">
<table border="solid 1px">
	<tr><td>Id:</td><td>${items[pageIndex].id}</td></tr>
	<tr><td>Name:</td><td>${items[pageIndex].name}</td></tr>
	<tr><td>Pic:</td><td>${items[pageIndex].pic}</td></tr>
	<tr><td>Price:</td><td>${items[pageIndex].price}</td></tr>
	<tr><td>Detail:</td><td>${items[pageIndex].detail}</td></tr>
	<tr><td>CreateTime:</td><td>${items[pageIndex].createtime}</td></tr>
</table>
<input type="submit" value="查询">
</form>
<c:forEach begin="1" end="${pageCount}" varStatus="status">
<!-- <a href="${pageContext.request.contextPath}/pages/itemsList.jsp?pageIndex=${status.index}&pageCount=${pageCount}">${status.index}</a> -->
<a href="${pageContext.request.contextPath}/queryItems1.action?pageIndex=${status.index-1}&pageCount=${pageCount}">${status.index}</a>
</c:forEach>
</body>
</html>
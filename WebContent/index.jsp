<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- <a href="hello.action">hello SpringMVC测试</a><br><br> -->
<a href="${pageContext.request.contextPath}/hello.action">BeanNameUrlHandlerMapping测试</a><br/>
<a href="${pageContext.request.contextPath}/queryItems1.action">SimpleUrlHandlerMapping测试1</a><br><br>
<a href="${pageContext.request.contextPath}/queryItems2.action">SimpleUrlHandlerMapping测试2</a><br><br>
</body>
</html>
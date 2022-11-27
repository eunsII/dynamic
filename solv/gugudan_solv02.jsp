<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단</title>
<link rel="stylesheet" type="text/css" href="/whistle/css/w3.css">
<link rel="stylesheet" type="text/css" href="/whistle/css/user.css">
</head>
<body>
	<div class="w3-content mxw750 w3-center">
		<h1 class="w3-pink w3-margin-bottom w3-padding w3-card-4">구구단</h1>
<c:forEach var="color" items="${COLOR}" varStatus="st">
	<c:if test="${st.count lt 9}">
		<div class="inblock w3-card-4 w3-margin w150">
			<div class="w3-col ${color}">
				<h3>${st.count + 1} 단</h3>
			</div>
			<div class="w3-col w3-padding">
		<c:forEach var="gop" begin="1" end="9">
				<p>${st.count +1} x ${gop} = ${(st.count+1) * gop}</p>
		</c:forEach>
			</div>
		</div>
	</c:if>
</c:forEach>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<tiles:insertAttribute name="css"/>
<tiles:insertAttribute name="script"/>
</head>
<body>
<div id="wrapper">
	<div id ="siteTop">
		<tiles:insertAttribute name="siteTop"/>
	</div>
	<div id ="content">
		<tiles:insertAttribute name="content"/>
	</div>
	<div id ="siteBottom">
		<tiles:insertAttribute name="siteBottom"/>
	</div>
</div>
</body>
</html>
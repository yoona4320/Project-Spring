<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> layout </title>
</head>
<body >
	<div id="container">
			<div id="body">
				<tiles:insertAttribute name="body"/> 
			</div>
	</div>
</body>
</html>
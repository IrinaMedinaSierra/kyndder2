<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>MyKindder</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" >
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
  <div class="container text-center">
<div class="row justify-content-around mt-4 pt-4">
    <div class="col-9 ">
<strong class="text-success mt-4 pt-4">El alta de ${mensaje} a nuestra Guarderia se ha realizado correctamente</strong>
</div>
</div>
</div>
</body>
</html>
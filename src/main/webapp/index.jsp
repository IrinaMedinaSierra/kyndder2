<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
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
 
	
<div class="container">

 	

 <form action="confirmar.jsp" method="get">
	<fieldset>
            <legend class="bg-success-subtle shadow-sm p-3 my-1 bg-body-tertiary rounded">Datos del Niño/a</legend>
<div class="row g-3 my-1">
  <div class="col">
     <input  type="text" name="nombre" class="form-control" placeholder="Nombre" aria-label="First name">
  </div>
  <div class="col">
    <input type="text" name="apellidos" class="form-control" placeholder="Apellidos" aria-label="Last name">
  </div>
</div>
 
  <div class="row g-3 my-1">
  <div class="col">
  	<label id="bornDate">Fecha de Nacimiento</label>
    <input type="date"  name="fechaNacimiento" class="form-control" placeholder="Fecha de Nacimiento" aria-label="born date" id="bornDate">
  </div>
  <div class="col">
    <label id="adress"></label>
    <input type="text" name="direccion" class="form-control" placeholder="Dirección" aria-label="address" id="adress" >
  </div>
</div>
 <div class="row g-3 my-1">
  <div class="col">
    <input type="text" name="poblacion" class="form-control" placeholder="Población" aria-label="City">
  </div>
  <div class="col">
    <input type="text" name="cp" class="form-control" placeholder="Código Postal" aria-label="CP">
  </div>
</div>
</fieldset>
<fieldset>
  <legend class="bg-success-subtle bg-success-subtle shadow-sm p-3 my-1 bg-body-tertiary rounded">Datos Familiares</legend>
  <div class="row g-3">
  <div class="col">
    <input type="text" name="nombreApellidoT1" class="form-control" placeholder="Nombre y Apellidos" aria-label="First name">
  </div>
  <div class="col">
    <input type="text" name="dniT1" class="form-control" placeholder="DNI" aria-label="Last name">
  </div>
  </div>
  <div class="row g-3">
  <div class="col">
    <input type="text" name="profesionT1" class="form-control" placeholder="Profesión" aria-label="First name">
  </div>
  <div class="col">
    <input type="text" name="telefonoT1" class="form-control" placeholder="Teléfono" aria-label="Last name">
  </div>
  </div>
  <div class="row g-3">
  <div class="col">
    <input type="text" name="emailT1" class="form-control" placeholder="Email" aria-label="First name">
  </div>
  <div class="col">
    <select name="parentesco" class="form-select" aria-label="Default select example">
  <option selected>Patentesco</option>
  <option >Madre</option>
  <option >Padre</option>
  <option>Tutor</option>
</select>
  </div>
  </div>
  <hr>
  <div class="row g-3">
  <div class="col">
    <input type="text"  name="nombreApellidoT2" class="form-control" placeholder="Nombre y Apellidos" aria-label="First name">
  </div>
  <div class="col">
    <input type="text" name="dniT2" class="form-control" placeholder="DNI" aria-label="Last name">
  </div>
  </div>
  <div class="row g-3">
  <div class="col">
    <input type="text" name="profesionT2" class="form-control" placeholder="Profesión" aria-label="First name">
  </div>
  <div class="col">
    <input type="text" name="telefonoT2" class="form-control" placeholder="Teléfono" aria-label="Last name">
  </div>
  </div>
  <div class="row g-3">
  <div class="col">
    <input type="text" name="emailT2" class="form-control" placeholder="Email" aria-label="First name">
  </div>
  <div class="col">
    <select class="form-select" name="parenteco2" aria-label="Default select example">
  <option selected>Patentesco</option>
  <option >Madre</option>
  <option >Padre</option>
  <option >Tutor</option>
</select>
  </div>
  </div>
  </fieldset>
  <fieldset>
  <legend class="bg-success-subtle mt-4" >Otros Datos</legend>
  <div class="row g-3">
	  <div class="col">
	    <input type="text" name="alergias" class="form-control" placeholder="Alergias" aria-label="First name">
	  </div>
	  <div class="col">
	    <input type="text" name="AlergiaAlim" class="form-control" placeholder="Alergias Alimentarias" aria-label="Last name">
	  </div>
  </div>
 <div class="row g-3 mt-1">
	  <div class="col">
	    <input type="text" name="intolerancias" class="form-control" placeholder="Intolerancias" aria-label="First name">
	  </div>
	  <div class="col">
	    <input type="text" name="medicacion" class="form-control" placeholder="Medicación" aria-label="Last name">
	  </div>
  </div>
  
 <div class="row">
	<div class="col">
	 	<textarea class="form-control" id="exampleFormControlTextarea1" rows="3" placeholder="Observaciones" name="observaciones"></textarea>
	</div>
</div>
</fieldset>
<fieldset>
  <legend class="bg-success-subtle mt-4">Autorizaciones</legend>
  	<div class="input-group mb-3"> 
	  <span class="input-group-text" >Nombre y Apellidos</span>
	  <input type="text" class="form-control" name="autor1" aria-label="Username">
	  <span class="input-group-text">DNI</span>
	  <input type="text" class="form-control" name="dniAuto1" aria-label="Server">
	   <span class="input-group-text">Teléfono</span>
	  <input type="text" class="form-control" name="telefonoAuto1" aria-label="Server">
	   <span class="input-group-text">Parentesco</span>
	  <input type="text" class="form-control" aria-label="Server" name="parentAuto1">
	</div>
<div class="input-group mb-3"> 
	 <span class="input-group-text" >Nombre y Apellidos</span>
	  <input type="text" class="form-control" name="autor2" aria-label="Username">
	  <span class="input-group-text">DNI</span>
	  <input type="text" class="form-control" name="dniAuto2" aria-label="Server">
	   <span class="input-group-text">Teléfono</span>
	  <input type="text" class="form-control" name="telefonoAuto2" aria-label="Server">
	   <span class="input-group-text">Parentesco</span>
	  <input type="text" class="form-control" aria-label="Server" name="parentAuto2">
	</div>
	<div class="input-group mb-3"> 
	  <span class="input-group-text" >Nombre y Apellidos</span>
	  <input type="text" class="form-control" name="autor3" aria-label="Username">
	  <span class="input-group-text">DNI</span>
	  <input type="text" class="form-control" name="dniAuto3" aria-label="Server">
	   <span class="input-group-text">Teléfono</span>
	  <input type="text" class="form-control" name="telefonoAuto3" aria-label="Server">
	   <span class="input-group-text">Parentesco</span>
	  <input type="text" class="form-control" aria-label="Server" name="parentAuto3">
	</div>
	<div class="input-group mb-3"> 
	<span class="input-group-text" >Nombre y Apellidos</span>
	  <input type="text" class="form-control" name="autor4" aria-label="Username">
	  <span class="input-group-text">DNI</span>
	  <input type="text" class="form-control" name="dniAuto4" aria-label="Server">
	   <span class="input-group-text">Teléfono</span>
	  <input type="text" class="form-control" name="telefonoAuto4" aria-label="Server">
	   <span class="input-group-text">Parentesco</span>
	  <input type="text" class="form-control" aria-label="Server" name="parentAuto4">
	</div>
	<div class="input-group mb-3"> 
	 <span class="input-group-text" >Nombre y Apellidos</span>
	  <input type="text" class="form-control" name="autor5" aria-label="Username">
	  <span class="input-group-text">DNI</span>
	  <input type="text" class="form-control" name="dniAuto5" aria-label="Server">
	   <span class="input-group-text">Teléfono</span>
	  <input type="text" class="form-control" name="telefonoAuto5" aria-label="Server">
	   <span class="input-group-text">Parentesco</span>
	  <input type="text" class="form-control" aria-label="Server" name="parentAuto5">
	</div>
  </fieldset>
  <input type="submit" name="enviar" value="Enviar Solicitud" class="btn btn-success large">
    </form>
 
</div>
</body>
</html>
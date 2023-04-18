<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>MyKindder</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>


	<div class="container">

		
			<fieldset>
				<legend
					class="bg-success-subtle shadow-sm p-3 my-1 bg-body-tertiary rounded">Datos
					del Niño/a</legend>
				<div class="row g-3 my-1">
					<div class="col">
						<b>Nombre:</b>
						<c:out value="${ param.nombre}"></c:out>
					</div>
					<div class="col">
						<b>Apellidos: </b>
						<c:out value="${param.apellidos}"></c:out>
					</div>
				</div>

				<div class="row g-3 my-1">
					<div class="col">
						<b>Fecha de Nacimiento: </b>
						<c:out value="${param.fechaNacimiento}"></c:out>
					</div>
					<div class="col">
						<b>Dirección: </b>
						<c:out value="${param.direccion}"></c:out>
					</div>
				</div>
				<div class="row g-3 my-1">
					<div class="col">
						<b>Población:</b>
						<c:out value="${param.poblacion}"></c:out>
					</div>
					<div class="col">
						<b>Código Postal: </b>
						<c:out value="${param.cp}"></c:out>
					</div>
				</div>
			</fieldset>
			<fieldset>
				<legend
					class="bg-success-subtle bg-success-subtle shadow-sm p-3 my-1 bg-body-tertiary rounded">Datos
					Familiares</legend>
				<div class="row g-3">
					<div class="col">
						<b>Nombre del Tutor / Madre / Padre:</b>
						<c:out value="${param.nombreApellidoT1}"></c:out>
					</div>
					<div class="col">
						<b>DNI: </b>
						<c:out value="${param.dniT1}"></c:out>
					</div>
				</div>
				<div class="row g-3">
					<div class="col">
						<b>Profesión: </b>
						<c:out value="${param.profesionT1}"></c:out>
					</div>
					<div class="col">
						<b>Teléfono: </b>
						<c:out value="${param.telefonoT1}"></c:out>
					</div>
				</div>
				<div class="row g-3">
					<div class="col">
					<b>Email: </b>
						<c:out value="${param.emailT1}"></c:out>
					</div>
					<div class="col">
					<b>Parentesco:</b>
						<c:out value="${param.parentesco}"></c:out>
					</div>
				</div>
				<hr>
				<div class="row g-3">
					<div class="col">
					<b>Nombre del Tutor / Madre / Padre:</b>
						<c:out value="${param.nombreApellidoT2}"></c:out>
					</div>
					<div class="col">
						<b>DNI: </b>
						<c:out value="${param.dniT2}"></c:out>
					</div>
				</div>
				<div class="row g-3">
					<div class="col">
					<b>Profesión: </b>
						<c:out value="${param.profesionT2}"></c:out>
					</div>
					<div class="col">
						<b>Teléfono: </b>
						<c:out value="${param.telefonoT2}"></c:out>
					</div>
				</div>
				<div class="row g-3">
					<div class="col">
					<b>Email:</b>
						<c:out value="${param.emailT2}"></c:out>
					</div>
					<div class="col">
					<b>Parentesco: </b>
						<c:out value="${param.parenteco2}"></c:out>
					</div>
				</div>
			</fieldset>
			<fieldset>
				<legend class="bg-success-subtle mt-4">Otros Datos</legend>
				<div class="row g-3">
					<div class="col">
						<b>Alergias:</b>
						<c:out value="${param.alergias}"></c:out>
					</div>
					<div class="col">
					<b>Alergias Alimentarias: </b>
						<c:out value="${param.AlergiaAlim}"></c:out>
					</div>
				</div>
				<div class="row g-3 mt-1">
					<div class="col">
					<b>Intolerancias: </b>
						<c:out value="${param.intolerancias}"></c:out>
					</div>
					<div class="col">
					<b>Medicación:</b>
						<c:out value="${param.medicacion}"></c:out>
					</div>
				</div>

				<div class="row">
					<div class="col">
					<b>Observación: </b>
						<c:out value="${param.observaciones}"></c:out>
					</div>
				</div>
			</fieldset>
			<fieldset>
				<legend class="bg-success-subtle mt-4">Autorizaciones</legend>
				<table class="table">
					<tr>
						<th>Nombre</th>
						<th>DNI</th>
						<th>Teléfono</th>
						<th>Parentesco</th>
					</tr>
					<tr>
						<td><c:out value="${param.autor1}"></c:out></td>
						<td><c:out value="${param.dniAuto1}"></c:out></td>
						<td><c:out value="${param.telefonoAuto1}"></c:out></td>
						<td><c:out value="${param.parentAuto1}"></c:out></td>
					</tr>
					<tr>
						<td><c:out value="${param.autor2}"></c:out></td>
						<td><c:out value="${param.dniAuto2}"></c:out></td>
						<td><c:out value="${param.telefonoAuto2}"></c:out></td>
						<td><c:out value="${param.parentAuto2}"></c:out></td>
					</tr>
					<tr>
						<td><c:out value="${param.autor3}"></c:out></td>
						<td><c:out value="${param.dniAuto3}"></c:out></td>
						<td><c:out value="${param.telefonoAuto3}"></c:out></td>
						<td><c:out value="${param.parentAuto3}"></c:out></td>
					</tr>
					<tr>
						<td><c:out value="${param.autor4}"></c:out></td>
						<td><c:out value="${param.dniAuto4}"></c:out></td>
						<td><c:out value="${param.telefonoAuto4}"></c:out></td>
						<td><c:out value="${param.parentAuto4}"></c:out></td>
					</tr>
					<tr>
						<td><c:out value="${param.autor5}"></c:out></td>
						<td><c:out value="${param.dniAuto5}"></c:out></td>
						<td><c:out value="${param.telefonoAuto5}"></c:out></td>
						<td><c:out value="${param.parentAuto5}"></c:out></td>
					</tr>
				</table>
			</fieldset>
			<div class="row">
				<div class="col">
					<input type="submit" name="enviar" value="Todo Correcto"
						class="btn btn-success large">
				</div>
				<div class="col">
					<a href="javascript: history.go(-1)" class="btn btn-success large " role="button">Corregir</a>
				</div>
			</div>

	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Con la siguiente linea, llamo al archivo header.jsp y lo inserta alli, como si este esta alli -->
<jsp:include page="header.jsp"></jsp:include>
<body>
	<div class="container">
		<p class="text-danger">
			<!-- c:out Muestra información en la página, se presenta la expresión contenida
			 en el atributo value. -->
			<c:out value="${error}"></c:out> <!-- Este valor viene del servidor  - Controler.java -->
			<c:out value="${errorT}"></c:out>
		</p>
		<p>(*) Obligatorios</p>
		<!-- El metodo get envia los datos del formulario por medio de la url -->
		<form action="Controller" method="get" class="needs-validation" novalidate >
			<fieldset>
				<legend
					class="bg-success-subtle shadow-sm p-3 my-1 bg-body-tertiary rounded">Datos
					del Niño/a</legend>
				<div class="row g-3 my-1">
					<div class="col">
					<!-- ${param.nombre} Es como se obtiene el valor del 
					 parámetro de contexto en JSP -->
						<input type="text" name="nombre"
							class="form-control text-capitalize" placeholder="Nombre*"
							aria-label="First name"  value="${param.nombre}" pattern="[a-zA-Z ]+">
					</div>
					<div class="col">
						<input type="text" name="apellidos" pattern="[a-zA-Z ]+"
							class="form-control text-capitalize" placeholder="Apellidos*"
							aria-label="Last name" required value="<c:out value="${param.apellidos}"></c:out>">
					</div>
				</div>

				<div class="row g-3 my-1">
					<div class="col">
						<label id="bornDate">Fecha de Nacimiento</label> <input
							type="date" name="fechaNacimiento"
							class="form-control text-capitalize"
							placeholder="Fecha de Nacimiento*" required
							aria-label="born date" id="bornDate"
							value="${param.fechaNacimiento}">
					</div>
					<div class="col">
						<label id="adress"></label> <input type="text" name="direccion"
							class="form-control  text-capitalize" placeholder="Dirección*"
							required aria-label="address" id="adress"
							value="${param.direccion}">
					</div>
				</div>
				<div class="row g-3 my-1">
					<div class="col">
						<input type="text" name="poblacion"
							class="form-control text-capitalize" placeholder="Población*"
							required aria-label="City" value="${param.poblacion}" pattern="[a-zA-Z ]+">
					</div>
					<div class="col">
						<input type="text" name="cp" class="form-control text-capitalize"
							placeholder="Código Postal" aria-label="CP" required
							value="${param.cp}" pattern="[0-9]{5}">
					</div>
				</div>
			</fieldset>
			<fieldset>
				<legend
					class="bg-success-subtle bg-success-subtle shadow-sm p-3 my-1 bg-body-tertiary rounded">Datos
					Familiares</legend>
				<div class="row g-3">
					<div class="col">
						<input type="text" name="nombreApellidoT1"
							class="form-control text-capitalize"
							placeholder="Nombre y Apellidos*" aria-label="First name"
							required value="${param.nombreApellidoT1}" pattern="[a-zA-Z ]+">
					</div>
					<div class="col">
						<input type="text" name="dniT1"
							class="form-control text-uppercase" placeholder="DNI*"
							aria-label="Last name" required value="${param.dniT1}" pattern="[0-9]{8}[A-Za-z]{1}">
					</div>
				</div>
				<div class="row g-3">
					<div class="col">
						<input type="text" name="profesionT1"
							class="form-control text-capitalize" placeholder="Profesión"
							aria-label="First name" value="${param.profesionT1}" pattern="[a-zA-Z ]+">
					</div>
					<div class="col">
						<input type="text" name="telefonoT1"
							class="form-control text-capitalize" placeholder="Teléfono*"
							aria-label="Last name" value="${param.telefonoT1}" pattern="[6789]{1}[0-9]{8}">
							<div class="invalid-feedback">
					      	 	 Teléfono invalido
					      	</div>
					</div>
				</div>
				<div class="row g-3">
					<div class="col">
						<input type="text" name="emailT1"
							class="form-control text-lowercase" placeholder="Email"
							aria-label="First name" value="${param.emailT1}" >
					</div>
					<div class="col">
						<select name="parentesco" class="form-select "
							aria-label="Default select example" required>
							<option selected>Patentesco</option>
							<option>Madre</option>
							<option>Padre</option>
							<option>Tutor</option>
						</select>
					</div>
				</div>
				<hr>



				<div class="row g-3">
					<div class="col">
						<input type="text" name="nombreApellidoT2"
							class="form-control text-capitalize"
							placeholder="Nombre y Apellidos" aria-label="First name" pattern="[a-zA-Z ]+">
					</div>
					<div class="col">
						<input type="text" name="dniT2"
							class="form-control text-uppercase" placeholder="DNI"
							aria-label="Last name" pattern="[0-9]{8}[a-zA-Z]{1}">
					</div>
				</div>
				<div class="row g-3">
					<div class="col">
						<input type="text" name="profesionT2"
							class="form-control text-capitalize" placeholder="Profesión"
							aria-label="First name" pattern="[a-zA-Z ]+">
					</div>
					<div class="col">
						<input type="text" name="telefonoT2"
							class="form-control text-capitalize" placeholder="Teléfono"
							aria-label="Last name" pattern="[6789]{1}[0-9]{8}">
					</div>
				</div>
				<div class="row g-3">
					<div class="col">
						<input type="text" name="emailT2"
							class="form-control text-lowercase" placeholder="Email"
							aria-label="First name">
					</div>
					<div class="col">
						<select class="form-select" name="parenteco2"
							aria-label="Default select example">
							<option selected>Patentesco</option>
							<option>Madre</option>
							<option>Padre</option>
							<option>Tutor</option>
						</select>
					</div>
				</div>
			</fieldset>
			<fieldset>
				<legend class="bg-success-subtle mt-4">Otros Datos</legend>
				<div class="row g-3">
					<div class="col">
						<input type="text" name="alergias" class="form-control"
							placeholder="Alergias" aria-label="First name">
					</div>
					<div class="col">
						<input type="text" name="AlergiaAlim" class="form-control"
							placeholder="Alergias Alimentarias" aria-label="Last name">
					</div>
				</div>
				<div class="row g-3 mt-1">
					<div class="col">
						<input type="text" name="intolerancias" class="form-control"
							placeholder="Intolerancias" aria-label="First name">
					</div>
					<div class="col">
						<input type="text" name="medicacion" class="form-control"
							placeholder="Medicación" aria-label="Last name">
					</div>
				</div>

				<div class="row">
					<div class="col">
						<textarea class="form-control" id="exampleFormControlTextarea1"
							rows="3" placeholder="Observaciones" name="observaciones"></textarea>
					</div>
				</div>
			</fieldset>
			<fieldset>
				<legend class="bg-success-subtle mt-4">Autorizaciones</legend>
				<p class="fst-italic">Al menos debe indicar un Autorizado</p>
				<div class="input-group mb-3">
					<span class="input-group-text">Nombre y Apellidos</span> <input
						type="text" class="form-control text-capitalize" name="autor1"
						aria-label="Username" required pattern="[a-zA-Z ]+"> <span
						class="input-group-text">DNI</span> <input type="text"
						class="form-control text-capitalize" name="dniAuto1"
						aria-label="Server" required pattern="[0-9]{8}[a-zA-Z]{1}"> <span
						class="input-group-text">Teléfono</span> <input type="text"
						class="form-control text-capitalize" name="telefonoAuto1"
						aria-label="Server" required pattern="[6789]{1}[0-9]{8}"> <span
						class="input-group-text">Parentesco</span> <input type="text"
						class="form-control text-capitalize" aria-label="Server"
						name="parentAuto1" required pattern="[a-zA-Z ]+">
				</div>
				<div class="input-group mb-3">
					<span class="input-group-text ">Nombre y Apellidos</span> <input
						type="text" class="form-control" name="autor2"
						aria-label="Username" pattern="[a-zA-Z ]+"> <span class="input-group-text">DNI</span>
					<input type="text" class="form-control text-capitalize"
						name="dniAuto2" aria-label="Server" pattern="[0-9]{8}[a-zA-Z]{1}"> <span
						class="input-group-text">Teléfono</span> <input type="text"
						class="form-control" name="telefonoAuto2" aria-label="Server" pattern="[6789]{1}[0-9]{8}">
					<span class="input-group-text">Parentesco</span> <input type="text"
						class="form-control text-capitalize" aria-label="Server"
						name="parentAuto2" pattern="[a-zA-Z ]+">
				</div>
				<div class="input-group mb-3">
					<span class="input-group-text">Nombre y Apellidos</span> <input
						type="text" class="form-control" name="autor3"
						aria-label="Username"> <span class="input-group-text">DNI</span>
					<input type="text" class="form-control text-capitalize"
						name="dniAuto3" aria-label="Server"> <span
						class="input-group-text">Teléfono</span> <input type="text"
						class="form-control " name="telefonoAuto3" aria-label="Server">
					<span class="input-group-text">Parentesco</span> <input type="text"
						class="form-control text-capitalize" aria-label="Server"
						name="parentAuto3">
				</div>
				<div class="input-group mb-3">
					<span class="input-group-text">Nombre y Apellidos</span> <input
						type="text" class="form-control text-capitalize" name="autor4"
						aria-label="Username"> <span class="input-group-text">DNI</span>
					<input type="text" class="form-control" name="dniAuto4"
						aria-label="Server"> <span class="input-group-text">Teléfono</span>
					<input type="text" class="form-control" name="telefonoAuto4"
						aria-label="Server"> <span class="input-group-text">Parentesco</span>
					<input type="text" class="form-control text-capitalize"
						aria-label="Server" name="parentAuto4">
				</div>
				<div class="input-group mb-3">
					<span class="input-group-text">Nombre y Apellidos</span> <input
						type="text" class="form-control text-capitalize" name="autor5"
						aria-label="Username"> <span class="input-group-text">DNI</span>
					<input type="text" class="form-control" name="dniAuto5"
						aria-label="Server"> <span class="input-group-text">Teléfono</span>
					<input type="text" class="form-control" name="telefonoAuto5"
						aria-label="Server"> <span class="input-group-text">Parentesco</span>
					<input type="text" class="form-control text-capitalize"
						aria-label="Server" name="parentAuto5">
				</div>
			</fieldset>
			<!--  el submit hace que la action del formulario se ejecute, a traves del metodo
			que se ha declarado -->
			<input type="submit" name="enviar" value="Enviar Solicitud"
				class="btn btn-success large">
			<!--  el submit tiene que estar dentro de las etiqueta form -->	
		</form>
	</div>
	<script>
		(() => {
			  'use strict'
			  
			  const forms = document.querySelectorAll('.needs-validation')
					
			  Array.from(forms).forEach(form => {
			    form.addEventListener('submit', event => {
			      if (!form.checkValidity()) {
			        event.preventDefault()
			        event.stopPropagation()
			      }
		
			      form.classList.add('was-validated')
			    }, false)
			  })
			})()
	</script>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
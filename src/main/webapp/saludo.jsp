<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="header.jsp"></jsp:include>
<body>
	
	<div class="container text-center">
		<div class="row justify-content-around mt-4 pt-4">
			<div class="col-9 ">
				<strong class="text-success mt-4 pt-4">El alta de <c:out
						value="${nombreN}"></c:out> con el ID=<c:out value="${idNino}"></c:out>
					se ha realizado correctamente
				</strong>
			</div>
		</div>
	</div>
</body>
</html>
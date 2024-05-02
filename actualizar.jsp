<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>   
<%@ include file="./WEB-INF/jspf/conexion.jspf" %>

<%
    // Capturar el parámetro 'id' de la URL
    String cedula = request.getParameter("id");
%>

<sql:query var="profesor" dataSource="${crudjstl}">
    SELECT * FROM profesor WHERE cedula = ?
    <sql:param value="<%= cedula %>" />
</sql:query>

<%-- Obtener los datos del profesor --%>
<c:set var="fila" value="${profesor.rows[0]}" />

<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link rel="stylesheet"
href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:ops
z,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet" href="css/estilo.css">
<link rel="shortcut icon" href="../../img/8.png" type="image/x-icon">
<title>Ejemplo 8 JSTL</title>
</head>
<html>
<body>


<c:set var="id" value="${param.id}"/>
<sql:query var="profesor" dataSource="${crudjstl}">
    SELECT * FROM profesor WHERE cedula = ?
    <sql:param value="${id}" />
</sql:query>

<c:forEach var="fila" items="${profesor.rows}">
    <c:set var="cedula" value="${fila.cedula}" />
    <c:set var="nombre" value="${fila.nombre}" />
    <c:set var="area" value="${fila.area}" />
    <c:set var="telefono" value="${fila.telefono}" />
    <c:set var="id_categoria" value="${fila.id_categoria}" />
</c:forEach>


<div class="container">
    <h2 class="mt-4 mb-4">Editar Profesor</h2>
    <form action="actualizardb.jsp" method="post">
        <div class="mb-3">
            <label for="cedula" class="form-label">Cédula:</label>
            <input type="text" class="form-control" id="cedula" name="cedula" value="${cedula}" readonly>
        </div>
        <div class="mb-3">
            <label for="nombre" class="form-label">Nombre:</label>
            <input type="text" class="form-control" id="nombre" name="nombre" value="${nombre}" required>
        </div>
        <div class="mb-3">
            <label for="area" class="form-label">Área:</label>
            <input type="text" class="form-control" id="area" name="area" value="${area}" required>
        </div>
        <div class="mb-3">
            <label for="telefono" class="form-label">Teléfono:</label>
            <input type="text" class="form-control" id="telefono" name="telefono" value="${telefono}" required>
        </div>
        <div class="mb-3">
            <label for="id_categoria" class="form-label">ID Categoría:</label>
            <input type="number" class="form-control" id="id_categoria" name="id_categoria" value="${id_categoria}" required>
        </div>
        <button type="submit" class="btn btn-primary">Actualizar Profesor</button>
    </form>
</div>

<footer class="bg-dark text-white ">
<div class=" bg-dark align-items-center p-5">
</div>
</footer>

</body>
</html>

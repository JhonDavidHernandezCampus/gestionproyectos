<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>   
<%@ include file="./../WEB-INF/jspf/conexion.jspf" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Evaluador</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="css/estilo.css" />
    <link rel="shortcut icon" href="../../img/8.png" type="image/x-icon" />
    <style>
        .navbar-nav .nav-link:hover {
            color: #0069d9;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <a class="navbar-brand" href="#">Editar Evaluador</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav me-auto">
                <li class="nav-item">
                    <a class="nav-link" href="https://www.uts.edu.co/sitio/calendario-academico/" target="_blank">Calendario</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="https://www.uts.edu.co/sitio/base-documental-uts/" target="_blank">Formatos de Grado</a>
                </li>
            </ul>
            <form class="d-flex" action="./../index.jsp">
            <a href="#" class="btn btn-outline-secondary me-2" onclick="history.go(-1);">Atrás</a>
                <button class="btn btn-outline-danger me-2" type="submit">Cerrar Sesión</button>
            </form>
        </div>
    </div>
</nav>


<c:set var="id" value="${param.id}"/>
<sql:query var="usuario" dataSource="${gestion_proyectos}">
    SELECT * FROM usuario WHERE id_usu = ?
    <sql:param value="${id}" />
</sql:query>

<c:forEach var="fila" items="${usuario.rows}">
    <c:set var="id_usu" value="${fila.id_usu}" />
    <c:set var="contrasena_usu" value="${fila.contrasena_usu}" />
    <c:set var="nombres_usu" value="${fila.nombres_usu}" />
    <c:set var="apellidos_usu" value="${fila.apellidos_usu}" />
    <c:set var="direccion_usu" value="${fila.direccion_usu}" />
    <c:set var="telefono_usu" value="${fila.telefono_usu}" />
    <c:set var="email_usu" value="${fila.email_usu}" />
    <c:set var="rol_usu" value="${fila.rol_usu}" />


</c:forEach>

<div class="container mt-5 w-25 ">
    <h3>Editar el Evaluador</h3>
    <form action="./editardb.jsp?destinatination=evaluador" method="POST">
        <div class="mb-3">
            <label for="idUsu">ID</label>
            <input type="number" class="form-control" id="idUsu" name="idUsu" required value="${id_usu}">
        </div>
        <div class="mb-3">
            <label for="nombre">Nombre</label>
            <input type="text" class="form-control" id="nombre" name="nombre" required value="${nombres_usu}">
        </div>
        <div class="mb-3">
            <label for="apellido">Apellido</label>
            <input type="text" class="form-control" id="apellido" name="apellido" required value="${apellidos_usu}">
        </div>
        <div class="mb-3">
            <label for="direccion">Dirección</label>
            <input type="text" class="form-control" id="direccion" name="direccion" value="${direccion_usu}">
        </div>
        <div class="mb-3">
            <label for="telefono">Teléfono</label>
            <input type="text" class="form-control" id="telefono" name="telefono" value="${telefono_usu}">
        </div>
        <div class="mb-3">
            <label for="email">Email</label>
            <input type="email" class="form-control" id="email" name="email" required value="${email_usu}">
        </div>
         <div class="mb-3">
            <label for="email">Contrasena</label>
            <input type="text" class="form-control" id="contrasena" name="contrasena" value="${contrasena_usu}" required>
        </div>
        <div class="mb-3">
            <label for="rol">Rol</label>
            <select class="form-select" id="rol" name="rol" required readonly value="${rol_usu} ">
                <option value="admin">Admin</option>
                <option value="coordinador" >Coordinador</option>
                <option value="estudiante" >Estudiante</option>
                <option value="director" >Director</option>
                <option value="evaluador" selected>Evaluador</option>
            </select>
        </div>
        <button type="submit" class="btn btn-primary w-100">Editar</button>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>

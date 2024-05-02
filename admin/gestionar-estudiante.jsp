<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>   
<%@ include file="./../WEB-INF/jspf/conexion.jspf" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestionar Estudiantes</title>
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
        <a class="navbar-brand" href="#">Gestionar Estudiantes</a>
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
            <a href="./index.jsp" class="btn btn-outline-secondary me-2">Atrás</a>
                <button class="btn btn-outline-danger me-2" type="submit">Cerrar Sesión</button>
            </form>
        </div>
    </div>
</nav>

<div class="container mt-5">
    <div class="d-flex">
    <h3 class="me-4">Listado de Estudiantes</h3>
    <div class="me-2"> <a href="./agregarUsu.jsp" class="btn btn-sm btn-success 
    p-2">Agregar Estudiante</a></div>
    </div>
    <c:if test="${param.action == 'true'}">
        <div class="alert alert-success" role="alert">
            Accion realizada correctamente.
        </div>
    </c:if>
    <c:if test="${param.action == 'false'}">
        <div class="alert alert-danger" role="alert">
            Error al realizadar accion.
        </div>
    </c:if>
    <table class="table table-striped mt-3">
        <thead>
            <tr>
                <th>ID</th>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Dirección</th>
                <th>Teléfono</th>
                <th>Email</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            <sql:query var="estudiantes" dataSource="${gestion_proyectos}">
                SELECT *
                FROM usuario
                WHERE rol_usu = 'estudiante'
            </sql:query>
            <c:forEach var="estudiante" items="${estudiantes.rows}">
                <tr>
                    <td>${estudiante.id_usu}</td>
                    <td>${estudiante.nombres_usu}</td>
                    <td>${estudiante.apellidos_usu}</td>
                    <td>${estudiante.direccion_usu}</td>
                    <td>${estudiante.telefono_usu}</td>
                    <td>${estudiante.email_usu}</td>
                    <td>
                        <a href="./editarUsu.jsp?id=${estudiante.id_usu}" class="btn btn-sm btn-primary">Editar</a>
                        <a href="./eliminarUsu.jsp?id=${estudiante.id_usu}" class="btn btn-sm btn-danger">Eliminar</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>

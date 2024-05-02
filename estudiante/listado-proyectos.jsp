<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>   
<%@ include file="./../WEB-INF/jspf/conexion.jspf" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Listado de Proyectos</title>
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
        <a class="navbar-brand" href="#">Panel del Coordinador</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav me-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#">Revisar estados del proyecto</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Proyectos por estudiante</a>
                </li>
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

<div class="container mt-5">
    <h3>Listado de Proyectos</h3>
    <table class="table">
        <thead>
            <tr>
                <th>Título</th>
                <th>Descripción</th>
                <th>Acción</th>
            </tr>
        </thead>
        <tbody>
            <sql:query var="proyectos" dataSource="${gestion_proyectos}">
                SELECT id_pro, titulo_pro, descripcion_pro
                FROM proyecto
                WHERE id_estudiante IS NULL
            </sql:query>
            <c:forEach var="proyecto" items="${proyectos.rows}">
                <tr>
                    <td>${proyecto.titulo_pro}</td>
                    <td>${proyecto.descripcion_pro}</td>
                    <td><a href="./escogerPro.jsp?id=${proyecto.id_pro}" class="btn btn-primary">Escoger</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>   
<%@ include file="./../WEB-INF/jspf/conexion.jspf" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aprobar Proyectos</title>
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

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <a class="navbar-brand" href="#">Director</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav me-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#">Información Alumnos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Aprobar Proyectos</a>
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
                <button class="btn btn-outline-danger" type="submit">Cerrar Sesión</button>
            </form>
        </div>
    </div>
</nav>

<div class="container mt-5">
    <div class="row">
        <div class="col">
            <h2>Lista de Proyectos a Aprobar</h2>
             <c:if test="${not empty param.action}">
        <c:choose>
            <c:when test="${param.action == 'true'}">
                <div class="alert alert-success" role="alert">
                    La acción se realizó correctamente.
                </div>
            </c:when>
            <c:when test="${param.action == 'false'}">
                <div class="alert alert-danger" role="alert">
                    Hubo un error al realizar la acción.
                </div>
            </c:when>
        </c:choose>
    </c:if>
            <table class="table table-striped mt-3">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Título</th>
                        <th>Descripción</th>
                        <th>ID Coordinador</th>
                        <th>Estado Coordinador</th>
                        <th>ID Estudiante</th>
                        <th>Estado Estudiante</th>
                        <th>ID Evaluador</th>
                        <th>Estado Evaluador</th>
                        <th>Aprobar</th>
                    </tr>
                </thead>
                <tbody>
                    <sql:query var="proyectos" dataSource="${gestion_proyectos}">
                        SELECT *
                        FROM Proyecto
                        WHERE estado_director = 'pendiente'
                    </sql:query>
                    <c:forEach var="proyecto" items="${proyectos.rows}">
                        <tr>
                            <td>${proyecto.id_pro}</td>
                            <td>${proyecto.titulo_pro}</td>
                            <td>${proyecto.descripcion_pro}</td>
                            <td>${proyecto.id_coordinador}</td>
                            <td>${proyecto.estado_coordinador}</td>
                            <td>${proyecto.id_estudiante}</td>
                            <td>${proyecto.estado_estudiante}</td>
                            <td>${proyecto.id_evaluador}</td>
                            <td>${proyecto.estado_evaluador}</td>
                            <td>
                                <a href="./aprovarPro.jsp?id=${proyecto.id_pro}" class="btn btn-success">Aprobar</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>

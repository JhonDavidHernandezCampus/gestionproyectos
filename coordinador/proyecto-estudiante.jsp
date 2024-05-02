<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>   
<%@ include file="./../WEB-INF/jspf/conexion.jspf" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Proyecto por Estudiante</title>
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
        <a class="navbar-brand" href="#">Proyecto por Estudiante</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav me-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#">Revisar estados del proyecto</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Proyecto por estudiante</a>
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
    <h3>Buscar Estudiante</h3>
    <form action="buscaEs.jsp" method="GET" class="mb-3">
        <div class="input-group">
            <input type="text" class="form-control" placeholder="Buscar por nombre o ID" name="query">
            <button class="btn btn-primary" type="submit">Buscar</button>
        </div>
    </form>

    <c:if test="${param.id != ''}">
    <c:set var="id" value="${param.id}" />
       
        <%-- Mostrar los proyectos en una tabla --%>
        <table class="table table-striped">
         <sql:query var="proyectos" dataSource="${gestion_proyectos}">
            SELECT  p.id_pro,p.titulo_pro,
                   COALESCE(u_coordinador.nombres_usu, 'No asignado') AS nombre_coordinador,
                   COALESCE(u_estudiante.nombres_usu, 'No asignado') AS nombre_estudiante,
                   COALESCE(u_estudiante.apellidos_usu, 'No asignado') AS apellidos_estudiante,
                   COALESCE(u_director.nombres_usu, 'No asignado') AS nombre_director,
                   COALESCE(u_evaluador.nombres_usu, 'No asignado') AS nombre_evaluador,
                   p.estado_coordinador,
                   p.estado_estudiante,
                   p.estado_director,
                   p.estado_evaluador
            FROM proyecto p
            LEFT JOIN usuario u_coordinador ON p.id_coordinador = u_coordinador.id_usu
            LEFT JOIN usuario u_estudiante ON p.id_estudiante = u_estudiante.id_usu
            LEFT JOIN usuario u_director ON p.id_director = u_director.id_usu
            LEFT JOIN usuario u_evaluador ON p.id_evaluador = u_evaluador.id_usu
            WHERE p.id_estudiante = ?
             <sql:param value="${id}" />
        </sql:query>
        
            <thead>
                <tr>
                    <th>Título del Proyecto</th>
                    <th>Estudiante</th>
                    <th>Coordinador</th>
                    <th>Director</th>
                    <th>Evaluador</th>
                    <th>Estado del Coordinador</th>
                    <th>Estado del Director</th>
                    <th>Estado del Evaluador</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="proyecto" items="${proyectos.rows}">
                    <tr>
                        <td>${proyecto.titulo_pro}</td>
                        <td>${proyecto.nombre_estudiante} ${proyecto.apellidos_estudiante}</td>
                        <td>${proyecto.nombre_coordinador}</td>
                        <td>${proyecto.nombre_director}</td>
                        <td>${proyecto.nombre_evaluador}</td>
                        <td><span class="badge bg-<c:choose><c:when test="${proyecto.estado_coordinador == 'pendiente'}">warning</c:when><c:when test="${proyecto.estado_coordinador == 'aprobado'}">success</c:when><c:when test="${proyecto.estado_coordinador == 'rechazado'}">danger</c:when></c:choose>">${proyecto.estado_coordinador}</span></td>
                        
                        <td><span class="badge bg-<c:choose><c:when test="${proyecto.estado_director == 'pendiente'}">warning</c:when><c:when test="${proyecto.estado_director == 'aprobado'}">success</c:when><c:when test="${proyecto.estado_director == 'rechazado'}">danger</c:when></c:choose>">${proyecto.estado_director}</span></td>
                        <td><span class="badge bg-<c:choose><c:when test="${proyecto.estado_evaluador == 'pendiente'}">warning</c:when><c:when test="${proyecto.estado_evaluador == 'aprobado'}">success</c:when><c:when test="${proyecto.estado_evaluador == 'rechazado'}">danger</c:when></c:choose>">${proyecto.estado_evaluador}</span></td>
                        <td>
                            <a href="./editarPro.jsp?id=${proyecto.id_pro}" class="btn btn-sm btn-primary">Editar</a>
                            <a href="./eliminarPro.jsp?id=${proyecto.id_pro}" class="btn btn-sm btn-danger">Eliminar</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </c:if>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>

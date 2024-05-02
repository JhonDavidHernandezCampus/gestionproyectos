<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>   
<%@ include file="./../WEB-INF/jspf/conexion.jspf" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agregar Proyecto</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="css/estilo.css" />
    <link rel="shortcut icon" href="../../img/8.png" type="image/x-icon" />
    <style>
        .navbar-nav .nav-link:hover {
            color: #1069d9;
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
    <h3 class="mb-4">Agregar Proyecto</h3>
    <form action="./agregarProdb.jsp" method="POST">
        <div class="mb-3">
            <label for="titulo">Título del Proyecto</label>
            <input type="text" class="form-control" id="titulo" name="titulo" required>
        </div>
        <div class="mb-3">
            <label for="descripcion">Descripción del Proyecto</label>
            <textarea class="form-control" id="descripcion" name="descripcion" rows="3"></textarea>
        </div>
        <div class="mb-3">
            <label for="coordinador">Coordinador</label>
            <select class="form-select" id="coordinador" name="coordinador">
                <option value="">Seleccionar coordinador</option>
                <sql:query var="coordinadores" dataSource="${gestion_proyectos}">
                    SELECT id_usu, nombres_usu, apellidos_usu, apellidos_usu FROM usuario WHERE rol_usu = 'coordinador'
                </sql:query>
                <c:forEach var="coordinador" items="${coordinadores.rows}">
                    <option value="${coordinador.id_usu}">${coordinador.nombres_usu } ${coordinador.apellidos_usu}</option>
                </c:forEach>
            </select>
        </div>
        <div class="mb-3">
            <label for="estudiante">Estudiante</label>
            <select class="form-select" id="estudiante" name="estudiante">
                <option value="">Seleccionar estudiante</option>
                <sql:query var="estudiantes" dataSource="${gestion_proyectos}">
                    SELECT id_usu, nombres_usu, apellidos_usu FROM usuario WHERE rol_usu = 'estudiante'
                </sql:query>
                <c:forEach var="estudiante" items="${estudiantes.rows}">
                    <option value="${estudiante.id_usu}">${estudiante.nombres_usu} ${estudiante.apellidos_usu}</option>
                </c:forEach>
            </select>
        </div>
        <div class="mb-3">
            <label for="director">Director</label>
            <select class="form-select" id="director" name="director">
                <option value="">Seleccionar director</option>
                <sql:query var="directores" dataSource="${gestion_proyectos}">
                    SELECT id_usu, nombres_usu, apellidos_usu FROM usuario WHERE rol_usu = 'director'
                </sql:query>
                <c:forEach var="director" items="${directores.rows}">
                    <option value="${director.id_usu}">${director.nombres_usu} ${director.apellidos_usu}</option>
                </c:forEach>
            </select>
        </div>
        <div class="mb-3">
            <label for="evaluador">Evaluador</label>
            <select class="form-select" id="evaluador" name="evaluador">
                <option value="">Seleccionar evaluador</option>
                <sql:query var="evaluadores" dataSource="${gestion_proyectos}">
                    SELECT id_usu, nombres_usu, apellidos_usu FROM usuario WHERE rol_usu = 'evaluador'
                </sql:query>
                <c:forEach var="evaluador" items="${evaluadores.rows}">
                    <option value="${evaluador.id_usu}">${evaluador.nombres_usu} ${evaluador.apellidos_usu}</option>
                </c:forEach>
            </select>
        </div>
        <button type="submit" class="btn btn-primary">Agregar Proyecto</button>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>

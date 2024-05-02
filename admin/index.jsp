<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Administrador</title>
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
        <a class="navbar-brand" href="#">Administrador</a>
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
                <button class="btn btn-outline-danger" type="submit">Cerrar Sesión</button>
            </form>
        </div>
    </div>
</nav>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-3">
            <div class="card mb-3"> 
                <div class="card-body text-center">
                    <img src='./../img/estudiante.png' width="100px" height="120px" />
                    <h5 class="card-title mt-2">Gestionar Estudiantes</h5>
                    <a href="./gestionar-estudiante.jsp" class="btn btn-primary">Ir</a>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card mb-3">
                <div class="card-body text-center">
                    <img src="./../img/coordinador.png"  width="100px" height="120px"/>
                    <h5 class="card-title mt-2">Gestionar Coordinadores</h5>
                    <a href="./gestionar-coordinador.jsp" class="btn btn-primary">Ir</a>
                </div>
            </div>
        </div>
    </div>
    <div class="row justify-content-center">
        <div class="col-md-3">
            <div class="card mb-3">
                <div class="card-body text-center">
                    <img src="./../img/director.png"  width="100px" height="120px"/>
                    <h5 class="card-title mt-2">Gestionar Directores</h5>
                    <a href="./gestionar-director.jsp" class="btn btn-primary">Ir</a>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card mb-3">
                <div class="card-body text-center">
                    <img src="./../img/evaluador.png"  width="100px" height="120px"/>
                    <h5 class="card-title mt-2">Gestionar Evaluadores</h5>
                    <a href="./gestionar-evaluador.jsp" class="btn btn-primary">Ir</a>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>

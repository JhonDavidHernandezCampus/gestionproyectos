<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>   
<%@ include file="./WEB-INF/jspf/conexion.jspf" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="css/estilo.css" />
    <link rel="shortcut icon" href="../../img/8.png" type="image/x-icon" />
    <style>
        body {
    background-image: url('./img/Fachada-UTS.png'); /* Reemplaza 'ruta/de/la/imagen.jpg' con la ruta de tu imagen */
    background-size: cover; /* Para que la imagen cubra todo el fondo */
    background-repeat: no-repeat; /* Para que la imagen no se repita */
}

    </style>
</head>
<body>

<body class="fondo">
<div class="container">
    <div class="row justify-content-center mt-5">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header bg-success text-white text-center">
                    <h2>Iniciar Sesion</h2>
                </div>
                <div class="card-body">
                    <form action="./login.jsp" method="POST">
                        <div class="mb-3">
                            <label for="usuario" class="form-label">Usuario</label>
                            <input type="text" class="form-control" id="usuario" name="usuario" required>
                        </div>
                        <div class="mb-3">
                            <label for="idPassword" class="form-label">Contrasena</label>
                            <input type="password" class="form-control" id="idPassword" name="idPassword" required>
                        </div>
                        <button type="submit" class="btn btn-success w-100">Ingresar</button>
                    </form>
                  <c:if test="${param.error == 'true'}">
                    <div class="alert alert-danger mt-3" role="alert">Usuario o contrasena incorrectos<div>
                  </c:if>
                  <c:if test="${param.error == 'true'}">
                    <div class="alert alert-danger mt-3" role="alert">Usuario o contrasena incorrectos<div>
                  </c:if>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>

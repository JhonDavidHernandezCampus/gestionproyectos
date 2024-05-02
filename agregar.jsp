<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.0/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet" href="css/estilo.css" />
    <link rel="shortcut icon" href="../../img/8.png" type="image/x-icon" />
    <title>Agregar Profesor</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light p-3" id="menu">
        <div class="container">
            <a class="navbar-brand" href="index.jsp">
                <span class="fs-5 text-black fw-bold">Ejercicios JSTL</span>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0"></ul>
            </div>
        </div>
    </nav>

    <div class="container">
        <h2 class="mt-4 mb-4">Agregar Profesor</h2>
        <form action="agregardb.jsp" method="post">
            <div class="mb-3">
                <label for="cedula" class="form-label">Cédula:</label>
                <input type="text" class="form-control" id="cedula" name="cedula" required>
            </div>
            <div class="mb-3">
                <label for="nombre" class="form-label">Nombre:</label>
                <input type="text" class="form-control" id="nombre" name="nombre" required>
            </div>
            <div class="mb-3">
                <label for="area" class="form-label">Área:</label>
                <input type="text" class="form-control" id="area" name="area" required>
            </div>
            <div class="mb-3">
                <label for="telefono" class="form-label">Teléfono:</label>
                <input type="text" class="form-control" id="telefono" name="telefono" required>
            </div>
            <div class="mb-3">
                <label for="id_categoria" class="form-label">ID Categoría:</label>
                <input type="number" class="form-control" id="id_categoria" name="id_categoria" required>
            </div>
            <button type="submit" class="btn btn-primary">Agregar Profesor</button>
        </form>
    </div>

    <footer class="bg-dark text-white">
        <div class="bg-dark align-items-center p-5"></div>
    </footer>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.9.2/umd/popper.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.0/js/bootstrap.min.js"></script>
</body>
</html>

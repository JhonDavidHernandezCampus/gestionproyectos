<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="Description" content="Enter your description here" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
     <link rel="stylesheet" href="./../css/global.css">
    <title>Title</title>    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    
</head>
<style>
.containerSolution {
    max-height: 63vh;
    width:80vh;
    overflow-y: scroll;
}
</style>
<body>
    <div class="row">
        <div class="col-3 p-1 bg-secondary">
           <div class="">
                <h1 class="w-100 text-center mr-20"><button onclick="window.location.href='./../index.html'" class="btn rounded-circle"><img src="./../img/atas.png" width="50px" height="50px" alt=""></button>Ejercicios</h1>
            </div>
            <div class="d-flex align-items-center flex-column spacing-2">
                <button type="button" onclick="window.location.href='formulario.html'" class="btn btn-warning w-50 m-1">Formulario</button>
                <button type="button" onclick="window.location.href='./../js/formulario/mostrar.jsp'" class="btn btn-success w-50 m-1">Listado</button>
                <button type="button" onclick="window.location.href='ejercicio1.jsp'" class="btn btn-info w-50 m-1">Ejercicio 1</button>
                <button type="button" onclick="window.location.href='ejercicio2.jsp'" class="btn btn-info w-50 m-1">Ejercicio 2</button>
                <button type="button" onclick="window.location.href='ejercicio3.jsp'" class="btn btn-info w-50 m-1">Ejercicio 3</button>
                <button type="button" onclick="window.location.href='ejercicio4.html'" class="btn btn-info w-50 m-1">Ejercicio 4</button>
                <button type="button" onclick="window.location.href='ejercicio5.html'" class="btn btn-info w-50 m-1">Ejercicio 5</button>
                <button type="button" onclick="window.location.href='ejercicio6.html'" class="btn btn-info w-50 m-1">Ejercicio 6</button>
                <button type="button" onclick="window.location.href='ejercicio7.html'" class="btn btn-info w-50 m-1">Ejercicio 7</button>
                <button type="button" onclick="window.location.href='ejercicio8.html'" class="btn btn-info w-50 m-1">Ejercicio 8</button>
                <button type="button" onclick="window.location.href='ejercicio9.html'" class="btn btn-info w-50 m-1">Ejercicio 9</button>
                <button type="button" onclick="window.location.href='ejercicio10.jsp'" class="btn btn-info w-50 m-1">Ejercicio 10</button>
                <button type="button" onclick="window.location.href='ejercicio11.html'" class="btn btn-info w-50 m-1">Ejercicio 11</button>
                <button type="button" onclick="window.location.href='ejercicio12.html'" class="btn btn-info w-50 m-1">Ejercicio 12</button>
                <button type="button" onclick="window.location.href='ejercicio13.html'" class="btn btn-info w-50 m-1">Ejercicio 13</button>
                <button type="button" onclick="window.location.href='ejercicio14.html'" class="btn btn-info w-50 m-1">Ejercicio 14</button>
                <button type="button" onclick="window.location.href='ejercicio15.html'" class="btn btn-info w-50 m-1">Ejercicio 15</button>
                <button type="button" onclick="window.location.href='ejercicio16.html'" class="btn btn-info w-50 m-1">Ejercicio 16</button>
            </div>
        </div>
        <div class="col-9 p-0">
            <div class="jumbotron text-center ">
                <h1>Ejercicio #2</h1>
                <p>Este Ejercicio lista los primero 10 primeros numero enteros</p>
            </div>
           <div class="d-flex w-100 justify-content-center">
            <div class="row w-100 containerSolution ">

            <%
            for (int i=0; i < 100; i++){
                out.println("<p class='ml-3 p-3 bg-secondary rounded col-1 text-center'>"+ i +"^2="+i*i+"</p>");
            }
            %>
            </div>
           </div>

        </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.9.2/umd/popper.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.0/js/bootstrap.min.js"></script>
</body>

</html>
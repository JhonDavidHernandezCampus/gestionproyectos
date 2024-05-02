<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="Description" content="Enter your description here" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="./../css/global.css">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

</head>
<style>
    th {
        font-family: verdana;
        font-size: 9pt;
    }
</style>

<body>
    <div class="row">
        <div class="col-3 p-1 bg-secondary">
           <div class="">
                <h1 class="w-100 text-center mr-20"><button onclick="window.location.href='./../index.html'" class="btn rounded-circle"><img src="./../../img/atas.png" width="50px" height="50px" alt=""></button>Ejercicios</h1>
            </div>
                       <div class="d-flex align-items-center flex-column spacing-2">
                <button type="button" onclick="window.location.href='./../../corte2/ejercicio1.jsp'" class="btn btn-info w-50 m-1">Ejercicio 1</button>
                <button type="button" onclick="window.location.href='./../../corte2/ejercicio2.jsp'" class="btn btn-info w-50 m-1">Ejercicio 2</button>
                <button type="button" onclick="window.location.href='./../../corte2/ejercicio3.jsp'" class="btn btn-info w-50 m-1">Ejercicio 3</button>
                <button type="button" onclick="window.location.href='./../../corte2/ejercicio4.html'" class="btn btn-info w-50 m-1">Ejercicio 4</button>
                <button type="button" onclick="window.location.href='./../../corte2/ejercicio5.html'" class="btn btn-info w-50 m-1">Ejercicio 5</button>
                <button type="button" onclick="window.location.href='./../../corte2/ejercicio6.html'" class="btn btn-info w-50 m-1">Ejercicio 6</button>
                <button type="button" onclick="window.location.href='./../../corte2/ejercicio7.html'" class="btn btn-info w-50 m-1">Ejercicio 7</button>
                <button type="button" onclick="window.location.href='./../../corte2/ejercicio8.html'" class="btn btn-info w-50 m-1">Ejercicio 8</button>
                <button type="button" onclick="window.location.href='./../../corte2/ejercicio9.html'" class="btn btn-info w-50 m-1">Ejercicio 9</button>
                <button type="button" onclick="window.location.href='./../../corte2/ejercicio10.jsp'" class="btn btn-info w-50 m-1">Ejercicio 10</button>
                <button type="button" onclick="window.location.href='./../../corte2/ejercicio11.html'" class="btn btn-info w-50 m-1">Ejercicio 11</button>
                <button type="button" onclick="window.location.href='./../../corte2/ejercicio12.html'" class="btn btn-info w-50 m-1">Ejercicio 12</button>
                <button type="button" onclick="window.location.href='./../../corte2/ejercicio13.html'" class="btn btn-info w-50 m-1">Ejercicio 13</button>
                <button type="button" onclick="window.location.href='./../../corte2/ejercicio14.html'" class="btn btn-info w-50 m-1">Ejercicio 14</button>
                <button type="button" onclick="window.location.href='./../../corte2/ejercicio15.html'" class="btn btn-info w-50 m-1">Ejercicio 15</button>
                <button type="button" onclick="window.location.href='./../../corte2/ejercicio16.html'" class="btn btn-info w-50 m-1">Ejercicio 16</button>
            </div>
        </div>
        <div class="col-9 p-0">
            <div class="jumbotron text-center ">
                <h1>Ejercicio #6</h1>
                <p>El resultado es</p>
            </div>
            <div class="d-flex flex-column justify-content-center align-items-center p-5">
                <%
                    int nota1 = Integer.parseInt(request.getParameter("nota_1"));
                    int nota2 = Integer.parseInt(request.getParameter("nota_2"));
                    int nota3 = Integer.parseInt(request.getParameter("nota_3"));
                    if((nota1 >= 0 && nota1 <= 50) && (nota2 >= 0 && nota2 <= 50) && (nota3 >= 0 && nota3 <= 50)){
                    float promedio = (nota1 + nota2 + nota3)/3;
                    out.println("<h1>El promedio de las notas "+nota1+", " + nota2+", " + nota3+"," +" es: "+ promedio +"</h1>");
                    }else{
                    out.println("<h1>Algunas de las notas no es valida!</h1>");
                    }
                    
                %>
                <button class='btn btn-warning w-25' onclick="window.history.back()">Regresar</button>
            </div>
        </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.9.2/umd/popper.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.0/js/bootstrap.min.js"></script>
</body>

</html>
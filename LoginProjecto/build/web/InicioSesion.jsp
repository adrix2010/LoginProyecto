<%-- 
    Document   : InicioSesion
    Created on : 30-oct-2016, 17:19:43
    Author     : Microsoft Windows
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style>
            body{
                background:url("Imagen/imagen1.jpg")fixed;
            }

        </style>
    </head>
    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand">Proyecto</a>
                </div>
                <ul class="nav navbar-nav">
                    <li><a href="index.html">Home</a></li>
                    <li class="active"><a href="InicioSesion.jsp">Inciar Sesion</a></li>
                    <li><a href="Sesion.html">Registrar Sesion</a></li>
                </ul>
        </nav>

        <div style="height: 50px"></div>
        <div class="container" style="position: fixed">
            <div class="col-md-offset-5 col-md-3">
                <div class="loginFormato">
                    <form action='alta.jsp' method="POST">
                        <h1>Hola invitado</h1>
                        <p class="text-uppercase"> Registrate y obten los beneficios del software </p>
                        <input type="text" id="usuarioNombre" class="form-control input-sm chat-input" placeholder="Usuario" required/>
                        <br/>
                        <input type="password" id="password" class="form-control input-sm chat-input" placeholder="contraseña" required/>
                        <br/>
                        <input type="submit" name="registro" class="btn btn-info" id="registro" value="Registrate" /> 

                    </form>
                </div>
                <div class="wrapper">
                </div>
            </div>
        </div>
    </body>
</html>
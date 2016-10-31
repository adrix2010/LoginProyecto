<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                background:url("Imagen/imagen1.jpg")fixed;
                color: white;
            }

        </style>
    </head>
    <body>
        <%@page import="java.sql.*,java.io.*" %>

        <%
            String correo = request.getParameter("usuarioNombre");
            String contra = request.getParameter("password");

            Connection con = null;
            PreparedStatement pstate = null;

            try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto", "root", "n0m3l0");
                String querystring = "INSERT INTO usuarios VALUES(?,?)";
                pstate = con.prepareStatement(querystring);
                pstate.setString(1, correo);
                pstate.setString(2, contra);
                pstate.executeUpdate();
                out.println("<script>alert('Registro dado de alta exitosamente.')</script>");
                out.print("<META HTTP-EQUIV='REFRESH' CONTENT='.0000001;URL=http://localhost:8080/TareaLab/index.html'>");
            } catch (SQLException error) {
                out.print("<script>alert('El correo del usuario ya estan registrados')</script>");
                out.println(error.toString());

            } catch (Exception e) {
                out.println(e.getLocalizedMessage());
                e.printStackTrace();
            }


        %>
        <h1><a href="index.html"></a></h1>
    </body>
</html>

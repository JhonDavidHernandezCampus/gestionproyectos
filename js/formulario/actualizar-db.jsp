<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.*" %>
<%

String ced = request.getParameter("identificacion");
String Nom = request.getParameter("nombre");
String Apell = request.getParameter("apellido");
String Sexo = request.getParameter("sexo");
String Corr = request.getParameter("email");
String Pobla = request.getParameter("poblacion");
String Descripcion = request.getParameter("descripcion");
String Cond = request.getParameter("condiciones");

Connection conexion = null;
PreparedStatement ps = null;

try {
    Class.forName("org.postgresql.Driver");
    String password = "12345";
    String nameDataBase = "formulario";
    String localhost = "localhost";
    String puerto = "5432";
    String userName = "postgres";

    conexion = DriverManager.getConnection(
            "jdbc:postgresql://"+localhost+":"+puerto+"/"+nameDataBase+"",userName,password);

    String consultaSQL = "UPDATE form SET nom = ?, apell = ?, sexo = ?, corr = ?, pobla = ?, descripcion = ?, cond = ? WHERE ced = ?";
    ps = conexion.prepareStatement(consultaSQL);
    ps.setString(1, Nom);
    ps.setString(2, Apell);
    ps.setString(3, Sexo);
    ps.setString(4, Corr);
    ps.setString(5, Pobla);
    ps.setString(6, Descripcion);
    ps.setString(7, Cond);
    ps.setString(8, ced);

    int filas = ps.executeUpdate();
    System.out.println(filas);
    response.sendRedirect("mostrar.jsp");

} catch (ClassNotFoundException e) {
    out.println("Error en la carga del driver: " + e.getMessage());
} catch (SQLException e) {
    out.println("Error accediendo a la base de datos: " + e.getMessage());
} finally {
    if (ps != null) {
        try {
            ps.close();
        } catch (SQLException e) {
            out.println("Error cerrando la sentencia: " + e.getMessage());
        }
    }
    if (conexion != null) {
        try {
            conexion.close();
        } catch (SQLException e) {
            out.println("Error cerrando la conexion: " + e.getMessage());
        }
    }
}
%>

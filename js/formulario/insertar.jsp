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
Statement sentencia = null;
	
	int filas=0;
	try {

		Class.forName("org.postgresql.Driver");
        String password = "12345";
        String nameDataBase = "formulario";
        String localhost = "localhost";
        String puerto = "5432";
        String userName = "postgres";

	    conexion = DriverManager.getConnection(
				"jdbc:postgresql://"+localhost+":"+puerto+"/"+nameDataBase+"",userName,password);

		sentencia = conexion.createStatement();

		String consultaSQL = "insert into form (ced, Nom, Apell, Sexo, Corr, Pobla, Descripcion, Cond) values ";
		
        consultaSQL += "('" + ced + "','" + Nom + "','" + Apell + "','" + Sexo + "','" + Corr + "','" + Pobla + "','" + Descripcion + "','" + Cond + "')";

		filas = sentencia.executeUpdate(consultaSQL);
        System.out.println(filas);
		response.sendRedirect("mostrar.jsp");

	} catch (ClassNotFoundException e) {
		out.println("Error en la carga del driver"
				+ e.getMessage());
	} catch (SQLException e) {
		out.println("Error accediendo a la base de datos"
				+ e.getMessage());
	} finally {
		if (sentencia != null) {
			try {sentencia.close();} 
			catch (SQLException e) 
			{out.println("Error cerrando la sentencia" +
					e.getMessage());}
		}
		if (conexion != null) {
			try {conexion.close();}
			catch (SQLException e) 
			{out.println("Error cerrando la conexion" +
					e.getMessage());}
		}
	}


%>

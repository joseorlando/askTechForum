<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:include page="cabecalho.jsp"></jsp:include>
</br></br></br>
<h1><span class="logo_colour">Cadastro de Usuários</span></h1>
<span class="logo_colour"></span>
<table border="1">
	<tr>
		<td>Id</td>
		<td>Nome</td>
		<td>Login</td>
		<td>Senha</td>
		<td>Opcao</td>
	</tr>
	<%
	int id;
	String nome;
	String login;
	String senha;
	String action;

	String url = "jdbc:mysql://localhost:3306/asktech";
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection conn = DriverManager.getConnection(url, "root", "root");
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery("select * from usuario ");
	while(rs.next()) {
		id = rs.getInt("id");
		nome = rs.getString("nome");
		login = rs.getString("login");
		senha = rs.getString("senha");
%>
	<tr>
		<td><%=id %></td>
		<td><%=nome %></td>
		<td><%=login %></td>
		<td><%=senha %></td>

		<td><a
			href="login.jsp?id=<%=id %>&nome=<%=nome %>&login=<%=login %>&senha=<%=senha %>">Editar</a></td>
	</tr>

	<%	}
	rs.close();
	stmt.close();
	conn.close();
%>
</table>

<a href="login.jsp">Novo</a>

<jsp:include page="rodape.jsp"></jsp:include>
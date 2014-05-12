<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<jsp:include page="cabecalho.jsp"></jsp:include>

</br>
</br>
</br>

<form action="ServletAlteracaoUsuario" method="post">
	<fieldset>
		</br>
		<legend>Alterar Usuário</legend>
		
		<label for="nome"> Nome: </label><input value="${usuario.nome}"type="text" name="nome" id="nome" />
		</br></br>
		
		<label for="email"> E-mail: </label><input value="${usuario.login}" type="text" name="email" id="email" />
		<br></br>
		
		<input value="Alterar" type="submit" />
		</br></br></br>
		
	</fieldset>
</form>
</br>
</br>
</br>

<jsp:include page="rodape.jsp"></jsp:include>
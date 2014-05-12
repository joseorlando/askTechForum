<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<jsp:include page="cabecalho.jsp"></jsp:include>

</br>
</br>
</br>

<form action="ServletCadastroUsuario" method="post">
	<fieldset>
		</br>
		<legend>Cadastro</legend>
		
		<label for="nome">Nome*: </label>
		<input value="${usuario.nome}" type="text" name="nome" id="nome" /></br>
		
		</br> <label for="email">E-mail*: </label>
		<input value="${usuario.login}" type="text" name="email" id="email" /></br>
		
		</br> <label for="senha">Senha*: </label>
		<input type="password" name="senha" id="senha" /></br>
		
		</br> <label for="confsenha">Confirmar Senha*: </label>
		<input type="password" name="confsenha" id="confsenha" /></br>
		
		</br> <input value="Cadastrar" type="submit" /> </br>
		</br>
	</fieldset>
</form>


<jsp:include page="rodape.jsp"></jsp:include>

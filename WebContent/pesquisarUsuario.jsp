<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:include page="cabecalho.jsp"></jsp:include>

<br/>
<br/>
<br/>

<form id="formPesquisaUsuario" action="ServletPesquisaUsuario" method="post">
	<fieldset>
		<br/>
		<legend>Pesquisar Usuários</legend>

		<input type="radio" name="pesquisaRadio" id="nome" value="nomeRadio" checked="checked" />
		<label for="nome"> Nome: </label><input value="${usuario.nome}"type="text" name="nome" id="nome" />
		<br/><br/>
		
		<input type="radio" name="pesquisaRadio" id="email" value="emailRadio" />
		<label for="email"> E-mail: </label><input value="${usuario.login}" type="text" name="email" id="email" />
		<br><br/>
	
		<input type="radio" name="pesquisaRadio" id="listarTodos" value="listartodosRadio" />
		<label for="listarTodos"> Listar Todos</label>
		<br/><br/>
		
		<input value="Pesquisar" type="submit" />
		<br/><br/><br/>

		<c:if test="${not empty usuarios}">
			<table id="tabelaListaUsuarios" border="1">
				<thead>
					<tr class="tabelaPesquisa">
						<td></td>
						<td>Id</td>
						<td>Nome</td>
						<td>Login</td>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${usuarios}" var="users">
						<tr>
							<td><input type="radio" name="usuario" id="usuario" /></td>
							<td><c:out value="${users.id}" /></td>
							<%-- <label for="usuario">${usuario.id}</label></td> --%>
							<td><c:out value="${users.nome}" /></td>
							<%-- <label for="usuario">${usuario.nome}</label></td> --%>
							<td><c:out value="${users.login}" /></td>
							<%-- <label for="usuario">${usuario.login}</label></td> --%>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:if>
		<input value="Alterar" type="button" /> <input value="Excluir" type="button" />
		<br/><br/><br/>

		<script type="text/javascript">
			function validar(obj1) {
				document.getElementById("formPesquisaUsuario").submit();
				if (obj1.style.display == "none") {
					obj1.style.display = "block";
				}
			}
		</script>

	</fieldset>
</form>
<br/>
<br/>
<br/>

<jsp:include page="rodape.jsp"></jsp:include>
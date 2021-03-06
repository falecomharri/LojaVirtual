<%@ include file="../../../common/admin/header.jsp"%>

<form id="produtosForm" method="POST" action='<c:url value="/produtos" />'>
	<fieldset>
		<legend>Adicionar Produto</legend> 
		
		<label for="nome">Nome:</label> 
		<input id="nome" class="requerid" minlength="3" type="text" 
			name="produto.nome" value="${produto.nome}" style="width: 150px"/> 
		
		<label for="descricao">Descri��o:</label> 
		<textarea id="descricao" class="requerid" minlength="1" maxlength="40" name="produto.descricao"  
			  style="width: 150px">${produto.descricao}</textarea>
		
		<label for="preco">Pre�o:</label>
		<input id="preco" class="requerid" min="0" type="text" name="produto.preco" 
		value="${produto.preco}" style="width: 100px"/>
		
		<button type="submit">Enviar</button>
		
	</fieldset>
</form>

<script type="text/javascript">
	$('#produtosForm').validate();
</script>
<%@ include file="../../../common/admin/footer.jsp"%>
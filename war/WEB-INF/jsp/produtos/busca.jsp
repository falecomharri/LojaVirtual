<%@ include file="../../../common/admin/header.jsp"%>
	<c:if test="${!empty produtoList}">
		<div>
			<table>
				<thead>
					<tr>
						<th>Nome</th>
						<th>Descri��o</th>
						<th>Pre�o</th>
						<th>Comprar</th>
						<th>Editar</th>
						<th>Excluir </th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${produtoList}" var="produto">
						<tr>
							<td>${produto.nome }</td>
							<td>${produto.descricao }</td>
							<td align="right">${produto.preco}</td>
							<td>
								<form action="<c:url value="/carrinho"/>" method="POST">
									<input type="hidden" name="item.produto.codigo"
										value="${produto.codigo}"/>
									<input class="qtde" name="item.quantidade" value="1"/>
									<button type="submit">Comprar</button>
								</form>
							</td>
							<td><a href="<c:url value="/produtos/${produto.codigo}"/>">Editar</a></td>
							<td>
								<form action="<c:url value="/produtos/${produto.codigo}"/>" method="POST">
									<button class="link" name="_method" value="DELETE">Excluir</button>
								</form>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</c:if>
<%@ include file="../../../common/admin/footer.jsp"%>
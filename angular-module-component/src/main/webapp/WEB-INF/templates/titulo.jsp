<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="h" tagdir="/WEB-INF/tags/html" %>


<div class="page-header row-fluid">
	<c:if test="${not empty title}">
		<!-- Titulo da Aplicacao -->
		<h2 class="span10">${title}</h2>
	</c:if>
	
	<c:if test="${exibirBarraFerramentas}">
		<ul class="inline pull-right barraFerramentas">
			<li>
				<a id="btnPrint" href="#">
					<i class="fa fa-print fa-2x"></i>
				</a>
			</li>
			<li>
				<a id="btnExport" href="#">
					<i class="fa fa-download fa-2x"></i>
				</a>
			</li>
		</ul>
		
		<c:url var="url" value='${urlExportacao}' />
		
		<script type="text/javascript" charset="utf-8">
			readyBarraFerramentas('${url}');
		</script>
	</c:if>
</div>




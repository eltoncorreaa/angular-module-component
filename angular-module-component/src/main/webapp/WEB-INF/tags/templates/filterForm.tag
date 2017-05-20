<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="h" tagdir="/WEB-INF/tags/html"%>
<%@attribute name="exibeFiltro" required="false" type="java.lang.Boolean"%>
<%@attribute name="ngclickFilter" required="true"%>

<c:if test="${empty exibeFiltro}">
	<c:set var="exibeFiltro" value="true" />
</c:if>

<c:if test="${!empty ngclickFilter}">
	<c:set var="ngclickFilter" value="${ngclickFilter}" />
</c:if>

<f:form id="formPrincipal" enctype="application/x-www-form-urlencoded">

	<h:mensagens />
	
	<c:if test="${exibeFiltro}">
	<fieldset>
		<jsp:doBody />
		<div class="row-fluid">
			<div class="controls">
				<button id="create" class="btn btn-primary" type="button" ng-click="${ngclickFilter}">
					<s:message code='botao.consultar' />
				</button>
			</div>
		</div>		
	</fieldset>	
	</c:if>
</f:form>

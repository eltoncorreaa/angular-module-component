<%@attribute name="action" required="false"%>
<%@attribute name="model" required="false"%>
<%@attribute name="method" required="false"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="h" tagdir="/WEB-INF/tags/html" %>
<%@attribute name="ngClickSalvar" required="true"%>
<%@attribute name="clickVoltar" required="true"%>
<%@attribute name="ngApp" required="true"%>
<%@attribute name="ngController" required="true"%>

<c:if test="${!empty ngClickSalvar}">
	<c:set var="ngClickSalvar" value="${ngClickSalvar}" />
</c:if>

<c:if test="${!empty clickVoltar}">
	<c:set var="clickVoltar" value="${clickVoltar}" />
</c:if>

<c:if test="${!empty ngApp}">
	<c:set var="ngApp" value="${ngApp}" />
</c:if>

<c:if test="${!empty ngController}">
	<c:set var="ngController" value="${ngController}" />
</c:if>

<form id="formPrincipal" ng-app="${ngApp}" ng-controller="${ngController}"
 	 accept-charset="UTF-8" enctype="application/x-www-form-urlencoded" novalidate>

	<h:mensagens />

	<fieldset>
		<jsp:doBody />
		
		<div class="row-fluid">
			<div class="controls">
				<button id="salvar" class="btn btn-primary" type="button" ng-click="${ngClickSalvar}">
					<s:message code='botao.salvar' />
				</button>
				<button id="voltar" class="btn" type="button"
					 onclick="javascript:location.href='${clickVoltar}'">
					<s:message code='botao.voltar' />
				</button>
            </div>  
		</div>
	</fieldset>
</form>
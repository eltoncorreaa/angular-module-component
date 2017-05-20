<%@attribute name="action" required="true"%>
<%@attribute name="model" required="true"%>
<%@attribute name="method" required="true"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="h" tagdir="/WEB-INF/tags/html" %>

<c:url var="actionUrl" value="${action}" />

<f:form id="formPrincipal" modelAttribute="${model}" action="${actionUrl}"
	accept-charset="UTF-8" method="${method}"
	enctype="application/x-www-form-urlencoded">
		
	<f:hidden path="paginaAtual" />
	<h:mensagens />	
	
    <fieldset>
        <jsp:doBody />
        
        <div class="row-fluid">
			<div class="controls">
				<button id="btnSalvar" class="btn btn-primary" type="submit">
					<s:message code='botao.salvar' />
				</button>
				<button id="btnVoltar" type="button" class="btn" 
					 onclick="javascript:location.href='<c:url value='/home.do' />'">
					<s:message code='botao.voltar' />
				</button>
            </div>  
		</div>
        
    </fieldset>    
</f:form>
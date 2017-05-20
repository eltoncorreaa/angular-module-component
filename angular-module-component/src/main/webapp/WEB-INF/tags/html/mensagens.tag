<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="boxMensagem erro" style="display:none" id="divMsgsErro">
    <span><s:message code="error.mensagem.verificar" /></span>
       <ul>        
       </ul>
</div>


<c:if test="${not empty warning_message}">
    <div class="boxMensagem informacao">
        <span class="invisible"></span>
        <span><s:message code="${warning_message}" text="${warning_message}"/></span>
    </div>
</c:if>

<c:if test="${not empty error_message}">
    <div class="boxMensagem erro">
        <span class="invisible"></span>
        <span><s:message code="${error_message}" text="${error_message}" /></span>
    </div>
</c:if>


<div class="boxMensagem sucesso" style="display:none" id="divMsgsSucesso">
	<span class="invisible"></span>
        <span></span>
</div>


<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="h" tagdir="/WEB-INF/tags/html" %>

<!-- inicio: Breadcrumb, Localizador de sessao -->

<div class="row-fluid">
    <ul class="breadcrumb">
        <li>
        	<a href="#">
        		Dados da Pesquisa
       		</a> 
        	<c:if test="${not empty breadcrumb}">
        		<span class="divider">&raquo;</span>
        	</c:if>
        </li>
        
        <c:forEach items="${breadcrumb}" var="item" varStatus="loop">
			${item}
        </c:forEach>
    </ul>
</div>

<!-- fim: Breadcrumb, Localizador de sessao -->
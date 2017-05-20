<%@ tag language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" dynamic-attributes="args" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="h" tagdir="/WEB-INF/tags/html" %>
<%@attribute name="id" required="true" %>
<%@attribute name="showLabel" required="true" type="java.lang.Boolean"%>
<%@attribute name="code" required="false" %>
<%@attribute name="ngmodel" required="true" %>

<c:if test="${empty showLabel}">
    <c:set var="showLabel" value="true"/>
</c:if>

<c:if test="${!empty ngmodel}">
    <c:set var="ngmodel" value="${ngmodel}"/>
</c:if>

<c:if test="${!empty code}">
    <c:set var="code" value="${code}"/>
</c:if>

<c:if test="${showLabel}">	
   	<label><s:message code="${code}"/></label>
</c:if>

<input type="text" id="${id}" class="span10" ng-model="${ngmodel}"/>

<script type="text/javascript">  
    $(function() {    
    	document.getElementById("nome").focus(); 	
    });   
</script>
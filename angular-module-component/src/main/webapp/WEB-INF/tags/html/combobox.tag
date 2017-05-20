<%@ tag language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" dynamic-attributes="args" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="h" tagdir="/WEB-INF/tags/html" %>
<%@attribute name="id" required="true" %>
<%@attribute name="showLabel" required="true" type="java.lang.Boolean"%>
<%@attribute name="code" required="false" %>
<%@attribute name="ngmodel" required="true" %>
<%@attribute name="ngoptions" required="true" %>

<c:if test="${empty showLabel}">
    <c:set var="showLabel" value="true"/>
</c:if>

<c:if test="${!empty ngmodel}">
    <c:set var="ngmodel" value="${ngmodel}"/>
</c:if>

<c:if test="${!empty ngoptions}">
    <c:set var="ngoptions" value="${ngoptions}"/>
</c:if>

<c:if test="${!empty code}">
    <c:set var="code" value="${code}"/>
</c:if>

<c:if test="${showLabel}">	
   	<label><s:message code="${code}"/></label>
</c:if>

<select class="span10" id="${id}" ng-model="${ngmodel}" ng-options="${ngoptions}">
    	  <option value=''><s:message code="label.combobox.select.default" /></option>
</select>
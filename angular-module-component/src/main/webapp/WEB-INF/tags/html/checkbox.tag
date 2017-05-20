<%@ tag language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" dynamic-attributes="args" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="h" tagdir="/WEB-INF/tags/html" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@attribute name="code" required="true" %>
<%@attribute name="path" required="true" %>
<%@attribute name="items" required="true" type="java.util.List" %>
<%@attribute name="itemLabel" required="false" %>
<%@attribute name="itemValue" required="false" %>
<%@attribute name="required" required="false" type="java.lang.Boolean" %>

<c:if test="${empty itemLabel}">
    <c:set var="itemLabel" value="nome"/>
</c:if>

<c:if test="${empty itemValue}">
    <c:set var="itemValue" value="id"/>
</c:if>

<c:if test="${empty required}">
    <c:set var="required" value="false"/>
</c:if>

<div>
    <h:label code="${code}" path="${path}" required="${required}"/>
    <f:checkboxes path="${path}" items="${items}" itemLabel="${itemLabel}" itemValue="${itemValue}" element="br"/>
</div>
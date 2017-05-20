<%@ tag language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" dynamic-attributes="args" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="h" tagdir="/WEB-INF/tags/html" %>
<%@attribute name="label" required="true" %>
<%@attribute name="required" required="false" %>
<%@attribute name="path" required="true" %>
<%@attribute name="id" required="false" %>

<c:if test="${empty required}">
    <c:set var="required" value="false"/>
</c:if>

<c:if test="${empty id}">
    <c:set var="id" value="${label}"/>
</c:if>

<c:if test="${empty mask}">
    <c:set var="mask" value="dd/MM/yyyy"/>
</c:if>


<div>
    <c:if test="${! empty label}">
        <label><s:message code="${label}" text="" />:</label>
    </c:if>
    <span id="${id}">
        <c:out value="${path}"/>
    </span>
</div>
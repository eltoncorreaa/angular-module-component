<%@ tag language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" dynamic-attributes="args" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@attribute name="code" required="true" %>
<%@attribute name="path" required="true" %>
<%@attribute name="id" required="false" %>
<%@attribute name="required" required="false" %>
<%@attribute name="supressRequired" required="false" type="java.lang.Boolean"%>

<c:if test="${empty id}">
    <c:set var="id" value="${path}"/>
</c:if>

<c:if test="${(not supressRequired) and required}">
    <c:set var="requiredSimbol" value="*"/>
</c:if>

<f:label path="${path}" for="${id}">
    ${requiredSimbol}<s:message code='${code}'/>:
</f:label>
<%@ tag language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" dynamic-attributes="args" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="h" tagdir="/WEB-INF/tags/html" %>
<%@attribute name="code" required="true" %>
<%@attribute name="id" required="true" %>
<%@attribute name="path" required="true" %>
<%@attribute name="required" required="false" type="java.lang.Boolean" %>
<%@attribute name="mask" required="false" %>
<%@attribute name="disabled" required="false" type="java.lang.Boolean" %>
<%@attribute name="loadSpan" required="false" type="java.lang.Boolean" %>
<%@attribute name="size" required="false" %>
<%@attribute name="maxlength" required="false" %>

<c:if test="${empty size}">
    <c:set var="size" value="50"/>
</c:if>
<c:if test="${empty maxlength}">
    <c:set var="maxlength" value="200"/>
</c:if>

<c:if test="${empty disabled}">
    <c:set var="disabled" value="false"/>
</c:if>

<c:if test="${empty required}">
    <c:set var="required" value="false"/>
</c:if>

<c:if test="${empty mask}">
    <c:set var="mask" value="9?9999999999"/>
</c:if>
<script type="text/javascript">
    $(function() {
        $("#${id}").mask("${mask}", {placeholder : " "});
    });
</script>


<div>
    <h:label code="${code}" path="${path}" required="${required}"/>
    <f:input id="${id}" path="${path}" size="${size}" maxlength="${maxlength}" disabled="${disabled}"/>
    <c:if test="${loadSpan}">
        <span id="load_${id}"></span>
    </c:if>
    <c:if test="${not disabled}">
        <f:errors path="${path}" cssClass="formErrorMessage"/>
    </c:if>
</div>
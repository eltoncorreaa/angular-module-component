<%@ tag language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" dynamic-attributes="args" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="h" tagdir="/WEB-INF/tags/html" %>
<%@attribute name="code" required="true" %>
<%@attribute name="id" required="true" %>
<%@attribute name="path" required="true" %>
<%@attribute name="required" required="false" type="java.lang.Boolean" %>
<%@attribute name="loadSpan" required="false" type="java.lang.Boolean" %>
<%@attribute name="rows" required="false" %>
<%@attribute name="cols" required="false" %>
<%@attribute name="maxlength" required="false" %>
<%@attribute name="disabled" required="false" type="java.lang.Boolean" %>

<c:if test="${empty rows}">
    <c:set var="rows" value="3"/>
</c:if>

<c:if test="${empty cols}">
    <c:set var="cows" value="20"/>
</c:if>

<c:if test="${empty required}">
    <c:set var="required" value="false"/>
</c:if>

<c:if test="${empty loadSpan}">
    <c:set var="loadSpan" value="false"/>
</c:if>

<c:if test="${empty maxlength}">
    <c:set var="maxlength" value="4000"/>
</c:if>

<c:if test="${empty disabled}">
    <c:set var="disabled" value="false"/>
</c:if>

<div>
    <h:label code="${code}" path="${path}" required="${required}"/>
    <f:textarea id="${id}" path="${path}" rows="${rows}" cols="${cols}" disabled="${disabled}" />
    <c:if test="${loadSpan}">
        <span id="load_${id}"></span>
    </c:if>
    <c:if test="${not disabled}">
        <script type="text/javascript">
            var options = {
                'maxCharacterSize': ${maxlength},
                'originalStyle': 'formErrorMessage',
                'warningStyle': 'formErrorMessage',
                'warningNumber': ${maxlength},
                'displayFormat': '#input/#max'
            };
            $('#${id}').textareaCount(options);
        </script>
        <f:errors path="${path}" cssClass="formErrorMessage"/>
    </c:if>
</div>

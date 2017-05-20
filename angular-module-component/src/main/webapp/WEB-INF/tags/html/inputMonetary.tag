<%@ tag language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" dynamic-attributes="args" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="h" tagdir="/WEB-INF/tags/html" %>
<%@attribute name="code" required="true" %>
<%@attribute name="id" required="true" %>
<%@attribute name="path" required="true" %>
<%@attribute name="required" required="false" type="java.lang.Boolean" %>
<%@attribute name="readonly" required="false" type="java.lang.Boolean" %>
<%@attribute name="loadSpan" required="false" type="java.lang.Boolean" %>
<%@attribute name="size" required="false" %>
<%@attribute name="maxlength" required="false" %>
<%@attribute name="acceptZero" required="false" %>
<%@attribute name="precision" required="false" %>
<%@attribute name="scale" required="false" %>

<c:if test="${empty size}">
    <c:set var="size" value="50"/>
</c:if>

<c:if test="${empty readonly}">
    <c:set var="readonly" value="false"/>
</c:if>

<c:if test="${empty maxlength and not readonly}">
    <c:set var="maxlength" value="21"/>
</c:if>

<c:if test="${empty required}">
    <c:set var="required" value="false"/>
</c:if>

<c:if test="${empty loadSpan}">
    <c:set var="loadSpan" value="false"/>
</c:if>

<c:if test="${empty acceptZero}">
    <c:set var="acceptZero" value="true"/>
</c:if>

<c:if test="${empty precision}">
    <c:set var="precision" value="20"/>
</c:if>

<c:if test="${empty scale}">
    <c:set var="scale" value="2"/>
</c:if>

<div class="boxField">
    <h:label code="${code}" path="${path}" required="${required}" id="${id}"/>
    <f:input id="${id}" path="${path}" size="${size}" maxlength="${maxlength}" readonly="${readonly}" cssClass="monetary"/>
    <c:if test="${loadSpan}">
        <span id="load_${id}"></span>
    </c:if>
    <c:if test="${not readonly}">
        <f:errors path="${path}" cssClass="ValidationErrorMsg"/>
    </c:if>

    <script type="text/javascript">
        $(function() {

            $('#${id}').priceFormat(definePriceFormat("${precision}","${scale}"));

            $('#${id}').blur(function() {
                acceptZero($(this),"${acceptZero}");
            });

        });
    </script>

</div>
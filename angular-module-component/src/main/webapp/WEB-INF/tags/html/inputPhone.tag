<%@ tag language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" dynamic-attributes="args" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="h" tagdir="/WEB-INF/tags/html" %>
<%@attribute name="code" required="true" %>
<%@attribute name="id" required="true" %>
<%@attribute name="dddPath" required="true" %>
<%@attribute name="ddiPath" required="true" %>
<%@attribute name="telefonePath" required="true" %>
<%@attribute name="required" required="false" type="java.lang.Boolean" %>
<%@attribute name="size" required="false" %>
<%@attribute name="maxlength" required="false" %>

<c:if test="${empty required}">
    <c:set var="required" value="false"/>
    <c:set var="cssClassDDD" value="obrigatorio ddd"/>
    <c:set var="cssClassTelefone" value="obrigatorio telefone"/>
</c:if>

<div class="boxField">
    <h:label id="${id}_ddd" path="${telefonePath}" code="${code}" required="${required}"/>

        <f:input path="${ddiPath}" id="${id}_ddd" cssClass="${cssClassDDD}" maxlength="2" size="2"/>
        <f:input path="${dddPath}" id="${id}_ddd" cssClass="${cssClassDDD}" maxlength="2" size="2"/>
        <f:input path="${telefonePath}" id="${id}_telefone" cssClass="${cssClassTelefone}"/>

    <f:errors path="${ddiPath}" cssClass="ValidationErrorMsg"/>
    <f:errors path="${dddPath}" cssClass="ValidationErrorMsg"/>
    <f:errors path="${telefonePath}" cssClass="ValidationErrorMsg"/>
</div>


<script type="text/javascript">
    $(function() {
        $("#${id}_ddi").mask('99');
        $("#${id}_ddd").mask('99');
        $("#${id}_telefone").mask('9999-9999');
        $("#${id}_telefone").closest("form").submit( function(){
            unMaskTelefone('#${id}_telefone');
        });
    });
</script>
<%@ tag language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" dynamic-attributes="args" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="h" tagdir="/WEB-INF/tags/html" %>
<%@attribute name="id" required="true" %>
<%@attribute name="showLabel" required="true" type="java.lang.Boolean"%>
<%@attribute name="mask" required="false" type="java.lang.Boolean" %>
<%@attribute name="format" required="false" %>
<%@attribute name="showFormat" required="false" %>
<%@attribute name="ngmodel" required="true" %>
<%@attribute name="code" required="false" %>

<c:if test="${empty showFormat}">
    <c:set var="showFormat" value="true"/>
</c:if>

<c:if test="${!empty code}">
    <c:set var="code" value="${code}"/>
</c:if>

<c:if test="${showLabel}">	
   	<label><s:message code="${code}"/></label>
</c:if>
   	
<input type="text" id="${id}" class="span10" ng-model="${ngmodel}"/>

<c:if test="${showFormat}">
    (<s:message code='${format}'/>)
</c:if>

<c:if test="${empty mask}">
    <c:set var="mask" value="99/99/9999"/>
</c:if>

<script type="text/javascript">
    var pickerOpts = {
        changeMonth: true,
        changeYear: true,
        showButtonPanel: false,
        showOn: 'both',
        buttonImage: "/web/imgs/calendar.gif",
        buttonImageOnly: true
    };

    $(function() {
        //create the date picker
        $("#${id}").mask("${mask}");
        $("#${id}").datepicker(pickerOpts);       
    });  
</script>

<%@ tag language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" dynamic-attributes="args" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="h" tagdir="/WEB-INF/tags/html" %>
<%@attribute name="id" required="true" %>
<%@attribute name="path" required="true" %>
<%@attribute name="label" required="false" %>
<%@attribute name="required" required="false" %>
<%@attribute name="mask" required="false" type="java.lang.Boolean" %>
<%@attribute name="format" required="false" %>
<%@attribute name="showFormat" required="false" %>

<c:if test="${empty required}">
    <c:set var="required" value="false"/>
</c:if>

<c:if test="${empty showFormat}">
    <c:set var="showFormat" value="true"/>
</c:if>

<c:if test="${empty format}">
    <c:set var="format" value="date_format"/>
</c:if>

<c:if test="${!empty label}">
    <h:label id="${id}" code="${label}" path="${path}" required="${required}"/>
</c:if>
   	
<f:input id="${id}" path="${path}" cssClass="span10"/>
<f:errors path="${path}" cssClass="formErrorMessage"/>
<c:if test="${showFormat}">
	(<s:message code='${format}'/>)
</c:if>

<c:if test="${empty mask}">
    <c:set var="mask" value="9999"/>
</c:if>

<script type="text/javascript">
      var picker = {
    	  changeYear: true,
          showOn: "button",
          buttonImageOnly: true,
          dateFormat: 'yyyy',
          buttonImage: "../imgs/calendar.gif",
          showButtonPanel: true,
          dateFormat: 'yy',
          onClose: function(dateText, inst) { 
	          var year = $("#ui-datepicker-div .ui-datepicker-year :selected").val();
              $(this).datepicker('setDate', new Date(year, 1));
          }       
    };  

    $(function() {
        //create the date picker
        $("#${id}").mask("${mask}");
    });
</script>
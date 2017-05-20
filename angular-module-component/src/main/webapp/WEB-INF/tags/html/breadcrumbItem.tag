<%@ tag language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" dynamic-attributes="args" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="h" tagdir="/WEB-INF/tags/html" %>
<%@attribute name="atual" required="true" type="java.lang.Boolean"%>
<%@attribute name="url" required="true" %>
<%@attribute name="code" required="false" %>
<%@attribute name="text" required="false" %>

<c:url value="${url}" var="link"/>

<c:set var="text">
	<s:message code="${code}" text="${text}" />
</c:set>

<c:choose>
	<c:when test="${atual}">
		<li class="active">${text}</li>
	</c:when>
	<c:otherwise>
		<li>
			<a href="${link}">${text}</a>
			<span class="divider">&raquo;</span>
		</li>
	</c:otherwise>
</c:choose>

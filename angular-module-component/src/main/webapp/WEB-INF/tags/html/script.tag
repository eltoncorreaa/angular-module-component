<%@ tag language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" dynamic-attributes="args"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@attribute name="src" required="true" %>
<%@attribute name="type" required="false" %>

<c:url value="${src}" var="path"/>

<script src="${path}" type="${type}"></script>
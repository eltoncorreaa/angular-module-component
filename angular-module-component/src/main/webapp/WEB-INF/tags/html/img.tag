<%@ tag language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" dynamic-attributes="args"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@attribute name="src" required="true" %>
<c:url value="${src}" var="source"/>
<img src="${source}" <c:forEach items="${args}" var="item">${item.key}="${item.value}"</c:forEach> />
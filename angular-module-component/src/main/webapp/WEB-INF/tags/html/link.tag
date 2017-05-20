<%@ tag language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" dynamic-attributes="args"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@attribute name="href" required="true" %>
<%@attribute name="type" required="false" %>
<%@attribute name="rel" required="false" %>
<c:url value="${href}" var="link"/>
<link href="${link}" type="${type}" rel="${rel}" <c:forEach items="${args}" var="item">${item.key}="${item.value}" </c:forEach>/>
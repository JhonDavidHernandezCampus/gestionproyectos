<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>   
<%@ include file="./WEB-INF/jspf/conexion.jspf" %>

<c:set var="id" value="${param.id}"/>

<sql:update var="eliminar" dataSource="${crudjstl}">
    DELETE FROM profesor WHERE cedula = ?
    <sql:param value="${id}" />
</sql:update>

<c:choose>
    <c:when test="${eliminar >= 0}">
        <c:set var="accion" value="true" />
    </c:when>
    <c:otherwise>
        <c:set var="accion" value="false" />
    </c:otherwise>
</c:choose>

<c:redirect url="index.jsp?action=${accion}" />

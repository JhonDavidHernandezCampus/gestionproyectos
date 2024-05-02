<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>   
<%@ include file="./../WEB-INF/jspf/conexion.jspf" %>

<c:set var="query" value="${param.query}" />

<sql:query var="estudiantesEncontrados" dataSource="${gestion_proyectos}">
    SELECT id_usu
    FROM usuario
    WHERE id_usu = ? OR nombres_usu LIKE '%'?'%' AND rol_usu = 'estudiante'
    <sql:param value="${query}" />
    <sql:param value="${query}" />
</sql:query>

<c:choose>
    <c:when test="${not empty estudiantesEncontrados.rows}">
        <c:forEach var="estudiante" items="${estudiantesEncontrados.rows}">
            <c:redirect url="proyecto-estudiante.jsp?id=${estudiante.id_usu}" />
        </c:forEach>
    </c:when>
    <c:otherwise>
        <c:redirect url="proyecto-estudiante.jsp?action=false" />
    </c:otherwise>
</c:choose>

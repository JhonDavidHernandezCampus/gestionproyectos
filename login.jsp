<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>   
<%@ include file="./WEB-INF/jspf/conexion.jspf" %>


<c:set var="contrasena" value="${param.idPassword}" />
<c:set var="usuario" value="${param.usuario}" />    

<sql:query var="usuarioValido" dataSource="${gestion_proyectos}">
    SELECT id_usu, rol_usu
    FROM usuario 
    WHERE contrasena_usu = ? AND email_usu = ?
    <sql:param value="${contrasena}" />
    <sql:param value="${usuario}" />
</sql:query>

<c:if test="${usuarioValido.rowCount > 0}">
    <c:set var="rolUsuario" value="${usuarioValido.rows[0].rol_usu}" />
    
    <c:choose>
        <c:when test="${rolUsuario == 'admin'}">
            <c:redirect url="/admin/index.jsp" />
        </c:when>
        <c:when test="${rolUsuario == 'coordinador'}">
            <c:redirect url="/coordinador/index.jsp" />
        </c:when>
        <c:when test="${rolUsuario == 'estudiante'}">
            <c:redirect url="/estudiante/index.jsp" />
        </c:when>
        <c:when test="${rolUsuario == 'director'}">
            <c:redirect url="/director/index.jsp" />
        </c:when>
        <c:when test="${rolUsuario == 'evaluador'}">
            <c:redirect url="/evaluador/index.jsp" />
        </c:when>
        <c:otherwise>
            <c:redirect url="index.jsp?error=rolDesconocido" />
        </c:otherwise>
    </c:choose>
</c:if>

<c:if test="${usuarioValido.rowCount == 0}">
    <c:redirect url="index.jsp?error=true" />
</c:if>
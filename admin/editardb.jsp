<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>   
<%@ include file="./../WEB-INF/jspf/conexion.jspf" %>

<c:set var="nombres" value="${param.nombre}" />
<c:set var="idUsu" value="${param.idUsu}" />
<c:set var="apellidos" value="${param.apellido}" />
<c:set var="direccion" value="${param.direccion}" />
<c:set var="telefono" value="${param.telefono}" />
<c:set var="email" value="${param.email}" />
<c:set var="contrasena" value="${param.contrasena}" />
<c:set var="rol" value="${param.rol}" />


<sql:update dataSource="${gestion_proyectos}">
    UPDATE usuario SET contrasena_usu=?, nombres_usu=?, apellidos_usu=?, direccion_usu=?, telefono_usu=?, email_usu=?, rol_usu=? WHERE id_usu = ? 
    <sql:param value="${contrasena}" />
    <sql:param value="${nombres}" />
    <sql:param value="${apellidos}" />
    <sql:param value="${direccion}" />
    <sql:param value="${telefono}" />
    <sql:param value="${email}" />
    <sql:param value="${rol}" />
    <sql:param value="${idUsu}" />
</sql:update>


 <c:set var="destination" value="${param.destinatination}" />
    <c:choose>
        <c:when test="${destination == 'coordinador'}">
            <c:redirect url="gestionar-coordinador.jsp?action=true?" />
        </c:when>
        <c:when test="${destination == 'director'}">
            <c:redirect url="gestionar-director.jsp?action=true" />
        </c:when>
        <c:when test="${destination == 'estudiante'}">
            <c:redirect url="gestionar-estudiante.jsp?action=true" />
        </c:when>
        <c:when test="${destination == 'evaluador'}">
            <c:redirect url="gestionar-evaluador.jsp?action=true" />
        </c:when>
        <c:otherwise>
            <c:redirect url="index.jsp?error=rolDesconocido" />
        </c:otherwise>
    </c:choose>
<c:redirect url="gestionar-estudiante.jsp?action=true" />

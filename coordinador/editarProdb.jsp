<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>   
<%@ include file="./../WEB-INF/jspf/conexion.jspf" %>

<c:set var="titulo" value="${param.titulo}" />
<c:set var="descripcion" value="${param.descripcion}" />
<c:set var="coordinador" value="${param.coordinador}" />
<c:set var="estudiante" value="${param.estudiante}" />
<c:set var="director" value="${param.director}" />
<c:set var="evaluador" value="${param.evaluador}" />
<c:set var="id" value="${param.id}" />

<sql:update dataSource="${gestion_proyectos}">
    UPDATE Proyecto 
    SET titulo_pro = ?, 
        descripcion_pro = ?, 
        id_coordinador = ?, 
        id_estudiante = ?, 
        id_director = ?, 
        id_evaluador = ?
    WHERE id_pro = ?
    <sql:param value="${titulo}" />
    <sql:param value="${descripcion}" />
    <sql:param value="${coordinador}" />
    <sql:param value="${estudiante}" />
    <sql:param value="${director}" />
    <sql:param value="${evaluador}" />
    <sql:param value="${id}" />
</sql:update>

<c:redirect url="estados-proyectos.jsp?action=true" />

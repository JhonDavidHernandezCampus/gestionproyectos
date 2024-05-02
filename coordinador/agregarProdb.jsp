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

<c:out  value="${param.evaluador}" />
<c:out  value="${param.evaluador == ''}" />
<c:out  value="${param.titulo == ''}" />




<sql:update dataSource="${gestion_proyectos}">
    INSERT INTO Proyecto (titulo_pro, descripcion_pro, id_coordinador, estado_coordinador, id_estudiante, estado_estudiante, id_director, estado_director, id_evaluador, estado_evaluador)
    VALUES (?, ?, ?, 'pendiente', ?, 'pendiente', ?, 'pendiente', ?, 'pendiente')
    <sql:param value="${titulo}" />
    <sql:param value="${descripcion}" />
    <sql:param value="${coordinador  == '' ? null : coordinador}" />
    <sql:param value="${estudiante == '' ? null : estudiante}" />
    <sql:param value="${director == '' ? null : director}" />
    <sql:param value="${evaluador == '' ? null : evaluador}" />
</sql:update>

<c:redirect url="estados-proyectos.jsp?action=true" />

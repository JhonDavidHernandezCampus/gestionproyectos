<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>   
<%@ include file="./../WEB-INF/jspf/conexion.jspf" %>

<c:set var="id" value="${param.id}" />

<sql:update dataSource="${gestion_proyectos}">
    DELETE FROM Proyecto 
    WHERE id_pro = ?
    <sql:param value="${id}" />
</sql:update>

<c:redirect url="estados-proyectos.jsp?action=true" />

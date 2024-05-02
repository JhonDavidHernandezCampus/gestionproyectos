<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>   
<%@ include file="./WEB-INF/jspf/conexion.jspf" %>

<c:set var="cedula" value="${param.cedula}"/>
<c:set var="nombre" value="${param.nombre}"/>
<c:set var="area" value="${param.area}"/>
<c:set var="telefono" value="${param.telefono}"/>
<c:set var="id_categoria" value="${param.id_categoria}"/>

<sql:update var="actualizar" dataSource="${crudjstl}">
    UPDATE profesor SET nombre=?, area=?, telefono=?, id_categoria=? WHERE cedula=?
    <sql:param value="${nombre}" />
    <sql:param value="${area}" />
    <sql:param value="${telefono}" />
    <sql:param value="${id_categoria}" />
    <sql:param value="${cedula}" />
</sql:update>

<c:choose>
    <c:when test="${actualizar >= 0}">
        <c:set var="accion" value="true" />
    </c:when>
    <c:otherwise>
        <c:set var="accion" value="false" />
    </c:otherwise>
</c:choose>

<c:redirect url="index.jsp?action=${accion}" />

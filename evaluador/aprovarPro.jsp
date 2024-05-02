<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>   
<%@ include file="./../WEB-INF/jspf/conexion.jspf" %>

<c:set var="idProyecto" value="${param.id}" />
<c:set var="estadoAprobado" value="aprobado" />

<sql:update dataSource="${gestion_proyectos}">
    UPDATE Proyecto
    SET estado_evaluador = ?
    WHERE id_pro = ?
    <sql:param value="${estadoAprobado}" />
    <sql:param value="${idProyecto}" />
</sql:update>

<c:choose>
    <c:when test="${pageContext.request.queryString != null}">
        <c:redirect url="./aprovar-proyecto.jsp?action=true" />
    </c:when>
    <c:otherwise>
        <c:redirect url="./aprovar-proyecto.jsp?action=false" />
    </c:otherwise>
</c:choose>

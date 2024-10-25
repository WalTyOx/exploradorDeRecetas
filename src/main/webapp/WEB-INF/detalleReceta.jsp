<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Detalle de la Receta</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/estilos.css'/>">
</head>
<body>
    <h1>Detalle de la Receta</h1>
    <c:choose>
        <c:when test="${not empty receta}">
            <h2>Receta: ${receta}</h2>
            <ul>
                <c:forEach var="ingrediente" items="${ingredientes}">
                    <li>${ingrediente}</li>
                </c:forEach>
            </ul>
        </c:when>
        <c:otherwise>
            <p>${mensaje}</p>
        </c:otherwise>
    </c:choose>
</body>
</html>
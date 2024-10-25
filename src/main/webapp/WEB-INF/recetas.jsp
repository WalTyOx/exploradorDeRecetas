<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Lista de Recetas</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/estilos.css'/>">
</head>
<body>
    <h1>Lista de recetas</h1>
    <ul>
        <c:forEach var="receta" items="${listaRecetas}">
            <li><a href="<c:url value='/recetas/'/>${receta}">${receta}</a></li>
        </c:forEach>
    </ul>
</body>
</html>
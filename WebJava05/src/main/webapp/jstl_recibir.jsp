<%-- 
    Document   : jstl_recibir
    Created on : 18/04/2023, 09:05:10 AM
    Author     : andga
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" 
              href="webjars/bootstrap/5.1.0/css/bootstrap.min.css" type="text/css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container mt-5">
            <div style="width: 450px; text-align: center; margin: 50px auto;">
            <h1>Tabla de Multiplicar</h1>
            Tabla del <c:out value="${tabla}"/>
            <br>
            <ul class="list-group">
                <c:forEach var="contador" begin="1" end="10">
                    <c:set var="producto" value="${contador*tabla}"/>
                    <li class="list-group-item">
                        <c:out value="${contador} x ${tabla} = ${producto}"/>
                    </li>
                </c:forEach>
            </ul>
            <a class="btn btn-primary btn-lg" href="/WebJava05/jstl_enviar.jsp" role="button">Volver</a>
            </div>
        </div>
    </body>

</html>

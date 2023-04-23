<%-- 
    Document   : jstl_sql_a
    Created on : 18/04/2023, 09:23:03 AM
    Author     : andga
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
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
    <sql:setDataSource var="xcon" driver="com.mysql.cj.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/test?useSSL=false&serverTimezone=UTC"
                           user="root"
                           password="123456"/>

    <sql:query dataSource="${xcon}"
               sql="select * from t_usuarios"
               var="result"/>

    <div style="width: 450px; text-align: center; margin: 50px auto;">
         <h1 class="display-8">Listado de Usuarios</h1>
        <table class="table table-striped">
            <thead>
                <tr>
                <th scope="col">Codigo</th>
                <th scope="col">Nombre</th>
                <th scope="col">Clave</th>
                <th scope="col">Estado</th>
                <th scope="col"> </th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="row" items="${result.rows}">
                <tr>
                <th scope="row"><c:out value="${row.codigo}"/></th>
                <td><c:out value="${row.nombre}"/></td>
                <td><c:out value="${row.clave}"/></td>
                <td><c:out value="${row.estado}"/></td>
                <td nowrap>
                                <a class="btn btn-primary" href="Editar.jsp?codigo=<c:out value='${row.codigo}'/>">Editar</a>

                                <a class="btn btn-danger" href="Constroladorsql?accion=eliminar&codigo=<c:out value='${row.codigo}'/>">
                                    Eliminar
                                </a>

                            </td>
                </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    </body>

</html>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="webjars/bootstrap/5.1.0/css/bootstrap.min.css" type="text/css" />
    </head>
    <body>
    <sql:setDataSource var="xcon" driver="com.mysql.cj.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/test?useSSL=false&serverTimezone=UTC"
                           user="root"
                           password="123456"/>

    <sql:query dataSource="${xcon}"
               sql="select * from t_usuarios where codigo = ${param.codigo}"
               var="result"/>

    <div style="width: 800px; text-align: center; margin: 50px auto;">
        <h1 class="display-8">Editar Usuario</h1>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">Codigo</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Clave</th>
                    <th scope="col">Estado</th>
                    <th scope="col"></th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="row" items="${result.rows}">
                    <tr>
                        <form method="post" action="/WebJava05/Constroladorsql">
                            <input type="hidden" name="codigo" value="<c:out value="${row.codigo}"/>">
                            <td><c:out value="${row.codigo}"/></td>
                            <td><input type="text" name="nombre" value="<c:out value="${row.nombre}"/>"></td>
                            <td><input type="text" name="clave" value="<c:out value="${row.clave}"/>"></td>
                            <td>
                                <select name="estado">
                                    <option value="A" <c:if test="${row.estado eq 'A'}">selected</c:if>>Activo</option>
                                    <option value="X" <c:if test="${row.estado eq 'X'}">selected</c:if>>Inactivo</option>
                                </select>
                            </td>
                            <td nowrap>
                                <button type="submit" class="btn btn-primary">Guardar</button>
                            </td>
                        </form>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>

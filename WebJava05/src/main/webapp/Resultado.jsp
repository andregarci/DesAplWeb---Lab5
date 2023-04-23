<%-- 
    Document   : Resultado
    Created on : 22/04/2023, 09:34:23 PM
    Author     : andga
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Resultado de la operación</title>
        <link rel="stylesheet" 
              href="webjars/bootstrap/5.1.0/css/bootstrap.min.css" type="text/css" />

    </head>
    <body>
    <div class="container">
        <div class="row mt-3">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h1 class="text-center">Resultado de la operación:</h1>
                    </div>
                    <div class="card-body">
                        <h2 class="text-center">Operación: ${num1} ${simbolo} ${num2} = ${resultado}</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>

<%-- 
    Document   : FormOperaciones
    Created on : 18/04/2023, 09:53:15 AM
    Author     : andga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="webjars/bootstrap/5.1.0/css/bootstrap.min.css" type="text/css" />

    </head>
    <body>
        <div class="container mt-5">
            <form name="form" action="/WebJava05/Controlador">
                <div style="width: 250px; text-align: center; margin: 50px auto;">
                    <h1>Calculadora de Numeros</h1>
                    <div class="mb-3">
                        <label  class="form-label">Numero 1</label>
                        <input type="text" name="num1" class="form-control" aria-describedby="emailHelp">
                    </div>
                    <div class="mb-3">
                        <label  class="form-label">Numero 2</label>
                        <input type="text" name="num2" class="form-control"  aria-describedby="emailHelp">
                    </div>

                    <div class="mb-3">

                        <div class="form-group">
                            <label >Seleccione la opcion a generar :</label>
                            <select name="operacion" class="form-control" >
                                <option>+</option>
                                <option>-</option>
                                <option>*</option>
                                <option>/</option>
                            </select>
                        </div>
                    </div>
                    <div class="mb-3">
                        <button type="submit" class="btn btn-primary">Enviar</button>
                    </div>
            </form>
        </div>
    </body>
</html>

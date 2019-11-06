<%-- 
    Document   : ApplicationView
    Created on : 6 nov. 2019, 13:17:12
    Author     : pedago
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Edition des taux de remise</h1>
        <div>
            <label for="code">Code :</label> <input type="text" id="code" name="code">
        </div>
        <div>
            <label for="taux">Taux :</label> <input type="number" id="taux" name="howmuch" placeholder="0" step="0.01" min="0" max="100">
        </div>
        <input type="button" value="Ajouter">
        <br>

        <table border=2>
            <tr> <th>Code</th> <th>Taux</th> <th>Action</th> </tr>
            
            <c:forEach var="discount" items="${selectedCode}">
                <tr> <td>${discount.code}</td> <td>${discount.taux}</td> <td><input type="button" value="DELETE"></td> </tr>
            </c:forEach>
        </table>

    </body>
</html>

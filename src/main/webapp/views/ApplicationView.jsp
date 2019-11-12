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
        <form method='GET'>
            <h1>Edition des taux de remise</h1>
            <div>
                <label for="code">Code :</label> <input type="text" name="code">
            </div>
            <div>
                <label for="taux">Taux :</label> <input type="number" name="taux" placeholder="0" step="0.01" min="0" max="100">
            </div>
            <input type="hidden" name="action" value="ADD">
            <input type="submit" value="Ajouter">
        </form>


        <table border=2 method="get">
            <tr> <th>Code</th> <th>Taux</th> <th>Action</th> </tr>

            <c:forEach var="discount" items="${selectedCode}">
                <form>
                    <tr> 
                        <td><input type="text" name="code" value="${discount.code}" readonly></td>
                        <td><input type="text" name="taux" value="${discount.taux}"></td> 
                        <td><input type="submit" name=action value="DELETE"></td> 
                    </tr>
                </form>
            </c:forEach>
        </table>

    </body>
</html>

<%-- 
    Document   : ViewProperty
    Created on : Jul 28, 2020, 9:54:06 AM
    Author     : uldin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Property</title>
        <style>
            body{
                text-align: center;
                font-family: cursive;
                font-size: 1.5em;
            }
            h1{
                text-decoration: underline;
            }
            table{
                margin-left: auto;
                margin-right: auto;
            }
        </style>
    </head>
    <body>
        <jsp:useBean id="prop" scope="page" class="my.bean.classes.PropertyBean" />
        <%--
        <jsp:setProperty name="prop" property="id" value="1" />
        <jsp:setProperty name="prop" property="type" value="Land" />
        <jsp:setProperty name="prop" property="location" value="Maharagama" />
        <jsp:setProperty name="prop" property="owner" value="Sumith" />
        --%>
        <jsp:setProperty name="prop" property="id" value='<%=request.getParameter("id")%>' />
        <jsp:setProperty name="prop" property="type" value='<%=request.getParameter("type")%>' />
        <jsp:setProperty name="prop" property="location" value='<%=request.getParameter("location")%>' />
        <jsp:setProperty name="prop" property="owner" value='<%=request.getParameter("owner")%>' />
        <h1>Property Information</h1>
        <table border="2">
            <tr>
                <td>
                    <h2>Property ID: <jsp:getProperty name="prop" property="id" /></h2>
                    <h2>Owner: <jsp:getProperty name="prop" property="owner" /></h2>
                    <h2>Location: <jsp:getProperty name="prop" property="location" /></h2>
                    <h2>Type: <jsp:getProperty name="prop" property="type" /></h2>
                </td>
            </tr>
        </table>
    </body>
</html>

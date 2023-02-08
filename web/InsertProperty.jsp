<%-- 
    Document   : Property
    Created on : Jul 28, 2020, 11:35:39 AM
    Author     : uldin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Property</title>
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
        <jsp:setProperty name="prop" property="id"/>
        <jsp:setProperty name="prop" property="type"/>
        <jsp:setProperty name="prop" property="location"/>
        <jsp:setProperty name="prop" property="owner"/>
        <h1>Property Information</h1>
        <table border="2">
            <tr>
                <td>
                    <h2>
                        <%
                            int a = prop.connectDB();
                            if(a==1){
                                out.print("Property Information Inserted!");
                            }else{
                                out.print("Unsucessfull!");
                            }
                        %>
                        <%@include file="index.html" %>
                    </h2>
                </td>
            </tr>
        </table>
    </body>
</html>

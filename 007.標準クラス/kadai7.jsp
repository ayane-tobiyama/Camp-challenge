<%-- 
    Document   : kadai7
    Created on : 2016/12/09, 15:43:46
    Author     : ayanet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*,java.text.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>課題７</h1>
        <%
            String s = "きょUはぴIえIちぴIのくみこみかんすUのがくしゅUをしてIます";
            out.print(s.replace("I","い").replace("U","う"));
        %>
    </body>
</html>

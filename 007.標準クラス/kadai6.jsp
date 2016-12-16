<%-- 
    Document   : kadai6
    Created on : 2016/12/09, 15:35:22
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
        <h1>課題６</h1>
        <%
            String mail = "ree.go.pef@gmail.com";
            int x = mail.indexOf("@");
            out.print(mail.substring(x));
        %>
    </body>
</html>

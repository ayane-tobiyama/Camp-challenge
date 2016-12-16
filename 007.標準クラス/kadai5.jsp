<%-- 
    Document   : kadai5
    Created on : 2016/12/09, 15:20:44
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
        <h1>課題５</h1>
        <%
            out.print("飛山文音".getBytes("UTF-8").length);
            out.print("<br>");
            out.print("飛山文音".length());
        %>
    </body>
</html>

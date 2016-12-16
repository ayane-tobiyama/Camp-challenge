<%-- 
    Document   : kadai8
    Created on : 2016/12/09, 15:55:16
    Author     : ayanet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
        import="java.util.*,java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>課題８</h1>
        <%
            FileWriter fw = new FileWriter("/Users/ayanet/Documents/NetBeansProjects/Javaprograming/web/sample.txt");
            fw.write("よろしくおねがいします");
            fw.flush();
            fw.close();
        %>
    </body>
</html>

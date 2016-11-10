<%-- 
    Document   : kadai4
    Created on : 2016/11/10, 17:45:43
    Author     : ayanet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    int h;
    final int t;
    h = 10;
    t = 30;
    out.println("足し算：h+t=" + (h+t) + "<br>");
    out.println("引き算：h-t=" + (h-t) + ",t-h=" + (t-h) + "<br>");
    out.println("掛け算：h×t=" + (h*t) + "<br>");
    out.println("割り算：h÷t=" + (h/t) + ",t÷h=" + (t/h) + "<br>");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    </body>
</html>

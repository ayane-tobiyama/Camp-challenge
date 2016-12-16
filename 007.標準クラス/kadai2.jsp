<%-- 
    Document   : kadai2
    Created on : 2016/11/28, 21:38:00
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
        <h1>課題２</h1>
    </body>
</html>

<%
    Date date = new Date();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日HH時mm分ss秒");
    String sdate = sdf.format(date);
    out.print(sdate);

%>

<%-- 
    Document   : kadai3
    Created on : 2016/11/28, 21:47:07
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
        <h1>課題３</h1>
    </body>
</html>
<%
    Calendar cal = Calendar.getInstance();
    cal.set(2016,10,4,10,0,0);
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日HH時mm分ss秒");
    out.print(sdf.format(cal.getTime()));
%>
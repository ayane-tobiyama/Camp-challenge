<%-- 
    Document   : kadai4
    Created on : 2016/12/09, 14:48:20
    Author     : ayanet
--%>

<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*,java.text.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>課題４</h1>
    
<%
    Calendar cal1 = Calendar.getInstance();
    Calendar cal2 = Calendar.getInstance();
    cal1.set(2016,0,1,0,0,0);
    cal2.set(2016,11,31,23,59,59);
    long x = cal2.getTime().getTime() - cal1.getTime().getTime();
    out.print(x + "ミリ秒");
    Date date = new Date(x);
    out.print("<br>");
    out.print(date.getTime()/(1000*60*60*24) + "日");//日数
%>
    </body>
</html>
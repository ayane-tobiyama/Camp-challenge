<%-- 
    Document   : kadai1
    Created on : 2016/11/28, 0:01:33
    Author     : ayanet
--%>
<%@ page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>課題１</h1>
    
    </body>
</html>

<%
    Calendar cal = Calendar.getInstance();
    cal.set(2016,0,1,0,0,0);
    out.print(cal.getTime().getTime());
%>

<%-- 
    Document   : kadai1
    Created on : 2016/11/10, 20:37:42
    Author     : ayanet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%
    int num = 2;
    String mes = "";
    switch(num){
        case 1:
            mes = "one";
            break;
        case 2:
            mes = "two";
            break;
        default:
            mes = "想定外";
            break;      
    }
    out.print(mes);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    </body>
</html>

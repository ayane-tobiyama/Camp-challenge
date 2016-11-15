<%-- 
    Document   : kadai3
    Created on : 2016/11/15, 13:31:00
    Author     : ayanet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    int i;
    long k=1;//int型では足りなかったのでlong型
    
    for(i=0;i<20;i++){
        k=k*8;
    }
    out.print(k);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    </body>
</html>

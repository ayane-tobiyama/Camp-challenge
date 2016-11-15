<%-- 
    Document   : kadai4
    Created on : 2016/11/15, 15:10:19
    Author     : ayanet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    int i;
    String k="";//int型では足りなかったのでlong型
    
    for(i=0;i<30;i++){
        k=k+"A";
    }
    out.print(k);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>眠い</h1>
    </body>
</html>

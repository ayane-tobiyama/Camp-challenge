<%-- 
    Document   : kadai5
    Created on : 2016/11/15, 16:29:42
    Author     : ayanet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    int i,n=0;
  
    for(i=1;i<=100;i++){
        n=n+i;
    }
    out.print("合計は：" + n);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>眠い!</h1>
    </body>
</html>

<%-- 
    Document   : kadai7
    Created on : 2016/11/15, 16:39:20
    Author     : ayanet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<%    
    ArrayList<String> al = new ArrayList<String>();
            
    al.add("10");
    al.add("100");
    al.add("soeda");
    al.add("hayassi");
    al.add("-20");
    al.add("118");
    al.add("END");

    for(int i=0;i<7;i++){
         out.print(al.get(i) + "<br>");
    }
  
%>





<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>

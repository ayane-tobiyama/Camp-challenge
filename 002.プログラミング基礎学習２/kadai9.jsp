<%-- 
    Document   : kadai9
    Created on : 2016/11/15, 17:01:05
    Author     : ayanet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.HashMap"%>
<%
    HashMap<String,String> rh = new HashMap<String,String>();
    
    String a[]={"1","hello","soeda","20"};
    
    rh.put("1","AAA");
    rh.put("hello","world");
    rh.put("soeda","33");
    rh.put("20","20");
    
    for(int i=0;i<rh.size();i++){
        out.print(a[i] + "　→　" + rh.get(a[i]) + "<br>");
    }
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

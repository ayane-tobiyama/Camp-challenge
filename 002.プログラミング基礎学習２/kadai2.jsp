<%-- 
    Document   : kadai2
    Created on : 2016/11/13, 0:16:05
    Author     : ayanet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>

<%//バージョンのせいでswich文ではコンパイルできませんでした
    String num = "A";
    String mes = "";
    if(num=="A"){
            mes = "英語";
    }else if(num=="あ"){
            mes = "日本語";
    }else{
            mes = "";      
    }
    out.print(mes);
%>



<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

    </body>
</html>

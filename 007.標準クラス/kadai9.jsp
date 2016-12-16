<%-- 
    Document   : kadai9
    Created on : 2016/12/09, 16:50:22
    Author     : ayanet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
        import="java.util.*,java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>課題９</h1>
        <%
            FileReader fr = new FileReader("/Users/ayanet/Documents/NetBeansProjects/Javaprograming/web/sample.txt");
            BufferedReader br = new BufferedReader(fr);
            out.print(br.readLine());//一行読み込み
            br.close();
        %>
    </body>
</html>

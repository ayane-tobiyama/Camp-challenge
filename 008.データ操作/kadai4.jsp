<%-- 
    Document   : kadai4
    Created on : 2016/12/09, 19:35:51
    Author     : ayanet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
        import = "javax.servlet.http.HttpSession,java.util.Date"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>

        <%
            HttpSession hs = request.getSession(true);
            out.print("最後のログインは、"+hs.getAttribute("LastLogin"));
        %>
        
        <%
            Date time = new Date();     
            hs.setAttribute("LastLogin", time.toString());
            //hs.removeAttribute("LastLogin");
        %>        
        
    </body>
</html>

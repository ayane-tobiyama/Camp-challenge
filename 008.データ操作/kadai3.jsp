<%-- 
    Document   : kadai3
    Created on : 2016/12/09, 18:55:26
    Author     : ayanet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
        import="javax.servlet.http.Cookie,java.util.Date"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>課題３</h1>
           
        <%
            String date = "";
            Cookie cs[] = request.getCookies();
            if(cs!=null){
                for(int i=0;i<cs.length;i++){

                    if(cs[i].getName().equals("LastLogin")){
                    date = cs[i].getValue();
                    break;
                    }

                }
                out.print(date + "<br>");
            }else{
                out.print("クッキーがありませんでした");
            }
        %>
        <%
            Date time = new Date();
            Cookie c = new Cookie("LastLogin", time.toString());
            response.addCookie(c);//クッキーにcを保存
        %>
    </body>
</html>

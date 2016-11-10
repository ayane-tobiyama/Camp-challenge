<%-- 
    Document   : newjsp
    Created on : 2016/11/10, 18:36:07
    Author     : ayanet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        param1は総額<br>
        param2は個数<br>
        param3は商品種別（１：雑貨、２：生鮮食品、３：その他）<br>
    </body>
    
    <%
        String hensu1 = request.getParameter("param1");
        String hensu2 = request.getParameter("param2");
        String hensu3 = request.getParameter("param3");

        if(hensu3.equals("1")){
            out.print("雑貨" + "<br>");
        }else if(hensu3.equals("2")){
            out.print("生鮮食品" + "<br>");
        }else if(hensu3.equals("3")){
            out.print("その他" + "<br>");
        }
        int i = Integer.parseInt(hensu1);
        int j = Integer.parseInt(hensu2);
        out.print("総額：" + i + "<br>" + "１個当たりの値段：" + (i/j) + "<br>");
        
        int p;
        
        if(i>=5000){
            p = i*5/100;
        }else if(i>=3000){
            p = i*4/100;
        }else{
            p=0;
        }
        out.print("ポイント：" + p);
    %>
</html>
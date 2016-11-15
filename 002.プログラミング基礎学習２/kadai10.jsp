<%-- 
    Document   : kadai10
    Created on : 2016/11/15, 17:46:35
    Author     : ayanet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>今日の演習（応用編）</h1>
        リクエストリング：paramに数値を入力してくだい<br>
        <br>
    </body>
</html>

    <%
        
        String hensu  = request.getParameter("param");
        int n = Integer.parseInt(hensu);
        int s[] = {2,3,5,7};//一桁の素因数
        int t[] = new int[100];//乗数
        int i,k=0;
        
        out.print(hensu + " = ( ");
        
        for(i=0;i<s.length;i++){
            if(n%s[i]==0){k+=1;}            
            while(n%s[i]==0){
                    n=n/s[i];
                    t[i]+=1;
            }
            if(t[i]!=0){
                if(k>=2){out.print(" + ");}
                out.print(s[i] + " × " + t[i]);
                }
            }
        if(n!=0){
            out.print(" ) × " + n);
        }
        
    %>
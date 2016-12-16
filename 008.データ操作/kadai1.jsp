<%-- 
    Document   : kadai1
    Created on : 2016/12/09, 17:23:34
    Author     : ayanet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">      
        <title>データ操作</title>
    </head>
  <body>
    <form action="./kadai2" method="get">
      名前 <input type="text" name="txtName"><br>
      性別 
      男<input type="radio" name="rdoSample" value="1">
      女<input type="radio" name="rdoSample" value="2">
      <br>
      趣味<textarea name="mulText"></textarea>
      <br>   
      <input type="submit" value ="確定">
    </form>
 
      
  </body>
</html>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title></title>
    <style media="screen">
      #content {
        margin: auto;
        margin-top: 150px;
        width: 500px;
        height: 250px;
        border: 1px solid gray;
      }
      #form {
        margin-left: 150px;
      }
    </style>
  </head>
  <body>
    <div id="content">
      <div id="form">
        <form action="dologin.jsp" method="post">
          <br /><br /><br />
          用户名：<input type="text" name="user" value=""><br /><br /><br />
          密&nbsp;&nbsp;&nbsp;&nbsp;码：<input type="password" name="password" value="" style="width: 150px;"><br /><br /><br />
          <input type="submit" name="submit" value="登陆" style="margin-left: 170px;">
        </form>
      </div>
    </div>
  </body>
</html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="test.*"  %>
<% 
    request.setCharacterEncoding("utf-8"); 
    Boolean flag=false;
    String user = request.getParameter("user");
    String password=request.getParameter("password");
    flag=new client.mytest().login("select * from admin where user = '"+user+"' and password = '"+password+"'");
    if(flag){
%>
<script type="text/javascript">
    alert("登陆成功!");
    location = "index.jsp"; 
</script>
<% 
    }else{
%>
<script type="text/javascript">
    alert("登陆失败!");
    location = "login.jsp"; 
</script>
<% 
    }
%>

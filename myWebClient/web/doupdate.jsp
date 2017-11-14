<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="test.*"%>
<% 
    request.setCharacterEncoding("utf-8"); 
    Boolean flag=false;
    String id = request.getParameter("id");
    String name=request.getParameter("name");
    String sex=request.getParameter("sex");
    String age = request.getParameter("age");
    String idcard=request.getParameter("idcard");
    String address=request.getParameter("address");
    if(id!=null&&!"".equals(id)){
    flag=new client.mytest().update("update information set name='"+name+"',sex='"+sex+"',age="+age+",idcard='"+idcard+"',address='"+address+"' where id="+id); }
    if(flag){
%>
<script type="text/javascript">
    alert("更新成功!");
    location = "index.jsp"; 
</script>
<% 
    }else{
%>
<script type="text/javascript">
    alert("更新失败!");
    location = "index.jsp"; 
</script>
<%
    }
%>
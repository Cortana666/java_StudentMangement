<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="test.*"%>
<% request.setCharacterEncoding("utf-8"); Boolean flag=false;
    String id = request.getParameter("id");
    String name=request.getParameter("name");
    String sex=request.getParameter("sex");
    String age = request.getParameter("age");
    String idcard=request.getParameter("idcard");
    String address=request.getParameter("address");
    if(id!=null&&!"".equals(id)){
//    out.println("insert into information(id,name,sex,age,idcard,address) values("+id+",'"+name+"','"+sex+"',"+age+",'"+idcard+"','"+address+"')");
    flag=new client.mytest().add("insert into information(id,name,sex,age,idcard,address) values("+id+",'"+name+"','"+sex+"',"+age+",'"+idcard+"','"+address+"')"); }
    if(flag){
%>
<script type="text/javascript">
    alert("添加成功!");
    location = "index.jsp"; 
</script>
<% 
    }else{
%>
<script type="text/javascript">
    alert("添加失败!");
    location = "index.jsp"; 
</script>
<%
    }
%>
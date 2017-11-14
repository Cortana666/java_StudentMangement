<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="test.*"%>
<% 
    request.setCharacterEncoding("utf-8"); 
    Boolean flag=false;
    String id = request.getParameter("id");
    String php=request.getParameter("php");
    String java = request.getParameter("java");
    String asp=request.getParameter("asp");
    if(id!=null&&!"".equals(id)){
    flag=new client.mytest().updategrade("update grade set php='"+php+"',java='"+java+"',asp='"+asp+"' where gid="+id); }
    if(flag){
%>
<script type="text/javascript">
    alert("更新成功!");
    location = "grade.jsp?id=<%=id%>"; 
</script>
<% 
    }else{
%>
<script type="text/javascript">
    alert("更新失败!");
    location = "grade.jsp?id=<%=id%>"; 
</script>
<%
    }
%>
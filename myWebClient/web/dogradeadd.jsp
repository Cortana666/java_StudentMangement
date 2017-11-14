<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="test.*"%>
<% request.setCharacterEncoding("utf-8"); Boolean flag=false;
    String id = request.getParameter("id");
    String php=request.getParameter("php");
    String java = request.getParameter("java");
    String asp=request.getParameter("asp");
    if(id!=null&&!"".equals(id)){
//    out.println("insert into grade(gid,php,java,asp) values("+id+",'"+php+"','"+java+"','"+asp+"')");
    flag=new client.mytest().add("insert into grade(gid,php,java,asp) values("+id+",'"+php+"','"+java+"','"+asp+"')"); }
    if(flag){
%>
<script type="text/javascript">
    alert("添加成功!");
    location = "grade.jsp?id=<%=id%>"; 
</script>
<% 
    }else{
%>
<script type="text/javascript">
    alert("添加失败!");
    location = "grade.jsp?id=<%=id%>"; 
</script>
<%
    }
%>
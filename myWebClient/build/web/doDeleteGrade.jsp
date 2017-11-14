<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="test.*"%>
<%
    Boolean flag=false;
    String s = request.getParameter("id");
    if(s!=null&&!"".equals(s)){
        flag=new client.mytest().delgrade(s);
    }
    if(flag){
%>
<script type="text/javascript">
    alert("删除成功！");
    location = "grade.jsp?id=<%=s%>";
</script>
<%
    }else{
%>
<script type="text/javascript">
    alert("删除失败！");
    location = "grade.jsp?id=<%=s%>";
</script>
<%
    }
%>

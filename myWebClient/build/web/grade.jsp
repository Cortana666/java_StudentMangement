<%@page import="org.json.JSONObject"%>
<%@page import="org.json.JSONArray"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="test.*"%>

            <% 
                String id=(String)request.getParameter("id");
            %>
<html>
    <head>
        
<script type="text/javascript">
    function returnindex() {
        location.href="index.jsp";
    }
    function del(id){
            if(confirm("是否确认删除?")){
                    location="doDeleteGrade.jsp?id="+id;
            }else{
                    alert("取消删除!");
                    location="grade.jsp?id=<%=id%>";
            }
    }
</script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table align="center" style=" color: blue; background: yellow" border="1">
    <tr>
        <%
            client.mytest o=new client.mytest();
            String t=o.gradeselect(id);
            if(t.length() == 0){
        %>
        <td>
            <a href="addgrade.jsp?id=<%=id%>">增加成绩</a>
        </td>
        <%       
            }
        %>  
    </tr>
    <tr>  
        <td>学号</td>
        <td>姓名</td>
        <td>PHP</td>
        <td>JAVA</td>
        <td>C#</td>
        <td colspan="2">操作</td>
    </tr>
    <%
        client.mytest n=new client.mytest();
        String s=n.gradeselect(id);
        if(s.length() == 0){
    %>
    <script>
        alert("查询结果为空！");
    </script>
    <%
        }else{
            JSONArray array=new JSONArray(s);
            for(int i=0;i<array.length();i++) {  
    %>
    <tr>
        <%
            JSONObject arrayid = array.getJSONObject(i);
            String name = arrayid.getString("name");
            String php = arrayid.getString("php");
            String java = arrayid.getString("java");
            String asp = arrayid.getString("asp");
       %>
        <td><%=id%></td>
        <td><%=name%></td>
        <td><%=php%></td>
        <td><%=java%></td>
        <td><%=asp%></td>
        <td>
            <a href="gradeupdate.jsp?id=<%=id%>">更新</a>
        </td>
        <td>
            <a href="javascript:del(<%=id%>) ">删除</a>
        </td>
    </tr>
    <%       
            }
        }
    %>  
</table>
<input type="button" value="返回" onclick="returnindex()" />
    </body>
</html>

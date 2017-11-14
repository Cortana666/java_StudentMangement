<%@page import="org.json.JSONObject"%>
<%@page import="org.json.JSONArray"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="test.*"  %>
<script type="text/javascript">
    function del(id){
            if(confirm("是否确认删除?")){
                    location="doDeleteUserinfo.jsp?id="+id;
            }else{
                    alert("取消删除!");
                    location="index.jsp";
            }
    }
    function add() {
        document.getElementById("big").value+=document.getElementById("condition").value;
        document.getElementById("big").value+=" ";
        document.getElementById("condition").value="";
        document.getElementById("big").value+=document.getElementById("choose").value;
        var choose = document.getElementById("choose").value
        document.getElementById("big").value+=" ";
        document.getElementById("big").value+="\"";
        document.getElementById("choose").value="";
        if(choose == "like"){
            document.getElementById("big").value+="%";
        }
        document.getElementById("big").value+=document.getElementById("keywords").value;
        if(choose == "like"){
            document.getElementById("big").value+="%";
        }
        document.getElementById("big").value+="\"";
        document.getElementById("big").value+=" ";
        document.getElementById("keywords").value="";
        document.getElementById("big").value+=document.getElementById("others").value;
        if(document.getElementById("others").value!=""){
            document.getElementById("big").value+=" ";
        }
        document.getElementById("others").value="";
    }
</script>
<table align="center" style=" color: blue; background: yellow" border="1">
    <tr>
        <td>
            <a href="add.jsp">增加个人信息</a>
        </td>
    </tr>
    <form method="POST" action="doquery.jsp">
    <tr>
        <td>
            <select id="condition" name="condition">
                <option></option>
                <option value="id">学号</option>
                <option value="name">姓名</option>
                <option value="sex">性别</option>
                <option value="age">年龄</option>
                <option value="idcard">身份证号</option>
                <option value="address">地址</option>
            </select>
        </td>
        <td>
            <select id="choose" name="choose">
                <option></option>
                <option value="like">包含</option>
                <option value="<">小于</option>
                <option value=">">大于</option>
                <option value="=">等于</option>
            </select>
        </td>
        <td>
            <input id="keywords" name="keywords" type="text" placeholder="关键字" />
        </td>
        <td>
            <select id="others" name="others">
                <option></option>
                <option value="or">或</option>
                <option value="and">且</option>
            </select>
        </td>
        <td>
            <input type="button" value="增加条件" onclick="add()" />
            <input type="hidden" id="big" name="allcondition"/>
        </td>
        <td>
            <input type="submit" value="提交" />
        </td>
    </tr>
</form>
    <tr>  
        <td>学号</td>
        <td>姓名</td>
        <td>性别</td>
        <td>年龄</td>
        <td>身份证号</td>
        <td>地址</td>
        <td colspan="3">操作</td>
    </tr>
    <%
        client.mytest n=new client.mytest();
        request.setCharacterEncoding("UTF-8");
        String allcondition = request.getParameter("allcondition");
        String sql = "select * from information where "+allcondition+"";
        String s=n.myResponse2(sql);
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
            String id = arrayid.getString("id");
            String name = arrayid.getString("name");
            String sex = arrayid.getString("sex");
            String age = arrayid.getString("age");
            String idcard = arrayid.getString("idcard");
            String address = arrayid.getString("address");
       %>
        <td><%=id%></td>
        <td><%=name%></td>
        <td><%=sex%></td>
        <td><%=age%></td>
        <td><%=idcard%></td>
        <td><%=address%></td>
        <td>
            <a href="grade.jsp?id=<%=id%>">查看成绩</a>
        </td>
        <td>
            <a href="update.jsp?id=<%=id%>">更新</a>
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

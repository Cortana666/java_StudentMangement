<%@page import="org.json.JSONObject"%>
<%@page import="org.json.JSONArray"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="test.*"%>
<form action="doupdate.jsp" method="POST">
    <%
        client.mytest n=new client.mytest();
        String id=(String)request.getParameter("id");
        String s=n.myResponse1(id);
        JSONArray array=new JSONArray(s);
        JSONObject arrayid = array.getJSONObject(0);
        String name = arrayid.getString("name");
        String sex = arrayid.getString("sex");
        String age = arrayid.getString("age");
        String idcard = arrayid.getString("idcard");
        String address = arrayid.getString("address");
    %>
    <table border="0" cellspacing="0" cellpadding="0" width="100%" height="300px" >
        <thead > 
            <tr>
                <th></th>
                <th></th> 
            </tr>
        </thead> 
        <tbody>
            <tr>
                <td></td>
                <td></td>
                <td> 学号 :<input type="text" id="id" name="id" value=<%=id%> readonly="readonly" /></td>
                <td></td> 
                <td></td> 
                <td></td>
            </tr> 
            <tr>
                <th width="20%" height="100px"></th> <th width="20%"></th>
                <th></th>
                <th></th>
                <td></td>
                <td></td>
                <td> 姓名 :<input type="text" name="name" value=<%=name%> /></td> <td></td>
                <td></td>
                <td></td> 
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td> 性别 :<input type="text" name="sex" value=<%=sex%> /></td>
                <td></td> 
                <td></td> 
                <td></td>
            </tr> 
            <tr>
                <td></td>
                <td></td>
                <td> 年龄 :<input type="text" name="age" value=<%=age%> /></td>
                <td></td> 
                <td></td> 
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td> 身份证号 :<input type="text" name="idcard" value=<%=idcard%> /></td>
                <td></td> 
                <td></td> 
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td> 地址 :<input type="text" name="address" value=<%=address%> />&nbsp;<input type="submit" value="Submit" /></td> <td></td>
                <td></td>
                <td></td> 
            </tr>
            <tr>
                <td></td>
                <td></td> 
                <td></td> 
                <td></td> 
                <td></td> 
                <td></td>
            </tr>
            <tr>
                <td></td> 
                <td></td> 
                <td></td> 
                <td></td> 
                <td></td> 
                <td></td>
            </tr> 
        </tbody>
    </table> 
</form>
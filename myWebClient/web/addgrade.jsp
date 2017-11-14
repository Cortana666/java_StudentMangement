<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="test.*"%>
<% 
    String id=(String)request.getParameter("id");
%>
<script type="text/javascript">
    function returnindex() {
        location.href="grade.jsp?id=<%=id%>";
    }
</script>
<form action="dogradeadd.jsp" method="POST">
    <table border="0" cellspacing="0" cellpadding="0" width="100%" height="300px" >
        <thead >
            <tr>
                <th></th>
                <th></th> 
            </tr>
        </thead> 
        <tbody>
            <th width="20%" height="100px"></th> <th width="20%"></th>
            <th></th>
            <th></th>
            <tr>
                <td></td>
                <td></td>
                <td> 学号 :<input type="text" name="id" value="<%=id%>" readonly="readonly" /></td>
                <td></td> 
                <td></td> 
                <td></td>
            </tr> 
            <tr>
                <td></td>
                <td></td>
                <td> PHP :<input type="text" name="php" value="" /></td>
                <td></td> 
                <td></td> 
                <td></td>
            </tr> 
            <tr>
                <td></td>
                <td></td>
                <td> JAVA :<input type="text" name="java" value="" /></td>
                <td></td> 
                <td></td> 
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td> C# :<input type="text" name="asp" value="" /></td>
                <td></td> 
                <td></td> 
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td> 
                <td>  <input type="button" value="返回" onclick="returnindex()" /></td> 
                <td></td> 
                <td></td> 
                <td></td>
            </tr> 
            <tr>
                <td></td> 
                <td></td> 
                <td> <input type="submit" value="提交" /></td> 
                <td></td> 
                <td></td> 
                <td></td>
            </tr> 
        </tbody>
    </table> 
</form>
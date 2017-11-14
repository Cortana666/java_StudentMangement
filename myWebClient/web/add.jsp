<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="test.*"%>
<script type="text/javascript">
    function returnindex() {
        location.href="index.jsp";
    }
</script>
<form action="doadd.jsp" method="POST">
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
                <td> 学号 :<input type="text" id="id" name="id" value="" /></td>
                <td></td>
                <td></td>
                <td></td>
            </tr> 
            <tr>
                <td></td>
                <td></td>
                <td> 姓名 :<input type="text" name="name" value="" /></td> <td></td>
                <td></td>
                <td></td> 
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td> 性别 :<input type="text" name="sex" value="" /></td>
                <td></td> 
                <td></td> 
                <td></td>
            </tr> 
            <tr>
                <td></td>
                <td></td>
                <td> 年龄 :<input type="text" name="age" value="" /></td>
                <td></td> 
                <td></td> 
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td> 身份证号 :<input type="text" name="idcard" value="" /></td>
                <td></td> 
                <td></td> 
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td> 地址 :<input type="text" name="address" value="" /></td> 
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
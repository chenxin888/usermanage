<%@ page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html xmlns="http://www.w3.org/1999/xhtml">
<%--<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />--%>
<head id="Head1" runat="server">
    <script src="/js/jquery-3.1.1.min.js"></script>
    <script src="/js/timeUtil.js"></script>
    <script type="text/javascript">

    </script>
</head>

<body>
<form id="form1" action="<%=request.getContextPath()%>/user/addTime" method="post">
    <c:forEach items="${userList}" var="userList" varStatus="i">
        <table>
            <tr>
                <td> 用户名：<input type="text" name="userName" value="${userList.userName}"><br></td>
                <td> 姓名：<input type="text" name="name" value="${name}"><br></td>
                <td> 时间：<input id="time" type="text" name="time" value="${time}"><br></td>
            </tr>
        </table>

    </c:forEach>


</form>


</body>
</html>
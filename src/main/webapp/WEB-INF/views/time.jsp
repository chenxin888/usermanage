<%@ page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<%--<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />--%>
<head id="Head1" runat="server">
    <script src="/js/jquery-3.1.1.min.js"></script>
    <script src="/js/timeUtil.js"></script>
    <script type="text/javascript">
        $(function () {
            var date = new Date();
            var dateString = date.format("yyyy/MM/dd hh:mm:ss");
            $("#time").val(dateString);
            console.log(dateString);
        })

    </script>
</head>

<body>
<form id="form1" action="<%=request.getContextPath()%>/user/addTime" method="post">

    用户名：<input type="text" name="userName" value=""><br>
    姓名：<input type="text" name="name" value=""><br>
    时间：<input id="time" type="text" name="time" value=""><br>
    <input type="submit" value="提交"/>
</form>


</body>
</html>
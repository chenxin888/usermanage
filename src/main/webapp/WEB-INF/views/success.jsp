<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%--<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />--%>
<head id="Head1" runat="server">
    <title></title>
    <script src="/js/jquery-3.1.1.min.js"></script>

</head>
<body>
保存成功
<form action="<%=request.getContextPath()%>/user/findUser" method="post">
    <input type="submit" value="查询"/>
</form>
</body>
</html>
<%--
  Created by IntelliJ IDEA.
  User: 文畅
  Date: 2021/10/30
  Time: 13:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <base href="<%=basePath%>">
    <meta content="charset=UTF-8">
    <title>addNotice.jsp</title>
    <link href="css/admin/common.css" type="text/css" rel="stylesheet">
</head>
<body>
<form:form action="adminNotice/addNotice" method="post" modelAttribute="notice">
    <table border=1 style="border-collapse: collapse">
        <caption>
            <font size=4 face=华文新魏>添加公告</font>
        </caption>
        <tr>
            <td>标题<font color="red">*</font></td>
            <td>
                <form:input path="ntitle"/>
            </td>
        </tr>
        <tr>
            <td>内容<font color="red">*</font></td>
            <td>
                <form:textarea path="ncontent"/>
            </td>
        </tr>
        <tr>
            <td align="center">
                <input type="submit" value="提交"/>
            </td>
            <td align="left">
                <input type="reset" value="重置"/>
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>


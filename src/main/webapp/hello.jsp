<%--
  Created by IntelliJ IDEA.
  Project name(项目名称)：HTML_form_label
  File name(文件名): hello
  Author(作者）: mao
  Author QQ：1296193245
  GitHub：https://github.com/maomao124/
  Date(创建日期)： 2022/1/17
  Time(创建时间)： 20:09
  Description(描述)： 无
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>结果</title>
</head>
<body>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String sex = request.getParameter("sex");
    if (sex.equals("1"))
    {
        sex = "男";
    }
    else if (sex.equals("2"))
    {
        sex = "女";
    }
    else
    {
        sex = "未知";
    }
    String[] hobby = request.getParameterValues("hobby");
    String education = request.getParameter("education");

%>
用户名：
<%=username%>
<br/>
密码：
<%=password%>
<br/>
性别：
<%=sex%>
<br/>
爱好:
<c:forEach items="<%=hobby%>" var="i" varStatus="varstatusName" step="1">
    ${i}
</c:forEach>
<br/>
学历：
<%=education%>

</body>
</html>

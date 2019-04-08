<%--
  Created by IntelliJ IDEA.
  User: andy
  Date: 2019/3/24
  Time: 17:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>常见问题库</title>
    <style>

        table{ margin:0px auto;width:700px;}
        table tr:nth-of-type(1) {
            background-color:#F5F2F9;
        }
    </style>
</head>
<body>
<form action="${pageContext.request.contextPath}/faqms/faqAdd" method="post">
    <table border="1" cellspacing="0">
        <tr>
            <td colspan="2" align="center">
                <h1>添加常见问题</h1>
            </td>
        </tr>
        <tr>
            <td>分类：</td>
            <td>
                <select name="id">
                    <option value="0">--请选择分类--</option>
                    <c:forEach var="fqa" items="${fqaList}">
                        <option value="${fqa.id}">${fqa.cname}</option>
                    </c:forEach>
                </select>
            </td>
        </tr>
        <tr>
            <td>标题：</td>
            <td>
                <input type="text" name="title" />
            </td>
        </tr>

        <tr>
            <td>内容</td>
            <td>
                <input type="text" name="reportUser" />
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="提交"/>
                <input  type="button" src="${pageContext.request.contextPath}/faqms/queryFqasById" value="放弃"/>
            </td>
        </tr>
    </table>
</form>
</body>
</html>

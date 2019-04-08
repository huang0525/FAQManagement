<%--
  Created by IntelliJ IDEA.
  User: andy
  Date: 2019/3/24
  Time: 16:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>常见问题库</title>
    <script src = "${pageContext.request.contextPath}/statics/js/jquery-1.8.3.min.js"></script>
    <style>
        .container{
            text-align: center;
            width: 750px;
            height: 360px;
            margin: 0px auto;
        }
    </style>
    <script>
        $(function () {
            $("tr:odd").css("background-color","yellow");
        })
    </script>
</head>
<body>

<div class="container">
    <h1>常见问题检索</h1>
    <form method="get" action="${pageContext.request.contextPath}/faqms/queryFqasById">
        <option value="0">请输入查询关键字</option>
        <c:forEach var="fqa" items="${fqaList}">
            <option value="${fqa.id}">${fqa.cname}</option>
        </c:forEach>
    </select>
        <input type="submit" value="查询"/>
        <a class="add" href="${pageContext.request.contextPath}/faqms/toAdd">常见问题</a>
    </form>
    </form>
    <table border="1">
        <tr>
            <th>编号</th>
            <th><a href="add.jsp">标题</a></th>
            <th>分类</th>
            <th>创建时间</th>
        </tr>
        <c:forEach items="${faqList}" var="faqss">
            <tr>
                <td>${faqss.id}</td>
                <td>${faqss.title}</td>
                <td>${faqss.content}</td>
                <td><fmt:formatDate value="${faqss.createDate}" pattern="yyyy-MM-dd" /></td>
            </tr>
        </c:forEach>
    </table>

</div>
</body>
</html>

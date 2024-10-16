<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>공지사항 목록</title>
</head>
<body>
<h2>공지사항 목록</h2>
<table border="1">
    <tr>
        <th>번호</th>
        <th>구분</th>
        <th>제목</th>
        <th>등록일</th>
    </tr>
    <c:forEach var="notice" items="${notices}">
        <tr>
            <td>${notice.n_idx}</td>
            <td>${notice.n_category}</td>
            <td>${notice.n_title}</td>
            <td>${notice.n_regdate}</td>
        </tr>
    </c:forEach>
</table>
<a href="/notice/write">공지사항 등록</a>
</body>
</html>

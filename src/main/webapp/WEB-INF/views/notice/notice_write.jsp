<html>
<head>
    <title>공지사항 등록</title>
</head>
<body>
<h2>공지사항 작성</h2>
<form action="/notice/write" method="post">
    <label>구분</label>
    <input type="text" name="n_category"/><br/>
    <label>제목</label>
    <input type="text" name="n_title"/><br/>
    <label>내용</label>
    <textarea name="n_content"></textarea><br/>
    <input type="submit" value="등록"/>
</form>
</body>
</html>

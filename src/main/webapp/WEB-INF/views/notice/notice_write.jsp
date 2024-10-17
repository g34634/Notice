<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>공지사항 작성</title>
</head>
<body>
    <h2>공지사항 작성</h2>
    <form action="/notice/write" method="post" class="notice-form">
        
        <!-- 구분 선택 드롭다운 -->
        <label>구분</label>
        <select name="n_category" class="input-text">
            <option value="일반">일반</option>
            <option value="오픈소식">오픈소식</option>
            <option value="서비스">서비스</option>
            <option value="당첨자발표">당첨자발표</option>
        </select><br/>
        
        <label>제목</label>
        <input type="text" name="n_title" class="input-text"/><br/>
        
        <label>내용</label>
        <textarea name="n_content" class="textarea"></textarea><br/>
        
        <input type="submit" value="등록" class="submit-button"/>
    </form>

    <!-- CSS -->
    <style>
        /* 기본 레이아웃 스타일 */
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f9f9f9;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        /* 공지사항 작성 폼 스타일 */
        .notice-form {
            width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 10px;
            color: #333;
            font-weight: bold;
        }

        .input-text, .textarea, .submit-button, select {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        .textarea {
            height: 150px;
            resize: none;
        }

        .submit-button {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        .submit-button:hover {
            background-color: #0056b3;
        }
    </style>

</body>
</html>

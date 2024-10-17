<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>공지사항</title>
</head>
<body>
    <h2>공지사항</h2>

    <!-- 카테고리 탭 -->
    <div class="category-tabs">
        <a href="?category=" class="${empty param.category ? 'active' : ''}">전체</a>
        <a href="?category=일반" class="${param.category == '일반' ? 'active' : ''}">일반</a>
        <a href="?category=오픈소식" class="${param.category == '오픈소식' ? 'active' : ''}">오픈소식</a>
        <a href="?category=서비스" class="${param.category == '서비스' ? 'active' : ''}">서비스</a>
        <a href="?category=당첨자발표" class="${param.category == '당첨자발표' ? 'active' : ''}">당첨자발표</a>
    </div>

<!-- 검색 폼 -->
<form action="/notice/list" method="get">
    <select name="searchType">
        <option value="title" ${param.searchType == 'title' ? 'selected' : ''}>제목</option>
        <option value="content" ${param.searchType == 'content' ? 'selected' : ''}>내용</option>
        <option value="titleContent" ${param.searchType == 'titleContent' ? 'selected' : ''}>제목+내용</option>
    </select>
    <input type="text" name="keyword" value="${param.keyword}" placeholder="검색어를 입력해 주세요." />
    <button type="submit">검색</button>
</form>



    <!-- 공지사항 목록 테이블 -->
    <table>
        <tr>
            <th>번호</th>
            <th>구분</th>
            <th class="title-cell">제목</th>
            <th>등록일</th>
        </tr>
        <c:forEach var="notice" items="${notices}">
            <tr>
                <td>${notice.n_idx}</td>
                <td>${notice.n_category}</td>
                <td class="title-cell">${notice.n_title}</td>
                <td><fmt:formatDate value="${notice.n_regdate}" pattern="yyyy.MM.dd" /></td>
            </tr>
        </c:forEach>
    </table>

    <!-- 공지사항 등록 버튼 -->
    <a href="/notice/write" class="write-button">공지사항 등록</a>

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
            margin-bottom: 20px;
        }

        /* 카테고리 탭 스타일 */
        .category-tabs {
            display: flex;
            justify-content: center;
            margin-bottom: 20px;
        }

        .category-tabs a {
            margin: 0 5px;
            padding: 10px 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            text-decoration: none;
            color: #333;
        }

        .category-tabs a.active {
            background-color: #007bff;
            color: white;
            border-color: #007bff;
        }

        /* 검색 폼 스타일 */
        form {
            display: flex;
            justify-content: center;
            margin-bottom: 20px;
        }

        form select, form input {
            padding: 8px;
            margin-right: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        form button {
            padding: 8px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        form button:hover {
            background-color: #0056b3;
        }

        /* 테이블 스타일 */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px;
            text-align: center;
        }

        th {
            background-color: #f2f2f2;
        }

        /* 제목 셀 크게 만들기 */
        td.title-cell {
            text-align: left;
            width: 60%;  /* 제목은 넓게 차지 */
        }

        /* 공지사항 등록 버튼 */
        .write-button {
            display: block;
            width: 150px;
            margin: 0 auto;
            padding: 10px;
            background-color: #28a745;
            color: white;
            text-align: center;
            text-decoration: none;
            border-radius: 5px;
        }

        .write-button:hover {
            background-color: #218838;
        }

        /* 반응형 - 화면의 크기에 따라 웹 페이지의 레이아웃 자동 조정*/ 
        @media screen and (max-width: 768px) {
            table, th, td {
                font-size: 12px;
            }

            .write-button {
                width: 100%;
            }
        }
    </style>
</body>
</html>

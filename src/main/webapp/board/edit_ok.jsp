<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    String no = request.getParameter("no");
    String title = request.getParameter("title");
    String writer = request.getParameter("writer");
    String category = request.getParameter("category");
    String content = request.getParameter("content");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>수정 완료</title>
    <link rel="stylesheet" href="/cssFile/style.css">
</head>
<body>
<div class="form-wrapper">
    <h2>글 수정 완료 (Mock)</h2>
    <p>실제 DB 수정 없이, form에서 넘어온 데이터를 출력만 합니다.</p>

    <hr>

    <p><strong>글번호</strong> : <%= no %></p>
    <p><strong>제목</strong> : <%= title %></p>
    <p><strong>작성자</strong> : <%= writer %></p>
    <p><strong>카테고리</strong> : <%= category %></p>
    <p><strong>내용</strong><br><pre><%= content %></pre></p>

    <div class="form-actions">
        <a href="list.jsp" class="btn btn-primary">목록으로</a>
    </div>
</div>
</body>
</html>

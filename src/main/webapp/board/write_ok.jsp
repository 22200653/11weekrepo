<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    String title = request.getParameter("title");
    String writer = request.getParameter("writer");
    String category = request.getParameter("category");
    String password = request.getParameter("password");
    String content = request.getParameter("content");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>새 글 저장 완료</title>
    <link rel="stylesheet" href="../assets/css/style.css">
</head>
<body>
<div class="form-wrapper">
    <h2>글 저장 완료 (Mock)</h2>
    <p>DB는 사용하지 않고, form에서 전달된 데이터를 화면에만 출력합니다.</p>

    <hr>

    <p><strong>제목</strong> : <%= title %></p>
    <p><strong>작성자</strong> : <%= writer %></p>
    <p><strong>카테고리</strong> : <%= category %></p>
    <p><strong>비밀번호</strong> : <%= password %></p>
    <p><strong>내용</strong><br><pre><%= content %></pre></p>

    <div class="form-actions">
        <a href="list.jsp" class="btn btn-primary">목록으로</a>
        <a href="write.html" class="btn btn-outline">다시 작성</a>
    </div>
</div>
</body>
</html>

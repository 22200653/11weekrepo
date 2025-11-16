<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    String no = request.getParameter("no");
    String title = request.getParameter("title");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>삭제 완료</title>
    <link rel="stylesheet" href="/cssFile/style.css">
</head>
<body>
<div class="form-wrapper">
    <h2>삭제 실행 (Mock)</h2>
    <p>실제 DB 삭제는 하지 않고, “삭제되었다고 가정”하는 화면입니다.</p>

    <hr>

    <p>글번호 <strong><%= no %></strong> 번, 제목
        <strong><%= title %></strong> 인 게시글이 삭제된 것으로 처리되었습니다.</p>

    <div class="form-actions">
        <a href="list.jsp" class="btn btn-primary">목록으로</a>
    </div>
</div>
</body>
</html>

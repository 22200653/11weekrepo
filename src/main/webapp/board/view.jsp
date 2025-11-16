<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    String no = request.getParameter("no");
    String title = request.getParameter("title");
    String writer = request.getParameter("writer");
    String hit = request.getParameter("hit");
    String createdDate = request.getParameter("createdDate");
    String category = request.getParameter("category");
    String content = request.getParameter("content");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>게시글 상세보기</title>
    <link rel="stylesheet" href="../assets/css/style.css">
</head>
<body>
<div class="header">
    <div class="header-title">게시글 상세보기</div>
    <a href="list.jsp" class="btn btn-outline">목록으로</a>
</div>

<div class="form-wrapper">
    <div class="detail-header">
        <h2><%= title %></h2>
        <span class="badge"><%= category %></span>
    </div>

    <div class="detail-meta">
        글번호 <%= no %> · 작성자 <%= writer %> · 조회수 <%= hit %> · 작성일 <%= createdDate %>
    </div>

    <hr>

    <div style="min-height: 160px; margin-top: 10px; white-space: pre-wrap;">
        <%= content %>
    </div>

    <hr>

    <div class="form-actions">
        <!-- 수정 버튼 : edit.html 로 이동 (쿼리스트링으로 데이터 전달) -->
        <a href="edit.html?no=<%=no%>
                &title=<%=java.net.URLEncoder.encode(title, "UTF-8")%>
                &writer=<%=java.net.URLEncoder.encode(writer, "UTF-8")%>
                &category=<%=java.net.URLEncoder.encode(category, "UTF-8")%>
                &content=<%=java.net.URLEncoder.encode(content, "UTF-8")%>"
           class="btn btn-outline">수정</a>

        <!-- 삭제 버튼 : delete_ok.jsp 로 이동 -->
        <a href="delete_ok.jsp?no=<%=no%>
                &title=<%=java.net.URLEncoder.encode(title, "UTF-8")%>"
           class="btn btn-danger">삭제</a>
    </div>
</div>
</body>
</html>

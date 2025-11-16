<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%
    // ===== Mock Data 정의 (DB 대신 사용) =====
    class Post {
        int no;
        String title;
        String writer;
        int hit;
        String createdDate;
        String category;
        String content;

        Post(int no, String title, String writer, int hit,
             String createdDate, String category, String content) {
            this.no = no;
            this.title = title;
            this.writer = writer;
            this.hit = hit;
            this.createdDate = createdDate;
            this.category = category;
            this.content = content;
        }
    }

    java.util.List<Post> posts = new java.util.ArrayList<>();
    posts.add(new Post(12, "Lorem ipsum is simply dummy text of the printing...",
            "Sally", 30, "2024-10-31", "공지", "공지 예시 내용입니다."));
    posts.add(new Post(11, "Midterm exam schedule 안내",
            "Admin", 52, "2024-10-30", "공지", "시험 일정 안내입니다."));
    posts.add(new Post(10, "Study group 모집합니다",
            "Haram", 12, "2024-10-29", "자유", "스터디 모임 글 내용입니다."));
    posts.add(new Post(9, "React project 질문 있습니다",
            "Tom", 44, "2024-10-29", "질문", "질문 내용입니다."));
    posts.add(new Post(8, "오늘 점심 뭐 드셨나요?",
            "Sally", 5, "2024-10-28", "자유", "가벼운 잡담 글입니다."));
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>자유게시판 - 목록</title>
    <link rel="stylesheet" href="../assets/css/style.css">
</head>
<body>
<div class="header">
    <div class="header-title">자유게시판</div>
    <div class="search-area">
        <select>
            <option value="title">Search by title</option>
            <option value="writer">Search by writer</option>
        </select>
        <input type="text" placeholder="검색어를 입력하세요">
        <button class="btn btn-primary" type="button">Search</button>
        <!-- Add 버튼은 새 글 작성 페이지로 링크 -->
        <a href="write.html" class="btn btn-outline">Add</a>
    </div>
</div>

<div class="table-wrapper">
    <table class="board-table">
        <thead>
        <tr>
            <th style="width:60px;">no</th>
            <th>title</th>
            <th style="width:120px;">writer</th>
            <th style="width:80px;">hit</th>
            <th style="width:120px;">created_date</th>
            <th style="width:120px;">menu</th>
        </tr>
        </thead>
        <tbody>
        <%
            for (Post p : posts) {
        %>
        <tr>
            <td><%= p.no %></td>
            <td>
                <!-- 제목 클릭 시 상세보기로 이동 -->
                <a href="view.jsp?no=<%=p.no%>
                        &title=<%=java.net.URLEncoder.encode(p.title, "UTF-8")%>
                        &writer=<%=java.net.URLEncoder.encode(p.writer, "UTF-8")%>
                        &hit=<%=p.hit%>
                        &createdDate=<%=p.createdDate%>
                        &category=<%=java.net.URLEncoder.encode(p.category, "UTF-8")%>
                        &content=<%=java.net.URLEncoder.encode(p.content, "UTF-8")%>">
                    <%= p.title %>
                </a>
                <span class="badge"><%= p.category %></span>
            </td>
            <td><%= p.writer %></td>
            <td><%= p.hit %></td>
            <td><%= p.createdDate %></td>
            <td>
                <!-- 수정 / 삭제 버튼도 링크만 연결 -->
                <a href="edit.html?no=<%=p.no%>
                        &title=<%=java.net.URLEncoder.encode(p.title, "UTF-8")%>
                        &writer=<%=java.net.URLEncoder.encode(p.writer, "UTF-8")%>
                        &category=<%=java.net.URLEncoder.encode(p.category, "UTF-8")%>
                        &content=<%=java.net.URLEncoder.encode(p.content, "UTF-8")%>"
                   class="btn btn-outline">✏ Edit</a>

                <a href="delete_ok.jsp?no=<%=p.no%>
                        &title=<%=java.net.URLEncoder.encode(p.title, "UTF-8")%>"
                   class="btn btn-danger">🗑 Delete</a>
            </td>
        </tr>
        <%
            }
        %>
        </tbody>
    </table>

    <div class="pagination">
        &lt; <a href="#">1</a> <a href="#">2</a> &gt;
    </div>
</div>

<div class="footer">
    © 2024 MyBoard, Inc · Privacy · FAQs · About
</div>
</body>
</html>

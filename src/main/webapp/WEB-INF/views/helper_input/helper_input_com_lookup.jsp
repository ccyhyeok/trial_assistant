<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>header</title>
<script src="https://kit.fontawesome.com/89b715172c.js"
	crossorigin="anonymous">
    </script>

<%-- 
		${pageContext.request.contextPath} == <c:url value='' />
	 --%>
<link
	href="${pageContext.request.contextPath }/resources/css/bootstrap.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!--개인 디자인 추가-->
<link
	href="${pageContext.request.contextPath }/resources/css/choiStyle.css"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
</head>

<body>

	<%@ include file="../include/header.jsp"%>


	<!------------------------------- 본문 내용 ------------------->





	<div class="container-fluid">
		<div class="row">
			<!--lg에서 9그리드, xs에서 전체그리드-->
			<div class="col-md-2"></div>
			<div class="col-lg-9 col-md-8 colcol-xs-12 board-table helper-wrap">
				<div class="titlebox">
					<h3>공고 진행중인 조력자 유형</h3>
				</div>
				<hr>

				<!--form select를 가져온다 -->
				<form action="#">
					<div class="search-wrap">
						<button type="submit" class="btn btn-primary">검색</button>
						<input class="search-input" type="text" name="#" class="#"
							value="검색어">
					</div>
				</form>

				<table class="table table-hover container">
					<thead>
						<tr>
							<th>기관 번호</th>
							<th class="board-title">기관명</th>
							<th>등록 날짜</th>
						</tr>
					</thead>

					<!-- 반복문 필요 -->
					<tbody>
						<tr>
							<td><input type="checkbox" id="chkbox"> 1</td>
							<td><a href="#">기관1</a></td>
							<td>
								<!--<fmt:formatDate value="#" pattern="yyyy-MM-dd HH:mm" />-->
								2022.08.08
							</td>
						</tr>
						<tr>
							<td><input type="checkbox" id="chkbox"> 2</td>
							<td><a href="#">기관2</a></td>
							<td>
								<!--<fmt:formatDate value="#" pattern="yyyy-MM-dd HH:mm" />-->
								2022.08.08
							</td>
						</tr>
						<tr>
							<td><input type="checkbox" id="chkbox"> 3</td>
							<td><a href="#">기관3</a></td>
							<td>
								<!--<fmt:formatDate value="#" pattern="yyyy-MM-dd HH:mm" />-->
								2022.08.08
							</td>
						</tr>
						<tr>
							<td><input type="checkbox" id="chkbox"> 4</td>
							<td><a href="#">기관4</a></td>
							<td>
								<!--<fmt:formatDate value="#" pattern="yyyy-MM-dd HH:mm" />-->
								2022.08.08
							</td>
						</tr>


					</tbody>

					<button type="button" class="btn btn-danger">삭제하기</button>

				</table>




				<br>
				<br>
				<br>

				<hr>

				<!---------------------------------------------------- 페이징 시작 ------------------------------------------------------->
				<!--페이지 네이션을 가져옴
                    <form action="<c:url value='#' />" name="pageForm">
                        <div class="text-center">
                            <hr>
                            <ul id="pagination" class="pagination pagination-sm">
                                <c:if test="#">
                                    <li><a href="#" data-pagenum="${pc.beginPage-1}">이전</a></li>
                                </c:if>

                                <c:forEach var="num" begin="${pc.beginPage}" end="${pc.endPage}">
                                    <li class="${pc.paging.pageNum == num ? 'active' : ''}"><a href="#"
                                            data-pagenum="${num}">${num}</a></li>
                                </c:forEach>

                                <c:if test="${pc.next}">
                                    <li><a href="#" data-pagenum="${pc.endPage+1}">다음</a></li>
                                </c:if>
                            </ul>
                            <button type="button" class="btn btn-info"
                                onclick="location.href='<c:url value="/freeboard/freeRegist" />'">글쓰기</button>
                        </div>
                        -->

				<!-- 페이지 관련 버튼(이전, 다음, 페이지번호)을 클릭 시 같이 숨겨서 보내줄 공통 값 
                        <input type="hidden" name="pageNum" value="${pc.paging.pageNum}">
                        <input type="hidden" name="cpp" value="${pc.paging.cpp}">
                        <input type="hidden" name="condition" value="${pc.paging.condition}">
                        <input type="hidden" name="keyword" value="${pc.paging.keyword}">
                        
                    </form>
                        -->

				<!------------------------------------------------------- 페이징 끝 ------------------------------------------------------->

				<div class="select-wrap">
					<div class="helper-select">
						<div class="titlebox">
							<h3>조력자 유형 선택</h3>
						</div>
						<br>
						<form action="#">
							<span> · 유형 선택1 </span> <select class="" name="#">
								<option value="#">중분류1</option>
								<option value="#">중분류2</option>
								<option value="#">중분류3</option>
								<option value="#">중분류4</option>
							</select> &nbsp;&nbsp;&nbsp; <span> · 유형 선택2 </span> <select class=""
								name="#">
								<option value="#">소분류1</option>
								<option value="#">소분류2</option>
								<option value="#">소분류3</option>
								<option value="#">소분류4</option>
							</select>
						</form>
					</div>

					<div class="company-select">
						<div class="titlebox">
							<h3>기관 유형 선택</h3>
						</div>
						<br>
						<form action="#">
							<span> · 기관 유형 </span> <select class="" name="#">
								<option value="#">기관1</option>
								<option value="#">기관2</option>
								<option value="#">기관3</option>
								<option value="#">기관4</option>
							</select>
						</form>
					</div>
				</div>

			</div>
			<div class="col-md-2"></div>
		</div>
	</div>


	<!--
        .btn-danger(빨간 삭제 버튼) 누르면 아이디가 #chkbox(선택 삭제 체크박스)
        보여지도록 설정했으나, 가장 윗 게시물꺼 하나 밖에 안뜸.
        추후 반복처리할 예정이므로 그대로 둠.
    -->

	<%@ include file="../include/footer.jsp"%>

	<script>
        $(document).ready(function () {
            $(".btn-danger").click(function () {
                $("#chkbox").show();
            });
        });
    </script>

</body>

</html>
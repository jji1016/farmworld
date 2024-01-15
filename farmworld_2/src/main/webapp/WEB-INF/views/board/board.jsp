<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>게시판</title>
<link type="text/css" rel="stylesheet" href="../resources/css/board/board.css" /> 

</head>
<body data-spy="scroll" data-target="#header">

	<!--Start Header Section-->
	<jsp:include page="../header.jsp" />
	<!--End Header Section-->

	<div class="row_rap row">
                <div class="col-lg-12">
                	<div class="board_category">
                		<div>게시판 종류</div>
                		<ul>
                			<li><a>공지사항</a></li>
                			<li><a>자유게시판</a></li>
                		</ul>
                	</div>
                
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            자유게시판
                            <button id="regBtn" type="button" class="btn btn-xs pull-right">글작성</button>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                           <form id="searchForm" action="/board/list" method="get">
	                        	<div class="form-group col-xs-4">
	                                 <select id="type" class="form-control" name="type">
	                                     <option value="" 
	                                     	<c:out value="${pageMaker.cri.type == null?'selected':''}"/>>전체</option>
	                                     <option value="T" 
	                                     	<c:out value="${pageMaker.cri.type == 'T'?'selected':''}"/>>제목</option>
	                                     <option value="C" 
	                                     	<c:out value="${pageMaker.cri.type == 'C'?'selected':''}"/>>내용</option>
	                                     <option value="W" 
	                                     	<c:out value="${pageMaker.cri.type == 'W'?'selected':''}"/>>작성자</option>
	                                     <option value="TC" 
	                                     	<c:out value="${pageMaker.cri.type == 'TC'?'selected':''}"/>>제목+내용</option>
	                                     <!-- <option value="TC">제목+내용</option>  -->
	                                 </select>
	                             </div>
	                             
	                              <div class="col-xs-6">
			                        <div class="form-group input-group">
			                           <input type='text' name='keyword'
											value='<c:out value="${pageMaker.cri.keyword}"/>' /> 
			                            <span class="input-group-btn">
			                                <button class="btn btn-default">
			                                    <i class="fa fa-search"></i>
			                                </button>
			                            </span>
			                        </div>
			                    </div>
                        	</form>
                            <table width="100%" class="table table-striped table-bordered table-hover">
                                <thead>
                                    	<tr>
											<th>board_num</th>
											<th>board_title</th>
											<th>user_nickname</th> <!-- user_num이용 -->
											<th>board_date</th>
											<th>board_view</th>
										</tr>
                                </thead>
                                <tbody></tbody>
                            </table>
                            <!-- /.table-responsive -->
                            
                            <div class = "pull-right">
                            	<ul class="pagination">
                            		<c:if test="${pageMaker.prev }">
	                            		<li class="paginate_button previous">
	                            			<a href="${pageMaker.startPage -1 }">이전</a>
	                            		</li>
	                            	</c:if>
	                            	<c:forEach var="num" begin="${pageMaker.startPage }"
	                            		end="${pageMaker.endPage }">
	                            		<li class="paginate_button ${pageMaker.cri.pageNum ==num?'active':'' }">
	                            			<a href="${num }">${num }</a>
	                            		</li>
	                            	</c:forEach>
	                            	<c:if test="${pageMaker.next }">
	                            		<li class="paginate_button next">
	                            			<a href="${pageMaker.endPage +1 }">다음</a>
	                            		</li>
                            		</c:if>
                            	</ul>
                            </div>
                            
                            <form id="actionForm" action="/board/list" method="get">
                            	<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
                            	<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
                            	<input type="hidden" name="type" value="${pageMaker.cri.type }">
                            	<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
                            </form>
                        </div>
                     </div>
                  </div>       
            </div>

<!-- 사용자에게 보여줄 안내 문구 창 -->
		<div id="myModal" class="modal" tabindex="-1" role="dialog">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title">Modal title</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        <p>Modal body text goes here.</p>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-primary">Save changes</button>
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		      </div>
		    </div>
		  </div>
		</div>
<script type="text/javascript">
	$(document).ready(function() {
		loadTableData();
		
		let result = '${alert}';
		console.log(result);
		checkModal(result);
		function checkModal(result) {
			if(result==''){
				return;
			}
			// 수정,삭제 시 메세지
			if(result == "success"){
				$(".modal-body").html("정상처리완료");
			// 글 등록 시 메세지
			}else if(parseInt(result)>0){
				$(".modal-body").html(parseInt(result)+"번 글이 등록 되었습니다.");
			}
			$("#myModal").modal("show");
		}
		$("#regBtn").click(function() {
			self.location = "/board/register";
		});
		
		function loadTableData(){
			$.ajax({
				url: "/board/searchList",
				type: "POST",
				dataType : "json",
				data: {
					pageNum : $("#actionForm").find("input[name='pageNum']").val(),
					amount : $("#actionForm").find("input[name='amount']").val(),
					type : $("#type").val(),
					keyword : $("#searchForm").find("input[name='keyword']").val()
				},
				success:function(data){
					
					// 아래에 $("tbody") 부분에 원래 #boardTbody있었는데 일단 안나와서 지움
					let boardTbody = $("tbody");
					// for( let item of items) -> 여기서 items 은 data와 같고 item은 board와 같음
					$.each(data, function(index,board){
						console.log(board);
						let board_date = new Date(board.board_date);
						let options = {year:"numeric",month:"2-digit", day:"2-digit", hour:"2-digit",minute:"2-digit"}
						let formatDate = board_date.toLocaleString("ko-KR",options);
						
						let row = $("<tr>");
						row.append($("<td>").text(board.board_num));
						
						let titleLink = $("<a>").attr("href","/board/get?board_num="+board.board_num).text(board.board_title);
						let titleTd = $("<td>").append(titleLink);
						row.append(titleTd);
						row.append($("<td>").text(board.user_nickname));
						row.append($("<td>").text(formatDate));
						row.append($("<td>").text(board.board_view));
						
						
						boardTbody.append(row);
					});
				},
				error: function(e) {
					console.log(e);
				}
			});
		
		let actionForm = $("#actionForm");
		$(".paginate_button a").on("click",function(e){
			e.preventDefault(); // 이벤트 초기화
			// pageNum값을 사용자가 누른 a태그의 href속성값으로 변경
			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
			actionForm.submit();
		});
		
		var searchForm = $("#searchForm");

		$("#searchForm button").on(
				"click",
				function(e) {

					if (!searchForm.find("option:selected")
							.val()) {
						if(searchForm.find("option:selected")
								.val()=""){
							return true;
						}
						alert("검색종류를 선택하세요");
						return false;
					}

					if (!searchForm.find(
							"input[name='keyword']").val()) {
						if(searchForm.find("option:selected")
								.val()=""){
							return true;
						}
						alert("키워드를 입력하세요");
						return false;
					}

					e.preventDefault();

					searchForm.submit();

				});
		
		}// loadTableData 함수 선언 종료
		
	}); // $(document).ready 함수 선언 종료
</script>

	<!--Start Footer Section-->
	<jsp:include page="../footer.jsp" />
	<!--End Footer Section-->

</body>
</html>

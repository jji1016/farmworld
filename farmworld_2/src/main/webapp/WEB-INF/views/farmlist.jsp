<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    <!-- Google Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
	<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Dongle:wght@300&display=swap" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="resources/css/font-awesome.min.css">
    <!-- Animated CSS -->
    <link rel="stylesheet" type="text/css" href="resources/css/animate.min.css">
    <!-- Bootstrap -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Carousel -->
    <link type="text/css" rel="stylesheet" href="resources/css/carousel.css" />
    <link rel="stylesheet" href="resources/css/isotope/style.css">
    <!-- Main Stylesheet -->
    <link href="resources/css/style.css" rel="stylesheet">
    <!-- Responsive Framework -->
    <link href="resources/css/responsive.css" rel="stylesheet">
	
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--[if lt IE 9]>
    
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body data-spy="scroll" data-target="#header">
	<!-- 김지영 test -->
    <!--Start Hedaer Section-->
        <jsp:include page="header.jsp"></jsp:include>
    <!--End of Hedaer Section-->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                     		 DataTables Advanced Tables
                            <button id="regBtn" type="button" class="btn btn-xs pull-right">글 작성</button>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                        
                        	<form id="searchForm" action="/board/list" method="get">
	                        	<div class="form-group col-xs-4">
	                                 <select id="type" class="form-control" name="type">
	                                     <option value="TCW" 
	                                     	<c:out value="${pageMaker.cri.type == 'TCW'?'selected':''}"/>>전체</option>
	                                     <option value="T" 
	                                     	<c:out value="${pageMaker.cri.type == 'T'?'selected':''}"/>>제목</option>
	                                     <option value="C" 
	                                     	<c:out value="${pageMaker.cri.type == 'C'?'selected':''}"/>>내용</option>
	                                     <option value="W" 
	                                     	<c:out value="${pageMaker.cri.type == 'W'?'selected':''}"/>>작성자</option>
	                                     <option value="TC"
	                                     <c:out value="${pageMaker.cri.type == 'TC'?'selected':''}"/>>제목+내용</option>
	                                 </select>
	                             </div>
	                              <div class="col-xs-6">
			                        <div class="form-group input-group">
			                           <input type='text' name='keyword'
											value='<c:out value="${pageMaker.cri.keyword}"/>' /> 
										<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
                            			<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
			                            <span class="input-group-btn">
			                                <button class="btn btn-default">
			                                    <i class="fa fa-search"></i>
			                                </button>
			                            </span>
			                        </div>
			                    </div>
                        	</form>
                        	
                            <table id="boardTable" width="100%" 
                            	class="table table-striped table-bordered table-hover">
                                <thead>
                                    <tr>
										<th>bno</th>
										<th>title</th>
										<th>content</th>
										<th>writer</th>
										<th>regdate</th>
									</tr>
                                </thead>
                                <tbody></tbody>
                            </table>
                            <div class="pull-right">
                            	<ul class="pagination">
                            		<c:if test="${pageMaker.prev }">
                            			<li class="paginate_button previous" ><a href="${pageMaker.startPage -1}">prev</a></li>
                            		</c:if>
                            		<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }" >
                            			<li class="paginate_button  ${pageMaker.cri.pageNum == num ? 'active': '' }" ><a href="${num }">${num }</a></li>
                            		</c:forEach>
                            		<c:if test="${pageMaker.next }">
                            			<li class="paginate_button next" ><a href="${pageMaker.endPage + 1}">Next</a></li>
                            		</c:if>
                            	</ul>
                            </div>
                            <form id="actionForm" action="/board/list" method="get">
                            	<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
                            	<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
                            	<input type="hidden" name="type" value="${pageMaker.cri.type }">
                            	<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
                            </form>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->




        <!--Start Footer Section-->
	    <jsp:include page="footer.jsp"></jsp:include>
    	<!--End Footer Section-->


    <!--Scroll to top-->
    <a href="#" id="back-to-top" title="Back to top">&uarr;</a>
    <!--End of Scroll to top-->



        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <!-- <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>-->
        <script src="resources/js/jquery-1.12.3.min.js"></script>

        <!--Counter UP Waypoint-->
        <script src="resources/js/waypoints.min.js"></script>
        <!--Counter UP-->
        <script src="resources/js/jquery.counterup.min.js"></script>

       


        <!--Isotope-->
        <script src="resources/js/isotope/min/scripts-min.js"></script>
        <script src="resources/js/isotope/cells-by-row.js"></script>
        <script src="resources/js/isotope/isotope.pkgd.min.js"></script>
        <script src="resources/js/isotope/packery-mode.pkgd.min.js"></script>
        <script src="resources/js/isotope/scripts.js"></script>


        <!--Back To Top-->
        <script src="js/backtotop.js"></script>


        <!--JQuery Click to Scroll down with Menu-->
        <script src="resources/js/jquery.localScroll.min.js"></script>
        <script src="resources/js/jquery.scrollTo.min.js"></script>
        <!--WOW With Animation-->
        <script src="js/wow.min.js"></script>
        <!--WOW Activated-->
        <script>
            new WOW().init();
        </script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="resources/js/bootstrap.min.js"></script>
        <!-- Custom JavaScript-->
        <script src="resources/js/main.js"></script>
    </body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>



    <!--Start Hedaer Section-->
        <jsp:include page="header.jsp"></jsp:include>
        
    <!--End of Hedaer Section-->

<body data-spy="scroll" data-target="#header">

	
	<section id="buylist">
		<div class="pagetitle">
			<h4>[My Page - 구매내역]</h4>
		</div>
		<div class="table-responsive small">
        <table id="buyTable" class="table table-striped table-sm ">
          <thead>
            <tr>
              <th scope="col">제품사진</th>
              <th scope="col">주문일</th>
              <th scope="col">주문번호</th>
              <th scope="col">농장이름</th>
              <th scope="col">제품이름</th>
              <th scope="col">제품가격</th>
              <th scope="col">별점</th>
              <!-- <th>배송상태</th>
    		  <th>송장번호</th> -->
              <th scope="col">버튼</th>
            </tr>
          </thead>
          <tbody>
          <%--   <tr>
   	    		<td>이미지 자리</td>
    			<td>${vo.order_date }</td>
    			<td>${vo.order_num }</td>    				
    			<td>${vo.farm_name }</td>
    			<td>${vo.goods_title }</td>
    			<td>${vo.goods_price }</td>
    			<td>${vo.review_score }</td>
    			<td><c:out value="${vo.배송상태 }"></c:out></td>
    			<td><c:out value="${vo.송장번호 }"></c:out></td>
    			<td>
    				<div id="middlebtn">
    					<button id="deliveryBtn" type="button" class="btn btn-primary middlebutton">배송상세</button>
		  		    	<button id="purchaseViewBtn" type="button" class="btn btn-primary middlebutton">주문상세</button>
    				</div>
    			</td>
            </tr> --%>
           </tbody>
          </table>
         </div>
	</section>
  		
  		<!--Start Footer Section-->
	    <jsp:include page="footer.jsp"></jsp:include>
    	<!--End Footer Section-->
</body>

<script src="https://code.jquery.com/jquery-3.6.4.min.js" type="text/javascript">
</script>

<script>

        $(document).ready(function () {
            loadTableData();

            function loadTableData() {
                $.ajax({
                    url: "/mypage/getbuylist1",
                    type: "POST",
                    dataType: "json",
                    success: function (data1) {
                        $.ajax({
                            url: "/mypage/getbuylist3",
                            type: "POST",
                            dataType: "json",
                            success: function (data3) {
                                $.ajax({
                                    url: "/mypage/getbuylist2",
                                    type: "POST",
                                    dataType: "json",
                                    success: function (data2) {
                                        // Assuming data1, data2, and data3 have the same length
                                        for (let i = 0; i < data1.length; i++) {
                                            let orderdate = new Date(data1[i].order_date);
                                            let options = { year: "numeric", month: "2-digit", day: "2-digit", hour: "2-digit", minute: "2-digit" };
                                            let formatDate = orderdate.toLocaleString("ko-KR", options);

                                            let row = $("<tr>");
                                            row.html("<td>이미지</td><td>" + formatDate + "</td><td>" + data1[i].order_num + "</td><td>" + data3[i].farm_name + "</td><td>" + data2[i].goods_title + "</td><td>" + data2[i].goods_price + "</td><td>" + data2[i].goods_price + "</td><td><button class='btn btn-primary middlebutton deliveryBtn'>배송상세</button><button class='btn btn-primary middlebutton purchaseViewBtn'>주문상세</button></td>");
                                            console.log(row);
                                            $("tbody").append(row);
                                        }
                                    },
                                    error: function (e2) {
                                        console.log(e2);
                                    }
                                });
                            },
                            error: function (e3) {
                                console.log(e3);
                            }
                        });
                    },
                    error: function (e1) {
                        console.log(e1);
                    }
                });
            }
        });

    </script>
</html>
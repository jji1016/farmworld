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
    <link rel="stylesheet" href="/resources/css/font-awesome.min.css">
    <!-- Animated CSS -->
    <link rel="stylesheet" type="text/css" href="/resources/css/animate.min.css">
    <!-- Bootstrap -->
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Carousel -->
    <link type="text/css" rel="stylesheet" href="/resources/css/carousel.css" />
    <link rel="stylesheet" href="/resources/css/isotope/style.css">
    <!-- Main Stylesheet -->
    <link href="/resources/css/style.css" rel="stylesheet">
    <!-- Responsive Framework -->
    <link href="/resources/css/responsive.css" rel="stylesheet">
	
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
		<h1>기상청 예보</h1>
       	<div id="weatherPlace"></div>
       	<button onclick="ajaxTest()">버튼</button>
       <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
       <script type="text/javascript">
		$(document).ready(function() {
			ajaxTest();

    		function ajaxTest() {
    	    	$("#weatherPlace").empty();
    	    	var today = new Date();
    	    	var year = today.getFullYear();
    	    	var month = ('0' + (today.getMonth() + 1)).slice(-2);
    	    	var day = ('0' + today.getDate()).slice(-2);
    	    	var dateString = year + '' + month  +'' + day;    	
    	    	var hours = ('0' + today.getHours()).slice(-2);     	
    	    	var timeString = (hours*100);
    	    	
    			$.ajax({
    	            url: "/weather",
    	            type: "post",
    	            contentType: "application/json; charset=utf-8;",
    	            dataType: "json",
    	            success: function(data) {
    	            	console.log(data.response.body.items.item);
    	            	let html = "<p>";
    	            	for (let key of data.response.body.items.item){
    	            		console.log(key);
    	            			if(key["fcstTime"]==timeString && key["fcstDate"]==dateString){
    	            					if(key["category"] =="TMP"){	
    	            						html+="현재기온:"+key["fcstValue"];
    	            					html +="<br>";
    	            					}	
    	            					if(key["category"] =="TMX"){	
    	            						html+="최고기온:"+key["fcstValue"];
    	            						html +="<br>";
    	            					}	
    	            					if(key["category"] =="TMN"){	
    	            						html+="최저기온:"+key["fcstValue"];
    	            						html +="<br>";
    	            					}	
    	            					if(key["category"] =="PCP"){	
    	            						if(key["fcstValue"] !="강수없음"){
    	            						html+="강수량:"+key["fcstValue"];
    	            						html +="<br>";
    	            						}
    	            					}	
    	            					if(key["category"] =="SNO"){	
    	            						if(key["fcstValue"] !="적설없음"){
    	            						html+="적설량:"+key["fcstValue"];
    	            						html +="<br>";
    	            						}
    	            					}    	            
    	            					if(key["category"] =="SKY"){	
    	            						if(key["fcstValue"] == "1"){
    	            						html+="맑음";
    	            						html +="<br>";
    	            					}	
    	            						if(key["fcstValue"] == "2"){
    	            						html+="구름조금";
    	            						html +="<br>";
    	            					}	
    	            						if(key["fcstValue"] == "3"){
    	            						html+="구름많음";
    	            						html +="<br>";
    	            					}	
    	            						if(key["fcstValue"] == "4"){
    	            						html+="흐림";
    	            						html +="<br>";
    	            					}	
    	            				};		
    	            			

    	            	};
    	            };
    	            	html += "</p>";
						$("#weatherPlace").html(html);
    	                
    	            },
    	            error: function(e) {
    	                console.log(e);
    	                console.log("실패!");
    	            }
    	        });
    	    }


    	});
    	</script>
    			
    			
        <!--Start Footer Section-->
	    <jsp:include page="footer.jsp"></jsp:include>
    	<!--End Footer Section-->




        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <!-- <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>-->
        <script src="/resources/js/jquery-1.12.3.min.js"></script>

        <!--Counter UP Waypoint-->
        <script src="/resources/js/waypoints.min.js"></script>
        <!--Counter UP-->
        <script src="/resources/js/jquery.counterup.min.js"></script>

       


        <!--Isotope-->
        <script src="/resources/js/isotope/min/scripts-min.js"></script>
        <script src="/resources/js/isotope/cells-by-row.js"></script>
        <script src="/resources/js/isotope/isotope.pkgd.min.js"></script>
        <script src="/resources/js/isotope/packery-mode.pkgd.min.js"></script>
        <script src="/resources/js/isotope/scripts.js"></script>

        <!--JQuery Click to Scroll down with Menu-->
        <script src="/resources/js/jquery.localScroll.min.js"></script>
        <script src="/resources/js/jquery.scrollTo.min.js"></script>


        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="/resources/js/bootstrap.min.js"></script>
        <!-- Custom JavaScript-->
        <script src="/resources/js/main.js"></script>
    </body>

</html>
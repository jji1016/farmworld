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


         <!--Start of slider section-->
    <section id="slider">
        <div id="carousel-example-generic" class="carousel slide carousel-fade" data-ride="carousel" data-interval="3000">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <div class="slider_overlay">
                        <img src="resources/img/img1.png" alt="...">
                    </div>
                </div>
                    <!--End of item With Active-->
                    <div class="item">
                        <div class="slider_overlay">
                            <img src="resources/img/img2.png" alt="...">
                        </div>
                    </div>
                    <!--End of Item-->
                    <div class="item">
                        <div class="slider_overlay">
                            <img src="resources/img/img3.png" alt="...">
                        </div>
                    </div>
                    <!--End of item-->
                </div>
                <!--End of Carousel Inner-->
            </div>
        </section>
        <!--end of slider section-->



        <!--Start of welcome section-->
        <section id="welcome">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="wel_header">
                        </div>
                    </div>
                </div>
                <!--End of row-->
                <div class="row">
                    <div class="col-md-3" >
                        <div class="item">
                            <div class="single_item"  id="img1">
                                <div class="item_list">
                                    <div class="welcome_icon">
                                    	<div class="circle">                                    	
                                        	<a href='#'><img src="resources/img/popfarm.png" alt="..." id="circleicon1" "></a>
                                        </div>	
                                    </div>
                                    <div id="circleinfo">
                                   		<h4 id="circletext">인기농장</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--End of col-md-3-->

                    <!--End of col-md-3-->
                    <div class="col-md-3" >
                        <div class="item" >
                            <div class="single_item" id="img2">
                            	<a href='#'>
	                                <div class="item_list">
	                                    <div class="welcome_icon">
                                    		<div class="circle">	                                        
	                                        	<a href='#'><img src="resources/img/supp.png" alt="..." id="circleicon2" ></a>
	                                        </div>
	                                    </div>
	                                    <div id="circleinfo">
		                                	<h4 id="circletext">정책</h4>	
		                                </div>                               
	                                </div>
	                            </a>
                            </div>
                        </div>
                    </div>
                    <!--End of col-md-3-->
                    <div class="col-md-3" >
                        <div class="item" >
                            <div class="single_item" id="img3">
                                <div class="item_list">
                                    <div class="welcome_icon">
                                        
                                    </div>
                                    <br>
                                    <h4>지도</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--End of col-md-3-->
                </div>
                <!--End of row-->
            </div>
            <!--End of container-->
        </section>
        <!--end of welcome section-->



        <!--Start of volunteer-->
       

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

       

        <!--Gmaps-->
        <script src="resources/js/gmaps.min.js"></script>
        <script type="text/javascript">
            var map;
            $(document).ready(function () {
                map = new GMaps({
                    el: '#map',
                    lat: 23.6911078,
                    lng: 90.5112799,
                    zoomControl: true,
                    zoomControlOpt: {
                        style: 'SMALL',
                        position: 'LEFT_BOTTOM'
                    },
                    panControl: false,
                    streetViewControl: false,
                    mapTypeControl: false,
                    overviewMapControl: false,
                    scrollwheel: false,
                });


                map.addMarker({
                    lat: 23.6911078,
                    lng: 90.5112799,
                    title: 'Office',
                    details: {
                        database_id: 42,
                        author: 'Foysal'
                    },
                    click: function (e) {
                        if (console.log)
                            console.log(e);
                        alert('You clicked in this marker');
                    },
                    mouseover: function (e) {
                        if (console.log)
                            console.log(e);
                    }
                });
            });
        </script>
        <!--Google Maps API-->
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBjxvF9oTfcziZWw--3phPVx1ztAsyhXL4"></script>


        <!--Isotope-->
        <script src="resources/js/isotope/min/scripts-min.js"></script>
        <script src="resources/js/isotope/cells-by-row.js"></script>
        <script src="resources/js/isotope/isotope.pkgd.min.js"></script>
        <script src="resources/js/isotope/packery-mode.pkgd.min.js"></script>
        <script src="resources/js/isotope/scripts.js"></script>

        <!--JQuery Click to Scroll down with Menu-->
        <script src="resources/js/jquery.localScroll.min.js"></script>
        <script src="resources/js/jquery.scrollTo.min.js"></script>



        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="resources/js/bootstrap.min.js"></script>
        <!-- Custom JavaScript-->
        <script src="resources/js/main.js"></script>
    </body>

</html>
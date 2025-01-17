<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--<title>JSP Page</title>-->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>StatSports &mdash; Website to See All Cricket Stats </title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Free HTML5 Website Template by freehtml5.co"/>
        <meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive"/>
        <meta name="author" content="freehtml5.co"/>
        <!-- Facebook and Twitter integration -->
        <meta property="og:title" content=""/>
        <meta property="og:image" content=""/>
        <meta property="og:url" content=""/>
        <meta property="og:site_name" content=""/>
        <meta property="og:description" content=""/>
        <meta name="twitter:title" content=""/>
        <meta name="twitter:image" content=""/>
        <meta name="twitter:url" content=""/>
        <meta name="twitter:card" content=""/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">   
        <link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,500,700,800" rel="stylesheet">
        <!-- Animate.css -->
        <link  href="${pageContext.request.contextPath}/resources/css/animate.css" rel="stylesheet">
        <!-- Icomoon Icon Fonts-->
        <link  href="${pageContext.request.contextPath}/resources/css/icomoon.css" rel="stylesheet">

        <!-- Bootstrap -->
        <link  href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet">
        <!-- Magnific Popup -->
        <link  href="${pageContext.request.contextPath}/resources/css/magnific-popup.css" rel="stylesheet">
        <!-- Owl Carousel -->
        <link  href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/css/owl.theme.default.min.css" rel="stylesheet" >
        <!-- Theme style -->
        <link  href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
        <!-- Modernizr JS -->
        <script src="${pageContext.request.contextPath}/resources/js/modernizr-2.6.2.min.js"></script>
        <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">

    </head>
    <body>
        <div class="fh5co-loader"></div>
        <div id="page">
            <nav class="fh5co-nav" role="navigation">
                <div class="top-menu ">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-2">
                                <div id="fh5co-logo">
                                    <a href=""  >StatSports<span>.</span></a>
                                </div>
                            </div>
                            <div class="col-xs-10 text-right menu-1">
                                <ul>
                                    <li class="active">
                                        <a href="" >Home</a>
                                    </li>
                                    </li>
                                    <li class="active">
                                        <a href="../SportStat/contactus"  >Contact us</a>
                                    </li>
                                    <li class="active">
                                        <a href="../SportStat/aboutus"  >About us</a>
                                    </li>
                                     <li class="active">
                                        <a href="../SportStat/schedule"  >Schedule's</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>

            <header id="fh5co-header" class="fh5co-cover" role="banner" data-stellar-background-ratio="0.5">
                <div class="overlay"></div>
                <div id="fh5co-services" class="fh5co-bg-section testing">
                    <c:forEach var="sportList" items="${sportList}" >
                        <div class="container">
                            <div class="row">
                                <div class="col-md-4 text-center animate-box">

                                    <div class="services column" id="${sportList.sports_id}" onclick="sendRequest(${sportList.sports_id})">
                                        <img class="img-responsive" src="" alt="">
                                        <figure>
                                            <% System.out.println(request.getContextPath());%>
                                            <img src="${pageContext.request.contextPath}/${sportList.sports_image}" width="300px" height="300px" alt="Trulli" ">
                                        </figure>
                                        <h2 style="color:whitesmoke">${sportList.sports_name}</h2>
                                    </div>
                                </div>
                            </c:forEach>       
                        </div>
                    </div>
                </div>
            </header>
        </div>


        <div id="fh5co-gallery">
            <div class="container">
                <div class="row fuck">
                    <div class="col-md-8 col-md-offset-2 text-center fh5co-heading animate-box">
                        <h2>Sports gallery</h2>
                        <p>Here are some intresting facts about diffrent sports.</p>
                    </div>
                </div>
            </div>
            <div class="container-fluid">
                <div class="row row-bottom-padded-md">
                    <div class="col-md-12">
                        <ul id="fh5co-portfolio-list">

                            <li class="one-third animate-box" data-animate-effect="fadeIn" style="background-image: url(${pageContext.request.contextPath}/resources/images/splash1.jpg); ">
                                <a href="#">
                                    <div class="case-studies-summary">
                                        <span>NBA</span>
                                        <h2>Splash Brothers in NBA: Stephen Curry and Klay Thompson</h2>
                                    </div>
                                </a>
                            </li>
                            <li class="one-third animate-box" data-animate-effect="fadeIn" style="background-image: url(${pageContext.request.contextPath}/resources/images/rs1.jpg); ">
                                <a href="#">
                                    <div class="case-studies-summary">
                                        <span>CricShorts</span>
                                        <h2>The Golden Bat Award in 2019 was won by : Rohit Sharma</h2>
                                    </div>
                                </a>
                            </li>

                            <li class="one-third animate-box" data-animate-effect="fadeIn" style="background-image: url(${pageContext.request.contextPath}/resources/images/rm.jpg); ">
                                <a href="#">
                                    <div class="case-studies-summary">
                                        <span>Soccer</span>
                                        <h2>Most Number of UCL won by any team : Real Madrid</h2>
                                    </div>
                                </a>
                            </li>

                            <li class="one-third animate-box" data-animate-effect="fadeIn" style="background-image: url(${pageContext.request.contextPath}/resources/images/lakers.jpg); ">
                                <a href="#">
                                    <div class="case-studies-summary">
                                        <span>NBA</span>
                                        <h2>Los Angeles Lakers holds the longest streak of winning games.</h2>
                                    </div>
                                </a>
                            </li>
                            <li class="one-third animate-box" data-animate-effect="fadeIn" style="background-image: url(${pageContext.request.contextPath}/resources/images/fb.jpg); ">
                                <a href="#">
                                    <div class="case-studies-summary">
                                        <span>Soccer</span>
                                        <h2>The first player in Soccer to win 5 Ballons d'Or is Lionel Messi.</h2>
                                    </div>
                                </a>
                            </li>
                            <li class="two-third animate-box" data-animate-effect="fadeIn" style="background-image: url(${pageContext.request.contextPath}/resources/images/lord.jpg); ">
                                <a href="#">
                                    <div class="case-studies-summary">
                                        <span>CricKnowledge</span>
                                        <h2>Home Of Cricket CLub : Lord's Cricket Ground</h2>
                                    </div>
                                </a>
                            </li>
                            <li class="one-third animate-box" data-animate-effect="fadeIn" style="background-image: url(${pageContext.request.contextPath}/resources/images/cf.jpg); ">
                                <a href="#">
                                    <div class="case-studies-summary">
                                        <span>NBA</span>
                                        <h2>Chris Ford was the first person to score first 3 pointer in NBA.</h2>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <footer id="fh5co-footer" class="fh5co-bg" style="background-image: url(${pageContext.request.contextPath}/resources/images/img_bg_1.jpg);" role="contentinfo">
            <div class="overlay"></div>
            <div class="container">
                <div class="row row-pb-md">
                    <div class="col-md-4 fh5co-widget">
                        <h3>A Little About StatSports.</h3>
                        <p>StateSports is an Indian sports website owned by Team Alpha. It features intresting facts about diffrent sports and live coverage of diffrent sports matches, player stats and team rankings.
                        </p>
                    </div>
                </div>
                <div class="row copyright">
                    <div class="col-md-12 text-center">
                        <p>
                            <small class="block">&copy; 2021 State Sports. All Rights Reserved.</small> 
                            <small class="block">Designed by Team Alpha </small>
                        </p>
                        <p>
                        <ul class="fh5co-social-icons">
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                            <li><a href="#"><i class="fa fa-github"></i></a></li>
                        </ul>
                        </p>
                    </div>
                </div>
            </div>
        </footer>
    </div>

    <div class="gototop js-top">
        <a href="#" class="js-gotop">
            <i class="fa fa-angle-double-up" style="font-size:48px;color:red"></i>
        </a>
    </div>
    <script>
        function sendRequest(sports_id) {
            if ((sports_id == 1) || (sports_id == 2) || (sports_id == 4) || (sports_id == 5))
                window.location = '../SportStat/tournament?sports_id=' + sports_id;
            else
                window.location = '../SportStat/construction';
        }
    </script>
    <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
    <!-- jQuery Easing -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery.easing.1.3.js"></script>
    <!-- Bootstrap -->
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <!-- Waypoints -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery.waypoints.min.js"></script>
    <!-- Stellar Parallax -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery.stellar.min.js"></script>
    <!-- Carousel -->
    <script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
    <!-- countTo -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery.countTo.js"></script>
    <!-- Magnific Popup -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/magnific-popup-options.js"></script>
    <!-- Main -->
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/modernizr-2.6.2.min.js"></script>
</body>
</html>

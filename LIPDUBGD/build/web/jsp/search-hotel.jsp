<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from demo.gridgum.com/templates/Travel-agency/search-hotel.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 24 Aug 2020 11:15:51 GMT -->
<head>
    <title>Search Hotel</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <META NAME="ROBOTS" CONTENT="NOINDEX, NOFOLLOW">

    <link href="../front/bootstrap.css" rel="stylesheet">
        <link href="../front/font-awesome.css" rel="stylesheet">
        <link href="https://demo.gridgum.com/templates/Travel-agency/css/touchTouch.css" rel="stylesheet">
        <link href="https://demo.gridgum.com/templates/Travel-agency/css/isotope.css" rel="stylesheet">
        <link href="../front/animate.css" rel="stylesheet">
        <link href="../front/select2.css" rel="stylesheet">
        <link href="../front/smoothness/jquery-ui-1.10.0.custom.css" rel="stylesheet">
        <link href="../front/style.css" rel="stylesheet">

        <script src="../frontt/jquery.js"></script>    
        <script src="../frontt/jquery-ui.js"></script>
        <script src="../frontt/jquery-migrate-1.2.1.min.js"></script>
        <script src="../frontt/jquery.easing.1.3.js"></script>
        <script src="../frontt/superfish.js"></script>

        <script src="../frontt/select2.js"></script>

        <script src="../frontt/jquery.parallax-1.1.3.resize.js"></script>

        <script src="../frontt/SmoothScroll.js"></script>

        <script src="../frontt/jquery.appear.js"></script> 

        <script src="../frontt/jquery.caroufredsel.js"></script>
        <script src="../frontt/jquery.touchSwipe.min.js"></script>

        <script src="../frontt/jquery.ui.totop.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA85u2f3GPNnJhIJeggViAfB8zMkUbCHNE"></script>
        <script src="https://demo.gridgum.com/templates/Travel-agency/js/googlemap2.js"></script>

        <script src="https://demo.gridgum.com/templates/Travel-agency/js/script.js"></script>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="not-front page-post">

<div id="main">

    <div class="top1_wrapper">
        <div class="container">
            <div class="top1 clearfix">
                <div class="email1"><a href="#">support@travelagency.com</a></div>
                <div class="phone1">+917 3386831</div>
                <div class="social_wrapper">
                    <ul class="social clearfix">
                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                        <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                        <li><a href="#"><i class="fa fa-vimeo-square"></i></a></li>
                    </ul>
                </div>
                <div class="lang1">
                    <div class="dropdown">
                        <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">English<span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                            <li><a class="ge" href="#">German</a></li>
                            <li><a class="ru" href="#">Russian</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="top2_wrapper">
        <div class="container">
            <div class="top2 clearfix">
                <header>
                    <div class="logo_wrapper">
                        <a href="https://demo.gridgum.com/templates/Travel-agency/index.html" class="logo">
                            <img src="https://demo.gridgum.com/templates/Travel-agency/images/logo.png" alt="" class="img-responsive">
                        </a>
                    </div>
                </header>
                <div class="navbar navbar_ navbar-default">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <div class="navbar-collapse navbar-collapse_ collapse">
          <ul class="nav navbar-nav sf-menu clearfix">
              <li class="sub-menu sub-menu-1 active"><a href="${contextPath}/AdminLIPDUBB/FrontendController/index.htm">Home<em></em></a>
              </li>
            <li><a href="${contextPath}/AdminLIPDUBB/FrontendController/about.htm">About Us</a></li>
            <li><a href="${contextPath}/AdminLIPDUBB/FrontendController/gallery.htm">Gallery</a></li>
            <li class="sub-menu sub-menu-1"><a href="${contextPath}/AdminLIPDUBB/hotelController/GetAllHotel1.htm">Hotels</a>
    
                    <ul>
                        <li><a href="${contextPath}/AdminLIPDUBB/hotelController/GetAllHotel1.htm">Search Hotels</a></li>
                        <li><a href="${contextPath}/AdminLIPDUBB/hotelController/GetAllHotel2.htm">Booking Hotel</a></li>
                    </ul>
                </li>
            </li>

           
            <li class="sub-menu sub-menu-1"><a href="${contextPath}/AdminLIPDUBB/blogController/getAllBlog1.htm">Blog<em></em></a>
            </li>
            <li><a href="${contextPath}/AdminLIPDUBB/FrontendController/contacts.htm">Contacts</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>

    <div id="google_map2_wrapper"><div id="google_map2"></div></div>

    <div class="breadcrumbs1_wrapper">
        <div class="container">
            <div class="breadcrumbs1"><a href="index.html">Home</a><span>/</span>Pages<span>/</span>Hotels</div>
        </div>
    </div>


    <div id="content">
        <div class="container">

            <div class="row">
                <div class="col-sm-3">
                    <div class="sidebar-block">
                        <form action="javascript:void(0);">
                            <div class="col-sm-12 no-padding">
                                <div class="input1_wrapper">
                                    <label>City:</label>
                                    <div class="input2_inner">
                                        <input type="text" class="input" value="Prague">
                                    </div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="col-sm-12 no-padding margin-top">
                                <div class="input1_wrapper">
                                    <label>Check-In:</label>
                                    <div class="input1_inner">
                                        <input type="text" class="input datepicker" value="16/07/2014">
                                    </div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="col-sm-12 no-padding margin-top">
                                <div class="input1_wrapper">
                                    <label>Check-Out:</label>
                                    <div class="input1_inner">
                                        <input type="text" class="input datepicker" value="26/07/2014">
                                    </div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="col-sm-12 no-padding margin-top">
                                <div class="input1_wrapper">
                                    <label class="col-md-6" style="padding-left:0;padding-top:12px;">Rooms:</label>
                                    <div class="input2_inner col-md-6" style="padding-right:0;padding-left:0;">
                                        <input type="text" class="input" value="1">
                                    </div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="col-sm-12 no-padding margin-top">
                                <div class="input2_wrapper">
                                    <label class="col-md-6" style="padding-left:0;padding-top:12px;">Adults:</label>
                                    <div class="input2_inner col-md-6" style="padding-right:0;padding-left:0;">
                                        <input type="text" class="form-control" value="2">
                                    </div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="col-sm-12 no-padding margin-top">
                                <div class="input1_wrapper">
                                    <label class="col-md-6" style="padding-left:0;padding-top:12px;">Children:</label>
                                    <div class="input2_inner col-md-6" style="padding-right:0;padding-left:0;">
                                        <input type="text" class="input" value="0">
                                    </div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <label class="col-md-6" style="padding-left:0;padding-top:12px;"></label>
                            <div class="no-padding margin-top col-md-6 text-right" style="margin-top:30px;">
                                <button class="btn btn-default btn-cf-submit" style="width:100%;">SEARCH</button>
                            </div>
                            <div class="clearfix"></div>

                        </form>

                    </div>
                    <div class="clearfix"></div>
                    <div class="margin-top"></div>

                    <div class="star_rating_wrapper">
                        <div class="title">Star Rating</div>
                        <div class="content">
                            <div class="star_rating">
                                <form>
                                    <div>
                                        <input id="checkbox-1" class="checkbox1-custom" name="checkbox-1" type="checkbox" checked>
                                        <label for="checkbox-1" class="checkbox1-custom-label">
                                        <img src="images/star1.png" alt="">
                                        <img src="images/star1.png" alt="">
                                        <img src="images/star1.png" alt="">
                                        <img src="images/star1.png" alt="">
                                        <img src="images/star1.png" alt=""><span>5 Stars</span></label>
                                    </div>
                                    <div>
                                        <input id="checkbox-2" class="checkbox1-custom" name="checkbox-2" type="checkbox">
                                        <label for="checkbox-2" class="checkbox1-custom-label">

                                            <img src="images/star1.png" alt="">
                                            <img src="images/star1.png" alt="">
                                            <img src="images/star1.png" alt="">
                                            <img src="images/star1.png" alt="">
                                            <img src="images/star2.png" alt=""><span>4 Stars</span></label>
                                    </div>
                                    <div>
                                        <input id="checkbox-3" class="checkbox1-custom" name="checkbox-3" type="checkbox" checked>
                                        <label for="checkbox-3" class="checkbox1-custom-label">
                                            <img src="images/star1.png" alt="">
                                        <img src="images/star1.png" alt="">
                                        <img src="images/star1.png" alt="">
                                        <img src="images/star2.png" alt="">
                                        <img src="images/star2.png" alt=""><span>3 Stars</span></label>
                                    </div>
                                    <div>
                                        <input id="checkbox-4" class="checkbox1-custom" name="checkbox-4" type="checkbox">
                                        <label for="checkbox-4" class="checkbox1-custom-label">
                                            <img src="images/star1.png" alt="">
                                        <img src="images/star1.png" alt="">
                                        <img src="images/star2.png" alt="">
                                        <img src="images/star2.png" alt="">
                                        <img src="images/star2.png" alt=""><span>2 Stars</span></label>
                                    </div>
                                    <div>
                                        <input id="checkbox-5" class="checkbox1-custom" name="checkbox-5" type="checkbox">
                                        <label for="checkbox-5" class="checkbox1-custom-label">
                                            <img src="images/star1.png" alt="">
                                        <img src="images/star2.png" alt="">
                                        <img src="images/star2.png" alt="">
                                        <img src="images/star2.png" alt="">
                                        <img src="images/star2.png" alt=""><span>1 Stars</span></label>
                                    </div>

                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="margin-top"></div>
                    <div class="sm_slider sm_slider1">
                        <a class="sm_slider_prev" href="#"></a>
                        <a class="sm_slider_next" href="#"></a>
                        <div class="">
                            <div class="carousel-box">
                                <div class="inner">
                                    <div class="carousel main">
                                        <ul>
                                            <li>
                                                <div class="sm_slider_inner">
                                                    <div class="txt1">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam.</div>
                                                    <div class="txt2">George Smith</div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="sm_slider_inner">
                                                    <div class="txt1">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam.</div>
                                                    <div class="txt2">Adam Parker</div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="col-sm-9">

                    <form action="javascript:;" class="form3 clearfix">
                        <div class="select1_wrapper txt">
                            <label>Sort by:</label>
                        </div>
                        <div class="select1_wrapper sel2">
                            <div class="select1_inner">
                                <select class="select2 select" style="width: 100%">
                                    <option value="1">Name</option>
                                    <option value="2">Name2</option>
                                    <option value="2">Name3</option>
                                </select>
                            </div>
                        </div>
                        <div class="select1_wrapper sel2">
                            <div class="select1_inner">
                                <select class="select2 select" style="width: 100%">
                                    <option value="1">Price (low)</option>
                                    <option value="2">Price2</option>
                                    <option value="2">Price3</option>
                                </select>
                            </div>
                        </div>
                        <div class="select1_wrapper sel2">
                            <div class="select1_inner">
                                <select class="select2 select" style="width: 100%">
                                    <option value="1">Stars</option>
                                    <option value="2">Raiting2</option>
                                    <option value="2">Raiting3</option>
                                </select>
                            </div>
                        </div>
                    </form>

                    <div class="row">
                      <c:forEach items="${listHotel}" var="listHotel">
                    <div class="col-sm-4">
                      <div class="thumb5">
                        <div class="thumbnail clearfix">
                          <figure>
                            <img src="${listHotel.images}" alt="" class="img-responsive">
                            <div class="over">
                              <div class="v1">${listHotel.hotelName} <span>6.9 Review score</span></div>
                              <div class="v2">${listHotel.descriptions}</div>
                            </div>
                          </figure>
                          <div class="caption">
                            <div class="txt1">${listHotel.hotelName}</div>
                            <div class="txt2">${listHotel.descriptions}</div>
                            <div class="txt3 clearfix">
                              <div class="left_side">
                                <div class="price">${listHotel.price}</div>
                                <div class="stars2">
                                  <img src="../images/star1.png" alt="">
                                  <img src="../images/star1.png" alt="">
                                  <img src="../images/star1.png" alt="">
                                  <img src="../images/star1.png" alt="">
                                  <img src="../images/star3.png" alt="">
                                </div>
                              </div>
                              <div class="right_side"><a href="<%=request.getContextPath()%>/cartController/addCart.htm?hotelId=${listHotel.hotelId}"> Order </a></div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    </c:forEach>
                    
                        

                    <div class="pager_wrapper">
                        <ul class="pager clearfix">
                            <li class="prev"><a href="#">Previous</a></li>
                            <li class="li"><a href="#">1</a></li>
                            <li class="active"><a href="#">2</a></li>
                            <li class="li"><a href="#">3</a></li>
                            <li class="li"><a href="#">4</a></li>
                            <li class="li"><a href="#">5</a></li>
                            <li class="li"><a href="#">6</a></li>
                            <li class="li"><a href="#">7</a></li>
                            <li class="li"><a href="#">8</a></li>
                            <li class="li"><a href="#">9</a></li>
                            <li class="li"><a href="#">10</a></li>
                            <li class="next"><a href="#">Next</a></li>
                        </ul>
                    </div>





                </div>
            </div>


        </div>
    </div>







    <div class="bot1_wrapper">
        <div class="container">
            <div class="row">
                <div class="col-sm-3">
                    <div class="logo2_wrapper">
                        <a href="index.html" class="logo2">
                            <img src="images/logo2.png" alt="" class="img-responsive">
                        </a>
                    </div>
                    <p>
                        Nam liber tempor cum soluta nobis option congue nihil imperdiet doming id quod mazim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna.
                    </p>
                    <p>
                        <a href="#" class="btn-default btn2">Read More</a>
                    </p>
                </div>
                <div class="col-sm-3">
                    <div class="bot1_title">Travel Specialists</div>
                    <ul class="ul1">
                        <li><a href="#">First Class Flights</a></li>
                        <li><a href="#">Accessible Travel</a></li>
                        <li><a href="#">Amazing Cruises</a></li>
                    </ul>

                    <div class="social2_wrapper">
                        <ul class="social2 clearfix">
                            <li class="nav1"><a href="#"></a></li>
                            <li class="nav2"><a href="#"></a></li>
                            <li class="nav3"><a href="#"></a></li>
                            <li class="nav4"><a href="#"></a></li>
                            <li class="nav5"><a href="#"></a></li>
                            <li class="nav6"><a href="#"></a></li>
                        </ul>
                    </div>

                </div>
                <div class="col-sm-3">
                    <div class="bot1_title">Our Twitter</div>
                    <div class="twits1">
                        <div class="twit1">
                            <a href="#"> @travel</a> Lorem ipsum dolor sit amet, consectetuer adipiscing elit
                            <div class="date">5 minutes ago</div>
                        </div>
                        <div class="twit1">
                            <a href="#">@leo</a> Nam liber tempor cum soluta nobis option congue nihil imperdiet doming id quod mazim.
                            <div class="date">2 days ago</div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="bot1_title">Newsletter</div>
                    <div class="newsletter_block">
                        <div class="txt1">Inspiration, ideas, news and your feedback.</div>
                        <div class="newsletter-wrapper clearfix">
                            <form class="newsletter" action="javascript:;">
                                <input type="text" name="s" value='Email Address' onBlur="if(this.value=='') this.value='Email Address'" onFocus="if(this.value =='Email Address' ) this.value=''">
                                <a href="#" class="btn-default btn3">SUBMIT</a>
                            </form>
                        </div>
                    </div>
                    <div class="phone2">1-900-819-999</div>
                    <div class="support1"><a href="#">support@templates-support.com</a></div>
                </div>
            </div>
        </div>
    </div>

    <div class="bot2_wrapper">
        <div class="container">
            <div class="left_side">
                Copyright © 2020 <a href="#" target="_blank"><strong>LIPDUBGD</strong></a>   <span>|</span>   <a href="#">Privacy Policy</a>   <span>|</span>   <a href="#">About Us</a>   <span>|</span>   <a href="#">FAQ</a>   <span>|</span>   <a href="#">Contact Support</a>
            </div>
            <div class="right_side">Designed by <a href="#" target="_blank"><strong>LIPDUBGD</strong></a></div>
        </div>
    </div>





















</div>
<script src="https://demo.gridgum.com/templates/Travel-agency/js/bootstrap.min.js"></script>
</body>

<!-- Mirrored from demo.gridgum.com/templates/Travel-agency/search-hotel.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 24 Aug 2020 11:15:51 GMT -->
</html>
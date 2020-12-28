<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from demo.gridgum.com/templates/Travel-agency/gallery.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 24 Aug 2020 11:15:44 GMT -->
<head>
<title>Gallery</title>
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
<body class="not-front page-gallery">

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
          <a href="index.html" class="logo">
            <img src="images/logo.png" alt="" class="img-responsive">
          </a>
        </div>
      </header>
      <div class="logo_wrapper">
          <a href="${contextPath}/AdminLIPDUBB/FrontendController/index.htm" class="logo">
            <img src="../images/logo1.png" alt="" class="img-responsive">
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

<div id="content">
  <div class="container">

    <div id="options" class="clearfix">
        <ul id="filters" class="pagination option-set clearfix" data-option-key="filter">
          <li><a href="#filter" data-option-value="*" class="selected">All</a></li>
          <li><a href="#filter" data-option-value=".isotope-filter1">tours</a></li>
          <li><a href="#filter" data-option-value=".isotope-filter2">cruises</a></li>
          <li><a href="#filter" data-option-value=".isotope-filter3">hotels</a></li>
        </ul>
      </div><!-- #options -->

      <div class="isotope-box">
        <div id="container" class="clearfix">
          <ul class="thumbnails clearfix" id="isotope-items">
            <div class="grid-sizer col-sm-4"></div>
            <div class="gutter-sizer"></div>

            <li class="element isotope-filter3 col-sm-4 col-xs-12">
              <div class="thumb-isotope">
                <div class="thumbnail clearfix">
                  <a href="../images/gallery01.jpg" rel="prettyPhoto[mix]" title="Photo">
                    <figure>
                      <img src="images/gallery01.jpg" alt=""><em></em>
                    </figure>
                    <div class="caption">
                      <div class="txt1">cannes, france</div>
                      <div class="txt2">hotel carlton</div>
                    </div>
                  </a>
                </div>
              </div>
            </li>
            <li class="element isotope-filter1 isotope-filter2 col-sm-8 col-xs-12">
              <div class="thumb-isotope">
                <div class="thumbnail clearfix">
                  <a href="../images/gallery02.jpg" rel="prettyPhoto[mix]" title="Photo">
                    <figure>
                      <img src="../images/gallery02.jpg" alt=""><em></em>
                    </figure>
                    <div class="caption">
                      <div class="txt1">cannes, france</div>
                      <div class="txt2">hotel carlton</div>
                    </div>
                  </a>
                </div>
              </div>
            </li>
            <li class="element isotope-filter3 col-sm-4 col-xs-12">
              <div class="thumb-isotope">
                <div class="thumbnail clearfix">
                  <a href="../images/gallery03.jpg" rel="prettyPhoto[mix]" title="Photo">
                    <figure>
                      <img src="../images/gallery03.jpg" alt=""><em></em>
                    </figure>
                    <div class="caption">
                      <div class="txt1">cannes, france</div>
                      <div class="txt2">hotel carlton</div>
                    </div>
                  </a>
                </div>
              </div>
            </li>
            <li class="element isotope-filter1 col-sm-4 col-xs-12">
              <div class="thumb-isotope">
                <div class="thumbnail clearfix">
                  <a href="../images/gallery04.jpg" rel="prettyPhoto[mix]" title="Photo">
                    <figure>
                      <img src="../images/gallery04.jpg" alt=""><em></em>
                    </figure>
                    <div class="caption">
                      <div class="txt1">cannes, france</div>
                      <div class="txt2">hotel carlton</div>
                    </div>
                  </a>
                </div>
              </div>
            </li>
            <li class="element isotope-filter1 col-sm-4 col-xs-12">
              <div class="thumb-isotope">
                <div class="thumbnail clearfix">
                  <a href="../images/gallery05.jpg" rel="prettyPhoto[mix]" title="Photo">
                    <figure>
                      <img src="../images/gallery05.jpg" alt=""><em></em>
                    </figure>
                    <div class="caption">
                      <div class="txt1">cannes, france</div>
                      <div class="txt2">hotel carlton</div>
                    </div>
                  </a>
                </div>
              </div>
            </li>
            <li class="element isotope-filter3 isotope-filter2 col-sm-4 col-xs-12">
              <div class="thumb-isotope">
                <div class="thumbnail clearfix">
                  <a href="../images/gallery07.jpg" rel="prettyPhoto[mix]" title="Photo">
                    <figure>
                      <img src="../images/gallery07.jpg" alt=""><em></em>
                    </figure>
                    <div class="caption">
                      <div class="txt1">cannes, france</div>
                      <div class="txt2">hotel carlton</div>
                    </div>
                  </a>
                </div>
              </div>
            </li>
            <li class="element isotope-filter1 col-sm-4 col-xs-12">
              <div class="thumb-isotope">
                <div class="thumbnail clearfix">
                  <a href="../images/gallery06.jpg" rel="prettyPhoto[mix]" title="Photo">
                    <figure>
                      <img src="../images/gallery06.jpg" alt=""><em></em>
                    </figure>
                    <div class="caption">
                      <div class="txt1">cannes, france</div>
                      <div class="txt2">hotel carlton</div>
                    </div>
                  </a>
                </div>
              </div>
            </li>
            <li class="element isotope-filter2 col-sm-12 col-xs-12">
              <div class="thumb-isotope">
                <div class="thumbnail clearfix">
                  <a href="../images/gallery08.jpg" rel="prettyPhoto[mix]" title="Photo">
                    <figure>
                      <img src="../images/gallery08.jpg" alt=""><em></em>
                    </figure>
                    <div class="caption">
                      <div class="txt1">cannes, france</div>
                      <div class="txt2">hotel carlton</div>
                    </div>
                  </a>
                </div>
              </div>
            </li>
            <li class="element isotope-filter3 col-sm-4 col-xs-12">
              <div class="thumb-isotope">
                <div class="thumbnail clearfix">
                  <a href="../images/gallery09.jpg" rel="prettyPhoto[mix]" title="Photo">
                    <figure>
                      <img src="../images/gallery09.jpg" alt=""><em></em>
                    </figure>
                    <div class="caption">
                      <div class="txt1">cannes, france</div>
                      <div class="txt2">hotel carlton</div>
                    </div>
                  </a>
                </div>
              </div>
            </li>
            <li class="element isotope-filter5 col-sm-8 col-xs-12">
              <div class="thumb-isotope">
                <div class="thumbnail clearfix">
                  <a href="../images/gallery11.jpg" rel="prettyPhoto[mix]" title="Photo">
                    <figure>
                      <img src="../images/gallery11.jpg" alt=""><em></em>
                    </figure>
                    <div class="caption">
                      <div class="txt1">cannes, france</div>
                      <div class="txt2">hotel carlton</div>
                    </div>
                  </a>
                </div>
              </div>
            </li>
            <li class="element isotope-filter1 isotope-filter3 col-sm-4 col-xs-12">
              <div class="thumb-isotope">
                <div class="thumbnail clearfix">
                  <a href="../images/gallery10.jpg" rel="prettyPhoto[mix]" title="Photo">
                    <figure>
                      <img src="../images/gallery10.jpg" alt=""><em></em>
                    </figure>
                    <div class="caption">
                      <div class="txt1">cannes, france</div>
                      <div class="txt2">hotel carlton</div>
                    </div>
                  </a>
                </div>
              </div>
            </li>




          </ul>
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
            <img src="https://demo.gridgum.com/templates/Travel-agency/images/logo2.png" alt="" class="img-responsive">
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

<!-- Mirrored from demo.gridgum.com/templates/Travel-agency/gallery.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 24 Aug 2020 11:15:44 GMT -->
</html>
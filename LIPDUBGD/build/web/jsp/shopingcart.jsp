<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>ShoppingCart</title>
	<link href="../front/bootstrap.css" rel="stylesheet">
<link href="../front/style.css" rel="stylesheet">


</head>
<body>
 	  
 	    <div class="gh1">
 	    		 <div class="container">
 	 	 	 <div  class="row">
                             
 	 	 	 	 	<div class="col-lg-12 giohang cochu">
                                            <span><h2>Order Detail</h2></span>
                                <div class="col-lg-4">	     
                                <td><a href="<%=request.getContextPath()%>/hotelController/GetAllHotel1.htm">Continue Hotel.... </a></td>
 	 
 	 	 	 	</div>
 	 	 	 </div>
                                
 	 	 </div>
 	    </div>
 <main>

 	 	 <div class="container">
 	 	 	 <div class="gh"> 
 	 	 	 <div  class="row">
 	 	 	 	<div class="col-lg-6">
 	 	 	 		 <div>
 	 	 	<input type="checkbox"> <span>Ordered</span> 
 	 	 	 		 </div>
 	 	 	 	</div>
 	 	 	 	<div class="col-lg-6">
 	 	 	 		 <div class="row"> 
 	 	 	 		 	<div class="col-lg-2">
 	 	 	 		 		<span>Hotel ID </span>
 	 	 	 		 	</div>
 	 	 	 		 	<div class="col-lg-2">
 	 	 	 		 		<span>Hotel Name </span>
 	 	 	 		 	</div>
 	 	 	 		 	<div class="col-lg-2">
 	 	 	 		 		<span>Quantity  </span>
 	 	 	 		 	</div>
 	 	 	 		 	<div class="col-lg-2">
 	 	 	 		 		<span>Price  </span>
 	 	 	 		 	</div>
                                                <div class="col-lg-2">
 	 	 	 		 		<span>Amount  </span>
 	 	 	 		 	</div>
                                                <div class="col-lg-2">
 	 	 	 		 		<span>Action  </span>
 	 	 	 		 	</div>
 	 	 	 		 </div>
 	 	 	 	</div>
 	 	 	 
 	 	 	 </div>
 	 	 </div>
 	 	</div>
 	   
 	   	 	  <div class="container">
 	   	 	  	<div class="gh2">
 	 	 	 <div  class="row">
 	 	 	 	<div class="col-lg-6">
 	 	 	 		 <div class="row">
 	 	 	 		<div class="col-lg-6">
 	 	      <c:forEach items="${listCart}" var="cart">
                          <tr>
                             
 	 	 	 	<div class="col-lg-4">
                                   
 	 	 	 		 <div>
                                            
 	 	 	 		 </div>
 	 	 	 	</div>
                                                    </tr>

                                         </c:forEach>
 	 	 	 		 </div>
 	 	 	<div class="col-lg-7">
 	 	      <div class="tieude">
 	 	      	<span> Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos quis aspernatur, perferendis omnis enim cumque vitae officia. Repellendus, fugit aut neque voluptas perspiciatis facilis enim, nostrum cupiditate obcaecati adipisci quia.</span>
 	 	      </div>
 	 	 	 		 </div>
 	 	 	 		 </div>
 	 	 	 	</div>
 	 	 	 	<div class="col-lg-6">
 	 	 	 	  <div class="row"> 
                                      <c:forEach items="${listCart}" var="cart">
                                          <tr>
                                                
 	 	 	 		 	<div class="col-lg-2">
 	 	 	 		 		<span><td>${cart.hotel.hotelId} </td></span>
 	 	 	 		 	</div>
 	 	 	 		 	<div class="col-lg-2">
 	 	 	 		 		<span><td>${cart.hotel.hotelName}</td></span>
 	 	 	 		 	</div>
 	 	 	 		 	<div class="col-lg-2">
 	 	 	 		 	<td> <input type="text" value="${cart.quantity}" name="quantity"/></td>
 	 	 	 		 	</div>
 	 	 	 		 	<div class="col-lg-2">
 	 	 	 		 		<span><td>${cart.hotel.price}</td></span>
 	 	 	 		 	</div>
                                                <div class="col-lg-2">
 	 	 	 		 		<span><td>${cart.hotel.price*cart.quantity}</td></span>
 	 	 	 		 	</div>
                                                <div class="col-lg-2">
                            <input type="submit" value="Update"/><a href="deleteCart.htm?hotelId=${cart.hotel.hotelId}">Delete </a>
                            </td></div>
                        
                                                </c:forEach>
                                          
                        <tr>
                        <td colspan="1">Total Money</td>
                        <td colspan="2">${tongtien} </td>
                    </tr>
 	 	 	 		 	</div>  
 	 	 	 		 </div>
 	 	 	 
 	 	 	 </div>
 	 	 </div>
 	   </div>

 </main>
   
 	  
 
 <footer>
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
 </footer>
<script src="js/bootstrap.min.js"></script>
</body>
</html>
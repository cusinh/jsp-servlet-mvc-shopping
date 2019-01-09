<%@page import="java.util.Map"%>
<%@page import="model.Item"%>

<!DOCTYPE html>
<html>
    <jsp:include page="WEB-INF/head_tag.jsp">
        <jsp:param name="title" value="checkout"/>
    </jsp:include>
<body>
<!--header-->
<%@include file="WEB-INF/header_tag.jsp" %>
<!--banner-->

<div class="banner-top">
	<div class="container">
		<h1>Checkout</h1>
		<em></em>
		<h2><a href="index.jsp">Home</a><label>/</label>Checkout</h2>
	</div>
</div>
<div class="check-out">
<div class="container">
	
	<div class="bs-example4" data-example-id="simple-responsive-table">
    <div class="table-responsive">
    	    <table class="table-heading simpleCart_shelfItem">
		  <tr>
			<th class="table-grid">Item</th>
					
			<th>Prices</th>
			<th >Delivery </th>
			<th>Quantity</th>
		  </tr>
                  <%for (Map.Entry<Integer, Item> list : cart.getCartItems().entrySet()) {%>
                  
		  <tr class="cart-header">
			<td class="ring-in"><a href="#" class="at-in"><img src="<%=list.getValue().getProduct().getProductImage()%>" class="img-responsive" alt=""></a>
			<div class="sed">
				<h5><a href="#"><%=list.getValue().getProduct().getProductName()%></a></h5>
				<p><%=list.getValue().getProduct().getProductDescription()%></p>			
			</div>
			<div class="clearfix"> </div>
			<div class="close1"><a class="item_add hvr-skew-backward" href="ProcessCart?command=remove&ProductId=<%=list.getValue().getProduct().getProductId()%>">X</a> </div></td>
			<td>$<%=list.getValue().getProduct().getProductPrice()%></td>
			<td>FREE SHIPPING</td>
			<td class="item_price"><%=list.getValue().getQuantity()%></td>

		  </tr>	
                  
                  <%}%>
            </table>>
	</div>
	</div>
	<div class="produced">
	<a href="checkout_counter.jsp" class="hvr-skew-backward">Produced To Buy</a>
	 </div>
</div>
</div>

<!--//login-->
<!--brand-->
		<div class="container">
			<div class="brand">
				<div class="col-md-3 brand-grid">
					<img src="images/ic.png" class="img-responsive" alt="">
				</div>
				<div class="col-md-3 brand-grid">
					<img src="images/ic1.png" class="img-responsive" alt="">
				</div>
				<div class="col-md-3 brand-grid">
					<img src="images/ic2.png" class="img-responsive" alt="">
				</div>
				<div class="col-md-3 brand-grid">
					<img src="images/ic3.png" class="img-responsive" alt="">
				</div>
				<div class="clearfix"></div>
			</div>
			</div>
			<!--//brand-->
	<!--//content-->
	<!--//footer-->
	<div class="footer">
	<div class="footer-middle">
				<div class="container">
					<div class="col-md-3 footer-middle-in">
						<a href="index.jsp"><img src="images/log.png" alt=""></a>
						<p>Suspendisse sed accumsan risus. Curabitur rhoncus, elit vel tincidunt elementum, nunc urna tristique nisi, in interdum libero magna tristique ante. adipiscing varius. Vestibulum dolor lorem.</p>
					</div>
					
					<div class="col-md-3 footer-middle-in">
						<h6>Information</h6>
						<ul class=" in">
							<li><a href="404.jsp">About</a></li>
							<li><a href="contact.jsp">Contact Us</a></li>
							<li><a href="#">Returns</a></li>
							<li><a href="contact.jsp">Site Map</a></li>
						</ul>
						<ul class="in in1">
							<li><a href="#">Order History</a></li>
							<li><a href="wishlist.jsp">Wish List</a></li>
							<li><a href="login.jsp">Login</a></li>
						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="col-md-3 footer-middle-in">
						<h6>Tags</h6>
						<ul class="tag-in">
							<li><a href="#">Lorem</a></li>
							<li><a href="#">Sed</a></li>
							<li><a href="#">Ipsum</a></li>
							<li><a href="#">Contrary</a></li>
							<li><a href="#">Chunk</a></li>
							<li><a href="#">Amet</a></li>
							<li><a href="#">Omnis</a></li>
						</ul>
					</div>
					<div class="col-md-3 footer-middle-in">
						<h6>Newsletter</h6>
						<span>Sign up for News Letter</span>
							<form>
								<input type="text" value="Enter your E-mail" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='Enter your E-mail';}">
								<input type="submit" value="Subscribe">	
							</form>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
			<div class="footer-bottom">
				<div class="container">
					<ul class="footer-bottom-top">
						<li><a href="#"><img src="images/f1.png" class="img-responsive" alt=""></a></li>
						<li><a href="#"><img src="images/f2.png" class="img-responsive" alt=""></a></li>
						<li><a href="#"><img src="images/f3.png" class="img-responsive" alt=""></a></li>
					</ul>
					<p class="footer-class">&copy; 2016 Shopin. All Rights Reserved | Design by  <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
		<!--//footer-->
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

	<script src="js/simpleCart.min.js"> </script>
<!-- slide -->
<script src="js/bootstrap.min.js"></script>
 
</body>
</html>
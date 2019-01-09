<%-- 
    Document   : header_tag
    Created on : Dec 15, 2018, 10:15:24 PM
    Author     : Sinh
--%>

<%@page import="java.util.Map"%>
<%@page import="model.Item"%>
<%-- 
    Document   : header_tag
    Created on : Oct 19, 2018, 10:58:43 PM
    Author     : Sinh
--%>
<%@page import="model.Cart"%>
<%@page import="model.CategoryBean"%>
<%@page import="dao.CategoryDAO"%>
<%@page import="model.ProfileBean"%>
<%
    ProfileBean profileBean = (ProfileBean) session.getAttribute("user");
    CategoryDAO cat = new CategoryDAO();
    Cart cart = (Cart) session.getAttribute("cart");
    if (cart == null) {
        cart = new Cart();
        session.setAttribute("cart", cart);
    }
%>
<!--header-->
<div class="header">
    <div class="container">
        <div class="head">
            <div class=" logo">
                <a href="index.jsp"><img src="images/logo.png" alt=""></a>	
            </div>
        </div>
    </div>
    <div class="header-top">
        <div class="container">
            <div class="col-sm-5 col-md-offset-2  header-login">
                <%
                    if (session.getAttribute("user") == null) {
                %>
                <ul>
                    <li><a href="register.jsp">Register</a></li>
                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="checkout.jsp">Logout</a></li>
                </ul>
                <%
                } else {
                %>
                <ul >
                    <li><a href="#">Hello: <%= profileBean.getName()%></a></li>
                    <li><a href="ProcessLogout">Logout</a></li>
                </ul>

                <% }
                %>
            </div>

            <div class="col-sm-5 header-social">		
                <ul >
                    <li><a href="#"><i></i></a></li>
                    <li><a href="#"><i class="ic1"></i></a></li>
                    <li><a href="#"><i class="ic2"></i></a></li>
                    <li><a href="#"><i class="ic3"></i></a></li>
                    <li><a href="#"><i class="ic4"></i></a></li>
                </ul>

            </div>
            <div class="clearfix"> </div>
        </div>
    </div>

    <div class="container">

        <div class="head-top">

            <div class="col-sm-8 col-md-offset-2 h_menu4">
                <nav class="navbar nav_bottom" role="navigation">

                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header nav_2">
                        <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>

                    </div> 
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
                        <ul class="nav navbar-nav nav_1">
                            <li><a class="color" href="index.jsp">Home</a></li>

                            <li class="dropdown mega-dropdown active">
                                <a class="color1" href="#" class="dropdown-toggle" data-toggle="dropdown">Women<span class="caret"></span></a>				
                                <div class="dropdown-menu ">
                                    <div class="menu-top">
                                        <div class="col1">
                                            <div class="h_nav">
                                                <h4>Category</h4>
                                                <%for (CategoryBean cb : cat.getListCategory("women")) {%>
                                                <ul>
                                                    <li><a href="product.jsp?category=<%=cb.getCategoryId()%>"><%=cb.getCategoryName()%></a></li>
                                                </ul>	
                                                <%}%>
                                            </div>							
                                        </div>

                                        <div class="col1 col5">
                                            <img src="images/me.png" class="img-responsive" alt="">
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>                  
                                </div>				
                            </li>
                            <li class="dropdown mega-dropdown active">
                                <a class="color2" href="#" class="dropdown-toggle" data-toggle="dropdown">Men<span class="caret"></span></a>				
                                <div class="dropdown-menu ">
                                    <div class="menu-top">
                                        <div class="col1">
                                            <div class="h_nav">
                                                <h4>Category</h4>
                                                <%for (CategoryBean cb : cat.getListCategory("men")) {%>
                                                <ul>
                                                    <li><a href="product.jsp?category=<%=cb.getCategoryId()%>"><%=cb.getCategoryName()%></a></li>
                                                </ul>	
                                                <%}%>
                                            </div>							
                                        </div>

                                        <div class="col1 col5">
                                            <img src="images/me1.png" class="img-responsive" alt="">
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>                  
                                </div>				
                            </li>
                            <li><a class="color3" href="product.jsp">Sale</a></li>
                            <li><a class="color4" href="404.jsp">About</a></li>
                            <li><a class="color5" href="typo.jsp">Short Codes</a></li>
                            <li ><a class="color6" href="contact.jsp">Contact</a></li>
                        </ul>
                    </div><!-- /.navbar-collapse -->

                </nav>
            </div>
            <div class="col-sm-2 search-right">
                <ul class="heart">
                    <li>
                        <a href="wishlist.jsp" >
                            <span class="glyphicon glyphicon-heart" aria-hidden="true"></span>
                        </a></li>
                    <li><a class="play-icon popup-with-zoom-anim" href="#small-dialog"><i class="glyphicon glyphicon-search"> </i></a></li>
                </ul>

                <div class="cart box_1">
                    <a href="checkout.jsp">
                        <h3> <div class="total">
                                <span>$<%=cart.total()%></span></div>
                            <img src="images/cart.png" alt=""/></h3>
                    </a>
                    <p><a href="checkout.jsp" class="simpleCart_empty">View Cart</a></p>

                </div>

                <div class="clearfix"> </div>

                <!----->

                <!---pop-up-box---->					  
                <link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
                <script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
                <!---//pop-up-box---->
                <div id="small-dialog" class="mfp-hide">
                    <form action="ProcessSearch" name="search" method="GET">
                    <div class="search-top">
                        <div class="login-search">
                            <input type="submit" value="">
                            <input type="text" value="Search.." name="searchInput" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = 'Search..';
                                    }">	

                        </div>
                        <p>Shopin</p>
                    </div>
                    </form>
                </div>
                <script>
                    $(document).ready(function () {
                        $('.popup-with-zoom-anim').magnificPopup({
                            type: 'inline',
                            fixedContentPos: false,
                            fixedBgPos: true,
                            overflowY: 'auto',
                            closeBtnInside: true,
                            preloader: false,
                            midClick: true,
                            removalDelay: 300,
                            mainClass: 'my-mfp-zoom-in'
                        });

                    });
                </script>		
                <!----->
            </div>
            <div class="clearfix"></div>
        </div>	
    </div>	
</div>


<%-- 
    Document   : checkout_counter
    Created on : Dec 15, 2018, 11:04:45 PM
    Author     : Sinh
--%>

<!DOCTYPE html>
<html>
    <jsp:include page="WEB-INF/head_tag.jsp">
        <jsp:param name="title" value="CheckOut"/>
    </jsp:include>
    <body>

        <%@include file="WEB-INF/header_tag.jsp" %>
        <% if (profileBean == null) {
                        response.sendRedirect("login.jsp");
                    }%>
        <div class="banner-top">
            <div class="container">
                <h1>Checkout</h1>
                <em></em>
                <h2><a href="index.jsp">Home</a><label>/</label>Checkout</h2>
            </div>
        </div>

        <div class="container">
            <div class="login">
                <form name="checkout" method="post" action="ProcessCheckOut">
                    <div class="col-md-6 login-do">
                        <div class="alert-danger">
                           
                        </div>
                        <span>Address *</span>
                        <div class="login-mail">

                            <input type="text" name="address">
                        </div>
                        <div>
                            <div class="form-group">
                                <label for="exampleFormControlSelect1">Payment *</label>
                                <select class="form-control" id="exampleFormControlSelect1" name="payment">
                                    <option value="Payment by card">Payment by card</option>
                                    <option value="Cash on delivery">Cash on delivery</option>
                                    <option value="Bank transfer payment">Bank transfer payment</option>
                                    <option value="Payment by smart mobile device">Payment by smart mobile device</option>
                                    <option value="Pay with electronic wallets">Pay with electronic wallets</option>
                                </select>
                            </div>
                        </div>
                        <label class="hvr-skew-backward">
                            <input type="submit" value="checkout">
                        </label>
                    </div>

                    <div class="clearfix"> </div>
                </form>
            </div>
        </div>
        <%@include file="WEB-INF/brand_tag.jsp" %>
        <%@include file="WEB-INF/footer_tag.jsp" %>
    </body>
</html>

<%-- 
    Document   : checkemail
    Created on : Dec 17, 2018, 11:33:07 AM
    Author     : Sinh
--%>

<html>
    <jsp:include page="WEB-INF/head_tag.jsp">
        <jsp:param name="title" value="CheckOut"/>
    </jsp:include>
    <body>

        <%@include file="WEB-INF/header_tag.jsp" %>
        <div class="banner-top">
            <div class="container">
                <h1>Checkout</h1>
                <em></em>
                <h2><a href="index.jsp">Home</a><label>/</label>Checkout</h2>
            </div>
        </div>

        <div class="container">
            <div class="login">
                <form name="checkout" method="post" action="ProcessCheckEmail">
                    <div class="col-md-6 login-do">
                        <p style="color:Tomato;">Check in your email to receive a confirmation code from the system<p>
                            <div class="alert-danger">
                           ${requestScope.error}
                        </div>
                            <br>
                        <span>Verification *</span>
                        <div class="login-mail">
                            <input type="text" required="" placeholder="Input Verification" name="randomcode">
                        </div>
                       
                        <label class="hvr-skew-backward">
                            <input type="submit" value="Accept">
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

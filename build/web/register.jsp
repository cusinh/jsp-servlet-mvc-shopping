<!DOCTYPE html>
<html>
    <jsp:include page="WEB-INF/head_tag.jsp">
        <jsp:param name="title" value="Register"/>
    </jsp:include>
    <body>
        <!--header-->
        <%@include file="WEB-INF/header_tag.jsp" %>
        <!--banner-->
        <div class="banner-top">
	<div class="container">
		<h1>Register</h1>
		<em></em>
                <h2><a href="index.jsp">Home</a><label>/</label>Login</h2>
	</div>
</div>
        <!--login-->
        <div class="container">
            <div class="login">
                <form name="register" method="post" action="ProcessRegister">
                    <div class="col-md-6 login-do">
                        <div class="alert-danger">
                            ${requestScope.error}
                        </div>
                        <div class="login-mail">
                            <input type="text" placeholder="Name" name="name">
                            <i  class="glyphicon glyphicon-user"></i>
                        </div>
                        <div class="login-mail">
                            <input type="text" placeholder="Phone Number" name="phone_number">
                            <i  class="glyphicon glyphicon-phone"></i>
                        </div>
                        <div class="login-mail">
                            <input type="text" placeholder="Email" name="email">
                            <i  class="glyphicon glyphicon-envelope"></i>
                        </div>
                        <div class="login-mail">
                            <input type="password" placeholder="Password"  name="password">
                            <i class="glyphicon glyphicon-lock"></i>
                        </div>
                        <a class="news-letter " href="#">
                            <label class="checkbox1"><input type="checkbox" name="checkbox" ><i> </i>Forget Password</label>
                        </a>
                        <label class="hvr-skew-backward">
                            <input type="submit" value="Submit">
                        </label>

                    </div>
                    <div class="col-md-6 login-right">
                        <h3>Completely Free Account</h3>

                        <p>Pellentesque neque leo, dictum sit amet accumsan non, dignissim ac mauris. Mauris rhoncus, lectus tincidunt tempus aliquam, odio 
                            libero tincidunt metus, sed euismod elit enim ut mi. Nulla porttitor et dolor sed condimentum. Praesent porttitor lorem dui, in pulvinar enim rhoncus vitae. Curabitur tincidunt, turpis ac lobortis hendrerit, ex elit vestibulum est, at faucibus erat ligula non neque.</p>
                        <a href="login.jsp" class="hvr-skew-backward">Login</a>

                    </div>

                    <div class="clearfix"> </div>
                </form>
            </div>

        </div>

        <!--//login-->

        <!--brand-->
        <%@include file="WEB-INF/brand_tag.jsp" %>
        <!--//brand-->

        <!--//content-->
        <!--//footer-->
        <%@include file="WEB-INF/footer_tag.jsp" %>

    </body>
</html>
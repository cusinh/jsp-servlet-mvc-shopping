<!DOCTYPE html>
<html>
    <jsp:include page="WEB-INF/head_tag.jsp">
        <jsp:param name="title" value="Login"/>
    </jsp:include>
    <body>
        <!--header-->
        <%@include file="WEB-INF/header_tag.jsp" %>
        <!--banner-->
        <div class="banner-top">
            <div class="container">
                <h1>Login</h1>
                <em></em>
                <h2><a href="index.jsp">Home</a><label>/</label>Login</h2>
            </div>
        </div>
        <!--login-->
        <div class="container">
            <div class="login">

                <form name="login" method="post" action="ProcessLogin">
                    <div class="col-md-6 login-do">
                        <div class="alert-danger">
                            ${requestScope.error}
                            <%= util.StringUtil.getString(session.getAttribute("message"))%>
                        </div>
                        <div class="login-mail">
                            <input type="text" placeholder="Email" required="" name="email">
                            <i  class="glyphicon glyphicon-envelope"></i>
                        </div>
                        <div class="login-mail">
                            <input type="password" placeholder="Password" required="" name="password">
                            <i class="glyphicon glyphicon-lock"></i>
                        </div>
                        <a class="news-letter " href="#">
                            <label class="checkbox1"><input type="checkbox" name="checkbox" ><i> </i>Forget Password</label>
                        </a>
                        <label class="hvr-skew-backward">
                            <input type="submit" value="login">
                        </label>
                    </div>
                    <div class="col-md-6 login-right">
                        <h3>Completely Free Account</h3>

                        <p>Pellentesque neque leo, dictum sit amet accumsan non, dignissim ac mauris. Mauris rhoncus, lectus tincidunt tempus aliquam, odio 
                            libero tincidunt metus, sed euismod elit enim ut mi. Nulla porttitor et dolor sed condimentum. Praesent porttitor lorem dui, in pulvinar enim rhoncus vitae. Curabitur tincidunt, turpis ac lobortis hendrerit, ex elit vestibulum est, at faucibus erat ligula non neque.</p>
                        <a href="register.jsp" class=" hvr-skew-backward">Register</a>

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
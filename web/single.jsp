
<!DOCTYPE html>
<html>
    <jsp:include page="WEB-INF/head_tag.jsp">
        <jsp:param name="title" value="Single"/>
    </jsp:include>
    <body>
        <!--header-->
        <%@include file="WEB-INF/header_tag.jsp"%>
        <!--banner-->
        <div class="banner-top">
            <div class="container">
                <h1>Single</h1>
                <em></em>
                <h2><a href="index.jsp">Home</a><label>/</label>Login</h2>
            </div>
        </div>
        <!--categories-->
        <%@include file="WEB-INF/product_single_tag.jsp"%>   
        <%@include file="WEB-INF/category_single_tag.jsp"%>       

        <!--brand-->
        <%@include file="WEB-INF/brand_tag.jsp"%>  
        <!--//brand-->
    </div>	

    <!--//content-->
    <!--//footer-->
    <%@include file="WEB-INF/footer_single_tag.jsp"%>  


</body>
</html>
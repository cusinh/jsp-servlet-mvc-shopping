<%-- 
    Document   : search_product
    Created on : Dec 19, 2018, 6:43:56 PM
    Author     : Sinh
--%>

<html>
    <jsp:include page="WEB-INF/head_tag.jsp">
        <jsp:param name="title" value="Product"/>
    </jsp:include>
    <body>
        <!--header-->
        <%@include file="WEB-INF/header_tag.jsp" %>
        <!--banner-->
        <div class="banner-top">
	<div class="container">
		<h1>Product</h1>
		<em></em>
                <h2><a href="index.jsp">Home</a><label>/</label>Login</h2>
	</div>
</div>

        <%@include file="WEB-INF/search_content_tag.jsp" %>
        
        <%@include file="WEB-INF/brand_tag.jsp" %>
        
        <%@include file="WEB-INF/footer_tag.jsp" %>
    </body>
</html>
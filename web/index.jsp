
<!DOCTYPE html>
<html>
    <jsp:include page="WEB-INF/head_tag.jsp">
        <jsp:param name="title" value="Index"/>
    </jsp:include>
    <body>
        <!--header-->
        <%@include file="WEB-INF/header_tag.jsp"%>
        <!--banner-->
        <%@include file="WEB-INF/banner_tag.jsp" %>
        <!--content-->
        <%@include file="WEB-INF/content_tag.jsp" %>
        <!--products-->
        <%@include file="WEB-INF/products_tag.jsp" %>     
        <!--//products-->
        <!--brand-->
        <%@include file="WEB-INF/brand_tag.jsp" %>
        <!--//brand-->
        <%@include file="WEB-INF/footer_tag.jsp" %>
    </body>
</html>
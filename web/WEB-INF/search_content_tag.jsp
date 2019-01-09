<%-- 
    Document   : search_content_tag
    Created on : Dec 19, 2018, 6:47:10 PM
    Author     : Sinh
--%>

<%@page import="dao.CategoryDAO"%>
<%@page import="model.ProductBean"%>
<%@page import="dao.SearchDAO"%>
<% SearchDAO dao = new SearchDAO();
    String categoryName = "";
    if (request.getParameter("searchInput") != null) {
        categoryName = request.getParameter("searchInput");
    }
    CategoryDAO catd = new CategoryDAO();
%>

<div class="product">
    <div class="container">

        <div class="col-md-12">
            <div class="mid-popular">
                <% for (ProductBean b : dao.getProductByProductName(categoryName)) {%>
                <div class="col-md-4 item-grid1 simpleCart_shelfItem">
                    <div class=" mid-pop">
                        <div class="pro-img">
                            <img src="<%=b.getProductImage()%>" class="img-responsive" alt="">
                            <div class="zoom-icon ">
                                <a class="picture" href="<%=b.getProductImage()%>" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
                                <a href="single.jsp?ProductId=<%=b.getProductId()%>"><i class="glyphicon glyphicon-menu-right icon"></i></a>
                            </div>
                        </div>
                        <div class="mid-1">
                            <div class="women">
                                <div class="women-top">
                                    <span><%=catd.getCategoryName(b.getCategoryId())%></span>
                                    <h6><a href="single.jsp?ProductId=<%=b.getProductId()%>"><%=b.getProductName()%></a></h6>
                                </div>
                                <div class="img item_add">
                                    <a href="ProcessCart?command=plus&ProductId=<%=b.getProductId()%>"><img src="images/ca.png" alt=""></a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="mid-2">
                                <p ><label><%=b.getProductPrice()%></label></p>
                                <div class="block">
                                    <div class="starbox small ghosting"> </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>

                        </div>
                    </div>
                </div>
                <%}%>
                <div class="clearfix"></div>
            </div>
        </div>

        <div class="col-md-3 product-bottom">
        </div>
    </div>


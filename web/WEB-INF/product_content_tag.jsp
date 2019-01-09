<%-- 
    Document   : content_product_tag
    Created on : Nov 5, 2018, 3:55:46 PM
    Author     : Sinh
--%>

<%@page import="dao.CategoryDAO"%>
<%@page import="model.Cart"%>
<%@page import="model.ProductBean"%>
<%@page import="dao.ProductDAO"%>

<% ProductDAO dao = new ProductDAO();
    String categoryId = "";
    if (request.getParameter("category") != null) {
        categoryId = request.getParameter("category");
    }
    CategoryDAO catd = new CategoryDAO();
    String Cname = catd.getCategoryName(categoryId);
    
%>

<div class="product">
    <div class="container">
        <div class="col-md-12">
            <div class="mid-popular">
                <% for (ProductBean b : dao.getProductByCategoryId(categoryId)) {%>
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
                                    <span><%=Cname%></span>
                                    <h6><a href="single.jsp?ProductId=<%=b.getProductId()%>"><%=b.getProductName()%></a></h6>
                                </div>
                                <div class="img item_add">
                                    <a href="ProcessCart?command=plus&ProductId=<%=b.getProductId()%>"><img src="images/ca.png" alt=""></a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="mid-2">
                                <p ><label>$<%=b.getProductPrice()%></label></p>
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

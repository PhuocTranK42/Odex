<%-- 
    Document   : product_detail
    Created on : Aug 4, 2022, 6:06:31 PM
    Author     : Admin
--%>

<%@page import="Odex.org.model.Category"%>
<%@page import="Odex.org.model.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
              integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
                integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
        crossorigin="anonymous"></script>
        <link rel="stylesheet" href="./public/css/style_category.css">
        <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
        <link rel="stylesheet" href="./public/css/style.css">
        <link rel="stylesheet" href="./public/css/products_details.css">
        <title>Product - Odex</title>
    </head>
    <body>
        <%@include file="./inc/header.jsp" %>
        <div class="container-fluid">
            <div class="banner dark">
                <div class="container-fluid">
                    <div class="row align-items-center">
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <div class="text-center" items="${productList}" var="product">
                                <h2 class="banner__content">${product.name}</h2>
                                <div class="banner__menu">
                                    <ul class="breadcrumb">
                                        <li class="breadcrumb-item">
                                            <a href="HomeServlet">
                                                <i class="fa fa-home"></i>
                                            </a>
                                        </li>
                                         <li class="breadcrumb-item">
                                            <a href="#">
                                                ${category.name}
                                            </a>
                                        </li>
                                        <li class="breadcrumb-item active">
                                            <a href="#">
                                                ${product.name}
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <section>
                <form action="OrderServlet" method="post">
                    <input type="hidden" name="action" value="creat"/>
                    <input type="hidden" name="productId" value="${product.id}"/>
                    <input type="hidden" name="productName" value="${product.name}"/>
                    <input type="hidden" name="price" value="${product.price}"/>
                    <input type="hidden" name="img" value="${product.img}"/>
                    <div class="container">
                        <div class="row section">
                            <div class="col-lg-6 col-md-12 col-sm-12">
                                <div class="sp-wrap sp-non-touch" items="${productList}" var="product">
                                    <div class="sp-large">
                                        <a href="#">
                                            <img src="${product.img}" class="sp-current-big" alt="">
                                        </a>
                                    </div>
                                    <div class="sp-thumbs sp-tb-active">
                                        <a href="#" class="sp-current">
                                            <img src="${product.img}">
                                        </a>
                                        <a href="#" style="background-image:url(./public/image/3.png);">
                                        </a>
                                        <a href="#" style="background-image:url(./public/image/4.png);">
                                        </a>
                                        <a href="#" style="background-image:url(./public/image/5.png);">
                                        </a>
                                        <a href="#" style="background-image:url(./public/image/6.png);">
                                        </a>
                                        <a href="#" style="background-image:url(./public/image/7.png);">
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-12 col-sm-12">
                                <div class="woo_pr_detail">
                                    <div class="woo_cats_wrps">
                                        <a href="#" class="woo_pr_cats">
                                             ${category.name}
                                        </a>
                                        <span class="woo_pr_trending">Trending</span>
                                    </div>
                                    <h2 class="woo_pr_title">${product.name}</h2>
                                    <div class="woo_pr_reviews">
                                        <div class="woo_pr_rating">
                                            <i class="fa fa-star filled"></i>
                                            <i class="fa fa-star filled"></i>
                                            <i class="fa fa-star filled"></i>
                                            <i class="fa fa-star filled"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                        <div class="woo_pr_total_reviews">
                                            <a href="#">(124 Reviews)</a>
                                        </div>
                                    </div>
                                    <div class="woo_pr_short_desc">
                                        <p>${product.desc}</p>
                                    </div>
                                    <div class="woo_pr_price">
                                        <div class="woo_pr_offer_price">
                                            <h3>${product.price}
                                                <span class="org_price">130000.0</span>
                                            </h3>
                                        </div>
                                        <div class="woo_offer_box">
                                            <div class="woo_off_text">
                                                <h4>40%
                                                    <span>Off</span>
                                                </h4>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pr_info_prefix grocery_style mb-3">
                                        <!-- First -->
                                        <div class="cart_sku_preflix">
                                            <div class="sku_preflix_first">
                                                <strong>SKU:</strong>
                                            </div>
                                            <div class="sku_preflix_last">
                                                HSQ4768987
                                            </div>
                                        </div>
                                    </div>
                                    <div class="woo_btn_action">
                                        <div class="col-12 col-lg-auto">
                                            <input name ="quantity" type="number" class="form-control qua_pr mb-2" value="1">
                                        </div>
                                        <div class="col-12 col-lg-auto">
                                            <button class="btn btn-block btn-dark mb-2" type="submit">Add to Cart
                                                <i class="fa fa-shopping-cart ml-2"></i>
                                            </button>
                                        </div>
                                        <div class="col-12 col-lg-auto">
                                            <button class="btn btn-gray btn-block mb-2">
                                                Wishlist
                                                <i class="fa fa-heart ml-2"></i>
                                            </button>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row mt-5">
                            <div class="col-lg-12 col-md-12">                              
                            </div>
                        </div>
                    </div>
                </form>              
            </section>
            <section class="gray section">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 mb-2">
                            <h4 class="mb-0">Related Products</h4>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 col-md-12">
                            <c:forEach items="${productList}" var="product">
                                <div class="owl-carousel products-slider owl-theme owl-loaded owl-drag">
                                    <div class="owl-stage-outer">
                                        <div class="owl-stage"
                                             style="transform: translate3d(0px, 0px, 0px);transition: all 0s ease 0s;width: 2360px;">
                                            <div class="owl-item active" style="width: 285px; margin-right: 10px;">
                                                <div class="item">
                                                    <div class="woo_product_grid">
                                                        <span class="woo_pr_tag hot">
                                                            Hot
                                                        </span>
                                                        <div class="woo_product_thumb">
                                                            <img src="${product.img}" class="img-fluid" alt="">
                                                        </div>
                                                        <div class="woo_product_caption center">
                                                            <div class="woo_rate">
                                                                <i class="fa fa-star filled"></i>
                                                                <i class="fa fa-star filled"></i>
                                                                <i class="fa fa-star filled"></i>
                                                                <i class="fa fa-star filled"></i>
                                                                <i class="fa fa-star"></i>
                                                            </div>
                                                            <div class="woo_title">
                                                                <h4 class="woo_pro_title">
                                                                    <a href="#">${product.name}</a>
                                                                </h4>
                                                            </div>
                                                            <div class="woo_price">
                                                                <h6>
                                                                    ${product.price}
                                                                    <span class="less_price">$112.10</span>
                                                                </h6>
                                                            </div>
                                                            <div class="about__item-content">
                                                                <ul>
                                                                    <li>
                                                                        <a href="ProductDetailServlet?productId=${product.id}" class="woo_cart_btn btn_cart">
                                                                            <i class="fa fa-eye"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#" class="woo_cart_btn btn_view"
                                                                           style="background: #ffd8d0; color: #ff765a;">
                                                                            <i class="fa fa-shopping-cart"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#" class="woo_cart_btn btn_save"
                                                                           style="background: #c4ecff; color: #03A9F5;">
                                                                            <i class="fa fa-heart"></i>
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </section>     
        </div>
        <%@include file="./inc/footer.jsp" %>
    </body>
</html>

<%-- 
    Document   : home
    Created on : Aug 2, 2022, 3:21:01 PM
    Author     : Admin
--%>

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
        <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" href="./public/css/style.css">
        <link rel="stylesheet" href="./public/css/homepage.css">
        <title>Odex</title>
    </head>
    <body>
        <%@include file="./inc/header.jsp" %>
        <section class="pb-5 pt-5">
            <div class="container-fluid">
                <div>
                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img class="d-block w-100" src="./public/images/homepage/el-banner-1.png" alt="First slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100" src="./public/images/homepage/el-banner-2.png" alt="Second slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100" src="./public/images/homepage/el-banner-3.png" alt="Third slide">
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button"
                           data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button"
                           data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
            </div>
        </section>
        <div class="container">
            <!-- Sản phẩm nỗi bật -->
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="sec-heading-flex pl-2 pr-2">
                        <div class="sec-heading-flex-one">
                            <h2 class="">Tất cả sản phẩm</h2>
                        </div>
                        <div class="sec-heading-flex-last">
                            <a href="#" class="btn btn-theme">Xem thêm<i class="ti-arrow-right ml-2"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <c:forEach items="${productList}" var="product">
                    <div class="col-lg-3 col-md-3 col-sm-6">
                        <div class="item">
                            <div class="woo_product_grid">
                                <span class="woo_pr_tag hot">Hot</span>
                                <div class="woo_product_thumb">
                                    <img src="${product.img}" class="img-fluid" alt="">
                                </div>
                                <div class="woo_product_caption.center products_center">
                                    <div class="woo_rate">
                                        <i class="fa fa-star filled"></i>
                                        <i class="fa fa-star filled"></i>
                                        <i class="fa fa-star filled"></i>
                                        <i class="fa fa-star filled"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <div class="woo_title">
                                        <h4 class="woo_pro_title">
                                            <a href="ProductDetailServlet?id=${product.name}">${product.name}</a>
                                        </h4>
                                    </div>
                                    <div class="woo_price products_center">

                                        <h6>
                                            ${product.price}
                                            <span class="less_price">1120000.00</span>
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
                </c:forEach>
            </div>
            <!-- Bán chạy nhất -->
            <!--<div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="sec-heading-flex pl-2 pr-2">
                        <div class="sec-heading-flex-one">
                            <h2>Bán chạy nhất</h2>
                        </div>
                        <div class="sec-heading-flex-last">
                            <a href="#" class="btn btn-theme">Xem thêm<i class="ti-arrow-right ml-2"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
            <c:forEach items="${productList}" var="product">
                <div class="col-lg-3 col-md-3 col-sm-6">
                    <div class="item">
                        <div class="woo_product_grid">
                            <span class="woo_pr_tag hot">Hot</span>
                            <div class="woo_product_thumb">
                                <img src="${product.img}" class="img-fluid" alt="">
                            </div>
                            <div class="woo_product_caption.center products_center">
                                <div class="woo_rate">
                                    <i class="fa fa-star filled"></i>
                                    <i class="fa fa-star filled"></i>
                                    <i class="fa fa-star filled"></i>
                                    <i class="fa fa-star filled"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="woo_title">
                                    <h4 class="woo_pro_title">
                                        <a href="ProductDetailServlet?id=${product.name}">${product.name}</a>
                                    </h4>
                                </div>
                                <div class="woo_price products_center">

                                    <h6>
                ${product.price}
                <span class="less_price">$112.10</span>
            </h6>
        </div>
        <div class="about__item-content">
            <ul>
                <li>
                    <a href="CartServlet" class="woo_cart_btn btn_cart">
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
            </c:forEach>
        </div>-->
            <!-- Ưu đãi và ưu đãi hấp dẫn -->
            <!--<div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="sec-heading-flex pl-2 pr-2">
                        <div class="sec-heading-flex-one">
                            <h2>Bán chạy nhất</h2>
                        </div>
                        <div class="sec-heading-flex-last">
                            <a href="#" class="btn btn-theme">Xem thêm<i class="ti-arrow-right ml-2"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
            <c:forEach items="${productList}" var="product">
                <div class="col-lg-3 col-md-3 col-sm-6">
                    <div class="item">
                        <div class="woo_product_grid">
                            <span class="woo_pr_tag hot">Hot</span>
                            <div class="woo_product_thumb">
                                <img src="${product.img}" class="img-fluid" alt="">
                            </div>
                            <div class="woo_product_caption.center products_center">
                                <div class="woo_rate">
                                    <i class="fa fa-star filled"></i>
                                    <i class="fa fa-star filled"></i>
                                    <i class="fa fa-star filled"></i>
                                    <i class="fa fa-star filled"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="woo_title">
                                    <h4 class="woo_pro_title">
                                        <a href="ProductDetailServlet?productId=${product.name}">${product.name}</a>
                                    </h4>
                                </div>
                                <div class="woo_price products_center">

                                    <h6>
                ${product.price}
                <span class="less_price">$112.10</span>
            </h6>
        </div>
        <div class="about__item-content">
            <ul>
                <li>
                    <a href="#" class="woo_cart_btn btn_cart">
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
                    <a href="CartServlet" class="woo_cart_btn btn_save"
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
            </c:forEach>
        </div>-->
        </div>
        <%@include file="./inc/footer.jsp" %>
    </body>
</html>

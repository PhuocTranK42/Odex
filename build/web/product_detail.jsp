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
                                            <img src="${product.img}" class="sp-current-big" style="width: 100%;" alt="">
                                        </a>
                                    </div>
                                    <!--<div class="sp-thumbs sp-tb-active">
                                        <a href="#" class="sp-current">
                                            <img src="${product.img}">
                                        </a>
                                        <a href="#" style="background-image:url(./public/images/homepage/msi-modern-15-a5m-r5-236vn-2.jpg);">
                                        </a>
                                        <a href="#" style="background-image:url(./public/images/homepage/msi-modern-15-a5m-r5-236vn-2.jpg);">
                                        </a>
                                        <a href="#" style="background-image:url(./public/images/homepage/msi-modern-15-a5m-r5-236vn-2.jpg);">
                                        </a>
                                        <a href="#" style="background-image:url(./public/images/homepage/msi-modern-15-a5m-r5-236vn-2.jpg);">
                                        </a>
                                        <a href="#" style="background-image:url(./public/images/homepage/msi-modern-15-a5m-r5-236vn-2.jpg);">
                                        </a>
                                    </div>-->
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
                                    <div class="woo_btn_action">
                                        <div class="col-12 col-lg-auto">
                                            <input name ="quantity" type="number" class="form-control qua_pr mb-2" value="1">
                                        </div>
                                        <div class="col-12 col-lg-auto">
                                            <button class="btn btn-block btn-dark mb-2" type="submit">Add to Cart
                                                <i class="fa fa-shopping-cart ml-2"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>              
            </section>
            <div class="container">
                <div class="row mt-5">
                    <div class="col-lg-12 col-md-12">
                        <div class="custom-tab style-1" style="margin-bottom: 3rem;">
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item" style="padding: 5px;">
                                    <a class="nav-link active" id="description-tab" data-toggle="tab" href="#description" role="tab" aria-controls="description" aria-selected="true" aria-expanded="true">M?? t???</a>
                                </li>
                                <li class="nav-item" style="padding: 5px;">
                                    <a class="nav-link" id="information-tab" data-toggle="tab" href="#information" role="tab" aria-controls="information" aria-selected="false" aria-expanded="false">Th??ng s??? k??? thu???t</a>
                                </li>
                            </ul>
                            <div class="tab-content" id="myTabContent" style="margin-top: 1rem;">
                                <div class="tab-pane fade active show" id="description" role="tabpanel" aria-labelledby="description-tab" aria-expanded="true">
                                    <p>
                                        MSI Modern 15 A5M g??y ???n t?????ng v???i ng?????i d??ng b???i phong c??ch thi???t k??? th???i trang, thanh l???ch c??ng nh???ng th??ng s??? k??? thu???t ???n t?????ng nh??ng l???i s??? h???u m???c gi?? v?? c??ng h???p l??, s??? l?? m???t s??? l???a ch???n ????ng ?????n ????p ???ng m???i nhu c???u h???c t???p ??? v??n ph??ng ??a d???ng.
                                    </p>
                                    <img src="./public/images/homepage/msi-modern-15-a5m-r5-236vn-2.jpg" alt="alt"/>
                                    <p style="margin-bottom: 3rem;">
                                        <br>
                                        C???u h??nh ???n ?????nh c??n ???????c nhi???u t??c v???
                                        </br>
                                        <br>
                                        Mang tr??n m??nh con chip AMD Ryzen 5 5500U c?? c???u tr??c 6 nh??n 12 lu???ng ?????t t???c ????? xung nh???p c?? b???n 2.1 GHz v?? ??p xung t???i ??a l??n ?????n 4.0 GHz Turbo Boost cho kh??? n??ng v???n h??nh m???i t??c v??? nhanh ch??ng t??? l??m vi???c, h???c t???p tr??n c??c ???ng d???ng c???a Office nh?? Word, Excel, Powerpoint,??? ?????n c??c nhu c???u gi???i tr?? c?? b???n nh?? l?????t web, nghe nh???c, xem phim, ch??i game,???
                                        </br>
                                        <br>
                                        Hi???u su???t ????? h???a ???????c c???i thi???n v?????t b???t mang ?????n m???t tr???i nghi???m tr???n v???n h??n trong m???i kh??a c???nh c??ng vi???c nh??? card ????? h???a t??ch h???p AMD Radeon Graphics, th???a s???c s??ng t???o c???a ng?????i d??ng v???i h??nh ???nh ???????c k???t xu???t 2D r?? n??t, c??c thao t??c ch???nh s???a, c???t gh??p video tr??n ph???n m???m Adobe tr??? n??n chuy??n nghi???p h??n hay chi???n c??c t???a game c?? m???c ????? h???a nh??? nh?? Among Us,???
                                        </br>
                                        <br>
                                        N??ng cao n??ng su???t l??m vi???c khi b???n c?? th??? m??? h??ng lo???t c???a s??? tr??nh duy???t c??ng l??c m?? kh??ng c?? t??nh tr???ng gi???t lag, v???a ch???nh s???a c??c layer h??nh ???nh v???a nghe nh???c tr??n Youtube th?? gi??n m???t c??ch tr??n tru nh??? b??? nh??? RAM 8 GB chu???n DDR4 2 khe (1 khe 8 GB + 1 khe r???i) c?? t???c ????? Bus RAM 3200 MHz, ?????ng th???i c??n h??? tr??? n??ng c???p RAM 64 GB ph???c v??? to??n v???n h??n cho nhu c???u s??? d???ng c???a ng?????i d??ng.
                                        </br>
                                    </p>
                                </div>
                                <div class="tab-pane fade" id="information" role="tabpanel" aria-labelledby="information-tab" aria-expanded="false">
                                    <p>MSI Modern 15 A5M g??y ???n t?????ng v???i ng?????i d??ng b???i phong c??ch thi???t k??? th???i trang, thanh l???ch c??ng nh???ng th??ng s??? k??? thu???t ???n t?????ng nh??ng l???i s??? h???u m???c gi?? v?? c??ng h???p l??, s??? l?? m???t s??? l???a ch???n ????ng ?????n ????p ???ng m???i nhu c???u h???c t???p ??? v??n ph??ng ??a d???ng.</p>
                                    <div class="product_meta">
                                        <span class="sku_wrapper">CPU: <span class="sku">Ryzen 5-5500U</span></span>
                                        <span class="posted_in">RAM: <span class="sku">8 GBDDR4 2 khe (1 khe 8GB + 1 khe r???i)3200 MHz</span></span>
                                        <span class="posted_in">??? c???ng: <span class="sku">8 GBDDR4 2 khe (1 khe 8GB + 1 khe r???i)3200 MHz</span></span>
                                        <span class="posted_in">Card ????? ho???: <span class="sku">Card t??ch h???pRadeon</span></span>
                                        <span class="posted_in">M??n h??nh: <span class="sku">15.6"Full HD (1920 x 1080)</span></span>
                                        <span class="posted_in">C???ng giao ti???p: <span class="sku">3 x USB 3.2HDMIJack tai nghe 3.5 mmUSB Type-C</span></span>
                                        <span class="posted_in">Pin: <span class="sku">3-cell Li-Po, 52Wh</span></span>
                                        <span class="posted_in">K??ch th?????c: <span class="sku">D??i 356.8 mm - R???ng 233.7 mm - D??y 18.9 mm</span></span>
                                        <span class="posted_in">Tr???ng l?????ng: <span class="sku">1.6 kg</span></span>
                                    </div>
                                </div>
                            </div>
                        </div>	
                    </div>
                </div>
            </div>
            <!--<section class="gray section">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 mb-2">
                            <h4 class="mb-0" style="color: #f96825">Related Products</h4>
                        </div>
                    </div>
                    <div class="row">
            <c:forEach items="${productList}" var="product">
                <div class="col-lg-12 col-md-12">
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
</section>--> 
        </div>
        <%@include file="./inc/footer.jsp" %>
    </body>
</html>

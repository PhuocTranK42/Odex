<%-- 
    Document   : category
    Created on : Aug 4, 2022, 3:00:43 PM
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
        <link rel="stylesheet" href="public/css/style.css">
        <link rel="stylesheet" href="public/css/categorypage.css">
        <title>Category - Odex</title>
    </head>
    <body>
        <%@include file="./inc/header.jsp" %>
        <div class="container-fluid">
            <div class="banner dark">
                <div class="container-fluid">
                    <div class="row align-items-center">
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <div class="text-center">
                                <h2 class="banner__content">${category.name}</h2>
                                <div class="banner__menu">
                                    <ul class="breadcrumb">
                                        <li class="breadcrumb-item">
                                            <a href="home_page.html">
                                                <i class="fa fa-home"></i>
                                            </a>
                                        </li>
                                        <li class="breadcrumb-item">
                                            <a href="#">
                                                Danh m???c s???n ph???m
                                            </a>
                                        </li>
                                        <li class="breadcrumb-item active">
                                            <a href="#">
                                                ${category.name}
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Category -->
            <section>
                <div class="container">
                    <div class="row">
                        <!--  Single Product  -->
                        <div class="col-lg-4 col-md-12">
                            <div id="accordion" class="section">
                                <div class="card">
                                    <div class="card-header" id="headingOne">
                                        <h5 class="mb-0">
                                            <button class="btn btn-link" data-toggle="collapse"
                                                    data-target="#collapseOne" aria-expanded="true"
                                                    aria-controls="collapseOne" style="color:#000; background:none;">
                                                <b>Nhu c???u s??? dung</b>
                                            </button>
                                        </h5>
                                    </div>

                                    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne"
                                         data-parent="#accordion">
                                        <div class="card-body">
                                            <div class="list-group-item" style="border: none; background: none">
                                                <!-- Radio -->
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox"
                                                           name="flexRadioDefault" id="flexRadioDefault1">
                                                    <label class="form-check-label" for="flexRadioDefault1">
                                                        H???c t???p - V??n ph??ng
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="list-group-item" style="border: none; background: none">
                                                <!-- Radio -->
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox"
                                                           name="flexRadioDefault" id="flexRadioDefault1">
                                                    <label class="form-check-label" for="flexRadioDefault1">
                                                        ????? ho??? - K??? thu???t
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="list-group-item" style="border: none; background: none">
                                                <!-- Radio -->
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox"
                                                           name="flexRadioDefault" id="flexRadioDefault1">
                                                    <label class="form-check-label" for="flexRadioDefault1">
                                                        Ch??i game kh???ng
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="list-group-item" style="border: none; background: none">
                                                <!-- Radio -->
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox"
                                                           name="flexRadioDefault" id="flexRadioDefault1">
                                                    <label class="form-check-label" for="flexRadioDefault1">
                                                        M???ng nh??? - Th???i trang
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="list-group-item" style="border: none; background: none">
                                                <!-- Radio -->
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox"
                                                           name="flexRadioDefault" id="flexRadioDefault1">
                                                    <label class="form-check-label" for="flexRadioDefault1">
                                                        Cao c???p - Sang tr???ng
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header" id="headingTwo">
                                        <h5 class="mb-0">
                                            <button class="btn btn-link collapsed" data-toggle="collapse"
                                                    data-target="#collapseTwo" aria-expanded="false"
                                                    aria-controls="collapseTwo" style="color:#000; background:none">
                                                <b>LAPTOP Theo h??ng</b>
                                            </button>
                                        </h5>
                                    </div>
                                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
                                         data-parent="#accordion">
                                        <div class="list-group-item" style="border: none; background: none">
                                            <!-- Radio -->
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio"
                                                       name="flexRadioDefault" id="flexRadioDefault1">
                                                <label class="form-check-label" for="flexRadioDefault1">
                                                    <img class="ml-2"
                                                         src="./public/images/homepage/dell.png"
                                                         style="width: 20%;" alt="...">
                                                </label>
                                            </div>
                                        </div>
                                        <div class="list-group-item" style="border: none; background: none">
                                            <!-- Radio -->
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio"
                                                       name="flexRadioDefault" id="flexRadioDefault1">
                                                <label class="form-check-label" for="flexRadioDefault1">
                                                    <img class="ml-2"
                                                         src="./public/images/homepage/acer.png"
                                                         style="width: 20%;" alt="...">
                                                </label>
                                            </div>
                                        </div>
                                        <div class="list-group-item" style="border: none; background: none">
                                            <!-- Radio -->
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio"
                                                       name="flexRadioDefault" id="flexRadioDefault1">
                                                <label class="form-check-label" for="flexRadioDefault1">
                                                    <img class="ml-2"
                                                         src="./public/images/homepage/hp.png"
                                                         style="width: 20%;" alt="...">
                                                </label>
                                            </div>
                                        </div>
                                        <div class="list-group-item" style="border: none; background: none">
                                            <!-- Radio -->
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio"
                                                       name="flexRadioDefault" id="flexRadioDefault1">
                                                <label class="form-check-label" for="flexRadioDefault1">
                                                    <img class="ml-2"
                                                         src="./public/images/homepage/lenovo.png"
                                                         style="width: 20%;" alt="...">
                                                </label>
                                            </div>
                                        </div> 
                                        <div class="list-group-item" style="border: none; background: none">
                                            <!-- Radio -->
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio"
                                                       name="flexRadioDefault" id="flexRadioDefault1">
                                                <label class="form-check-label" for="flexRadioDefault1">
                                                    <img class="ml-2"
                                                         src="./public/images/homepage/msi.png"
                                                         style="width: 20%;" alt="...">
                                                </label>
                                            </div>
                                        </div> 
                                        <div class="list-group-item" style="border: none; background: none">
                                            <!-- Radio -->
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio"
                                                       name="flexRadioDefault" id="flexRadioDefault1">
                                                <label class="form-check-label" for="flexRadioDefault1">
                                                    <img class="ml-2"
                                                         src="./public/images/homepage/microsoft.png"
                                                         style="width: 20%;" alt="...">
                                                </label>
                                            </div>
                                        </div>
                                        <div class="list-group-item" style="border: none; background: none">
                                            <!-- Radio -->
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio"
                                                       name="flexRadioDefault" id="flexRadioDefault1">
                                                <label class="form-check-label" for="flexRadioDefault1">
                                                    <img class="ml-2"
                                                         src="./public/images/homepage/lg.png"
                                                         style="width: 20%;" alt="...">
                                                </label>
                                            </div>
                                        </div>  
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header" id="headingThree">
                                        <h5 class="mb-0">
                                            <button class="btn btn-link collapsed" data-toggle="collapse"
                                                    data-target="#collapseThree" aria-expanded="false"
                                                    aria-controls="collapseThree" style="color:#000; background:none">
                                                <b>Gi??</b>
                                            </button>
                                        </h5>
                                    </div>
                                    <div id="collapseThree" class="collapse" aria-labelledby="headingThree"
                                         data-parent="#accordion">
                                        <div class="card-body">
                                            <div class="list-group-item" style="border: none; background: none">
                                                <!-- Radio -->
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio"
                                                           name="flexRadioDefault" id="flexRadioDefault1">
                                                    <label class="form-check-label" for="flexRadioDefault1">
                                                        D?????i 5 tri???u
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="list-group-item" style="border: none; background: none">
                                                <!-- Radio -->
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio"
                                                           name="flexRadioDefault" id="flexRadioDefault1">
                                                    <label class="form-check-label" for="flexRadioDefault1">
                                                        T??? 7 tri???u - 10 tri???u
                                                    </label>
                                                </div>
                                            </div> 
                                            <div class="list-group-item" style="border: none; background: none">
                                                <!-- Radio -->
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio"
                                                           name="flexRadioDefault" id="flexRadioDefault1">
                                                    <label class="form-check-label" for="flexRadioDefault1">
                                                        T??? 10 tri???u - 15 tri???u
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="list-group-item" style="border: none; background: none">
                                                <!-- Radio -->
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio"
                                                           name="flexRadioDefault" id="flexRadioDefault1">
                                                    <label class="form-check-label" for="flexRadioDefault1">
                                                        T??? 15 tri???u - 20 tri???u
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="list-group-item" style="border: none; background: none">
                                                <!-- Radio -->
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio"
                                                           name="flexRadioDefault" id="flexRadioDefault1">
                                                    <label class="form-check-label" for="flexRadioDefault1">
                                                        Tr??n 20 tri???u
                                                    </label>
                                                </div>
                                            </div>  
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-8 col-md-12">
                            <!-- Banner -->
                            <div class="row">
                                <div class="mb-5">
                                    <img src="./public/images/homepage/banner-7.png" class="img-fluid rounded" alt="">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 col-md-12">
                                    <div class="toolbar toolbar-products">
                                        <div class="toolbar-sorter sorter">
                                            <label for="sorter">Sort By</label>
                                            <select class="">
                                                <option value="position" selected="selected">Position</option>
                                                <option value="name">Product Name</option>
                                                <option value="price">Price</option>
                                            </select>
                                            <a class="action.sorter-action" href="#">
                                                <i class="fa fa-arrow-up"></i>
                                            </a>
                                        </div>
                                        <div class="field.limiter">
                                            <label for="limiter" class="label">
                                                <span>Show</span>
                                            </label>
                                            <div class="control">
                                                <select name="" id="" class="">
                                                    <option value="5">5</option>
                                                    <option value="10" selected="selected">10</option>
                                                    <option value="5">5</option>
                                                    <option value="5">5</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="model">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <c:forEach items="${productList}" var="product">
                                    <div class="col-lg-4 col-md-4 col-sm-6">
                                        <div class="item">
                                            <div class="woo_product_grid" style="height: 302px">
                                                <span class="woo_pr_tag hot">Hot</span>
                                                <div class="woo_product_thumb" style="width: 100%; height: 140px;">
                                                    <img src="${product.img}" class="img-fluid" alt="">
                                                </div>
                                                <div class="woo_product_caption.center products_center">
                                                    <div class="woo_rate" style="margin-top: 2rem;">
                                                        <i class="fa fa-star filled"></i>
                                                        <i class="fa fa-star filled"></i>
                                                        <i class="fa fa-star filled"></i>
                                                        <i class="fa fa-star filled"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="woo_title">
                                                        <h4 class="woo_pro_title">
                                                            <a href="ProductDetailServlet?productId=${product.id}">${product.name}</a>
                                                        </h4>
                                                    </div>
                                                    <div class="woo_price products_center">
                                                        <h6>
                                                            ${product.price}
                                                            <span class="less_price">14999000.00</span>
                                                        </h6>
                                                    </div>
                                                    <div class="about__item-content">
                                                        <ul>
                                                            <li>
                                                                <a href="ProductDetailServlet?productId=${product.id}" class="woo_cart_btn btn_cart">
                                                                    <i class="fa fa-eye"></i>
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
                            <div class="row">
                                <div class="col-lg-12">
                                    <div>
                                        <ul class="pagination">
                                            <li class="page-item left">
                                                <a href="#" class="page-link" aria-label="Previous">
                                                    <i class="fa fa-arrow-left mb-1"> Prev</i>
                                                </a>
                                            </li>
                                            <li class="page-item active">
                                                <a class="page-link" href="#">1</a>
                                            </li>
                                            <li class="page-item">
                                                <a class="page-link" href="#">2</a>
                                            </li>
                                            <li class="page-item">
                                                <a class="page-link" href="#">3</a>
                                            </li>
                                            <li class="page-item right">
                                                <a href="#" class="page-link" aria-label="Next">
                                                    <i class="fa fa-arrow-right mb-1"> Next</i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <%@include file="./inc/footer.jsp" %>
    </body>
</html>

<%-- 
    Document   : cart
    Created on : Aug 5, 2022, 6:16:18 PM
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
        <link rel="stylesheet" href="./public/css/style_category.css">
        <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
        <link rel="stylesheet" href="./public/css/cart.css">
        <link rel="stylesheet" href="./public/css/style.css">
        <title>Cart - Odex</title>
    </head>
    <body>
        <%@include file="./inc/header.jsp" %>
        <div class="container-fluid">
            <div class="banner dark section">
                <div class="container-fluid">
                    <div class="row justify-content-center">
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <div class="text-center">
                                <h2 class="banner__content">Giỏ hàng</h2>
                                <div class="banner__menu">
                                    <ul class="breadcrumb">
                                        <li class="breadcrumb-item">
                                            <a href="HomeServlet">
                                                <i class="fa fa-home"></i>
                                            </a>
                                        </li>
                                        <li class="breadcrumb-item active">
                                            <a href="CartServlet">
                                                Giỏ hàng
                                            </a>
                                        </li>                                  
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Add to Cart -->
            <section>
                <div class="container">
                    <div class="row section">
                        <div class="col-lg-8 col-md-12 col-sm-12 col-12">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>Sản phẩm</th>
                                            <th>Giá</th>
                                            <th>Số lượng</th>
                                            <th>Tổng</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:set var="total" value="0"></c:set>
                                        <c:forEach items="${cart}" var="orderDetailSession">
                                            <tr>
                                                <td>
                                                    <div class="total_product">
                                                        <div class="product_item_img">
                                                            <img src="${orderDetailSession.img}" class="img-fluid" alt="">
                                                        </div>
                                                        <div class="product_title">
                                                            <h5 class="tbl_pr_title">${orderDetailSession.productName}</h5>
                                                            <p class="tbl_pr_quality">Brown</p>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <h5 class="tbl_total_price">${orderDetailSession.price}</h5>
                                                    </h4>
                                                </td>
                                                <td>
                                                    <input type="number" class="form-control tbl_quan" value="${orderDetailSession.quantity}"/>            
                                                </td>
                                                <td>
                                                    <div class="total_product">
                                                        <h5 class="tbl_total_price">${orderDetailSession.price * orderDetailSession.quantity}</h5>
                                                    </div>
                                                </td>
                                                <td>
                                                    <form action="OrderServlet" method="post">
                                                        <input type="hidden" name="action" value="delete"/>
                                                        <input type="hidden" name="productId" value="${orderDetailSession.productId}"/>
                                                        <button type="submit">x</button>
                                                    </form>
                                                </td>
                                            </tr>
                                            <c:set var="total" value="${total+(orderDetailSession.price * orderDetailSession.quantity)}"></c:set>
                                        </c:forEach>                               
                                    </tbody>
                                </table>
                            </div>
                            <div class="cart_subtotal">
                                <h6>Tổng đơn hàng<span class="theme-cl">${total}</span></h6>
                            </div>
                            <div class="row align-items-end justify-content-between mb-10 mb-md-0">
                                <div class="col-12 col-md-7">
                                    <form action="" class="mb-7 mb-md-0">
                                        <div class="col">
                                            <label class="font-size-sm font-weight-bold" for="">Mã giảm giá:</label>
                                        </div>
                                        <div class="row form-row">
                                            <div class="col">
                                                <input type="text" class="form-control form-control-sm"
                                                       placeholder="Enter coupon code*">
                                            </div>
                                            <div class="col-auto">
                                                <button class="btn btn-dark" type="submit">Sử dụng</button>
                                            </div>

                                        </div>
                                    </form>
                                </div>
                                <div class="col-12 col-md-auto m-full">
                                    <button class="btn btn-outline-dark">Cập nhật giỏ hàng</button>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-12 col-sm-12 col-12">
                            <!-- comment -->
                            <a class="btn btn-block btn-dark mb-2" href="checkout.jsp">Tiến hành thanh toán</a>
                        </div>
                    </div>
                </div>
            </section>
        </div>       
        <%@include file="./inc/footer.jsp" %>
    </body>
</html>

<%-- 
    Document   : checkout
    Created on : Aug 11, 2022, 12:35:34 PM
    Author     : Admin
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
        <link rel="stylesheet" href="./public/css/style.css">
        <link rel="stylesheet" href="./public/css/checkoutpage.css">
        <title>Check Out - Odex</title>
    </head>
    <body>
        <%@include file="./inc/header.jsp" %>
        <div class="banner dark">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <div class="text-center">
                            <h2 class="banner__content">Xác nhận thanh toán</h2>
                            <div class="banner__menu">
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item">
                                        <a href="HomeServlet">
                                            <i class="fa fa-home"></i>
                                        </a>
                                    </li>
                                    <li class="breadcrumb-item">
                                        <a href="CartServlet">
                                            Giỏ hàng
                                        </a>
                                    </li>
                                    <li class="breadcrumb-item active">
                                        <a href="#">
                                            Thanh toán
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <section class="selection" style="background: white;">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-md-12 col-sm-12 col-12">
                        <form>
                            <!-- Heading -->
                            <h4 class="mb-5">Thông tin thanh toán</h4>
                            <!-- Billing details -->
                            <div class="row mb-5">
                                <div class="col-12 col-md-6">
                                    <!-- First Name -->
                                    <div class="form-group">
                                        <label for="checkoutBillingFirstName" class="color">First Name *</label>
                                        <input class="form-control form-control-sm" id="checkoutBillingFirstName"
                                               type="text" placeholder="First Name" required="">
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <!-- Last Name -->
                                    <div class="form-group">
                                        <label for="checkoutBillingLastName"class="color">Last Name *</label>
                                        <input class="form-control form-control-sm" id="checkoutBillingLastName"
                                               type="text" placeholder="Last Name" required="">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <!-- Email -->
                                    <div class="form-group">
                                        <label for="checkoutBillingEmail">Email</label>
                                        <input class="form-control form-control-sm" id="checkoutBillingEmail"
                                               type="email" placeholder="Email" required="">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <!-- Country -->
                                    <div class="form-group">
                                        <label for="checkoutBillingCountry" class="color">Country *</label>
                                        <input class="form-control form-control-sm" id="checkoutBillingCountry"
                                               type="text" placeholder="Country" required="">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <!-- Address Line 1 -->
                                    <div class="form-group">
                                        <label for="checkoutBillingAddress" class="color">Address Line *</label>
                                        <input class="form-control form-control-sm" id="checkoutBillingAddress"
                                               type="text" placeholder="Address Line 1" required="">
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <!-- Town / City -->
                                    <div class="form-group">
                                        <label for="checkoutBillingTown" class="color">Town / City *</label>
                                        <input class="form-control form-control-sm" id="checkoutBillingTown"
                                               type="text" placeholder="Town / City" required="">
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <!-- ZIP / Postcode -->
                                    <div class="form-group">
                                        <label for="checkoutBillingZIP" class="color">ZIP / Postcode *</label>
                                        <input class="form-control form-control-sm" id="checkoutBillingZIP"
                                               type="text" placeholder="ZIP / Postcode" required="">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <!-- Mobile Phone -->
                                    <div class="form-group mb-0">
                                        <label for="checkoutBillingPhone" class="color">Mobile Phone *</label>
                                        <input class="form-control form-control-sm" id="checkoutBillingPhone"
                                               type="tel" placeholder="Mobile Phone" required="">
                                    </div>
                                </div>
                            </div>
                            <!-- Heading -->
                            <h4 class="mb-3">Thông tin giao hàng</h4>
                            <!-- Shipping details -->
                            <div class="table-responsive mb-3">
                                <table class="table table-bordered table-sm table-hover mb-0">
                                    <tbody>
                                        <tr>
                                            <td>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio"
                                                           name="flexRadioDefault" id="flexRadioDefault1">
                                                    <label class="form-check-label" for="flexRadioDefault1">
                                                        Vận chuyển tiêu chuẩn
                                                    </label>
                                                </div>
                                            </td>
                                            <td>Nhận hàng trong vòng 4 - 10 ngày</td>
                                            <td>$8.00</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio"
                                                           name="flexRadioDefault" id="flexRadioDefault1">
                                                    <label class="form-check-label" for="flexRadioDefault1">
                                                        Giao hàng nhanh
                                                    </label>
                                                </div>
                                            </td>
                                            <td>Nhận hàng trong vòng 3 - 5 ngày</td>
                                            <td>$12.00</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio"
                                                           name="flexRadioDefault" id="flexRadioDefault1">
                                                    <label class="form-check-label" for="flexRadioDefault1">
                                                        Miễn phí vận chuyển
                                                    </label>
                                                </div>
                                            </td>
                                            <td>Miễn phí vận chuyển cho đơn hàng $1000.00</td>
                                            <td>$0.00</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <!-- Address -->
                            <div class="mb-5">
                                <div class="customs-control customs-checkbox">
                                    <input class="customs-control-input" id="checkoutShippingAddress" type="checkbox" />
                                    <label for="checkoutShippingAddress" class="customs-control-label font-size-sm collapsed" data-toggle="collapse" data-target="#checkoutShippingAddressCollapse">Giao hàng đến địa chỉ
                                        khác</label>
                                </div>
                                <div class="collapse" id="checkoutShippingAddressCollapse">
                                    <div class="row mt-4">
                                        <div class="col-12">
                                            <!-- Country -->
                                            <div class="form-group">
                                                <label for="Country" class="color">Country *</label>
                                                <input class="form-control form-control-sm" id="Country" type="text"
                                                       placeholder="Country">
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <!-- Address Line 1 -->
                                            <div class="form-group">
                                                <label for="LineOne" class="color">Address*</label>
                                                <input class="form-control form-control-sm" id="LineOne" type="text"
                                                       placeholder="Address Line 1">
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <!-- Town / City -->
                                            <div class="form-group">
                                                <label for="Town" class="color">Town / City *</label>
                                                <input class="form-control form-control-sm" id="Town" type="text"
                                                       placeholder="Town / City">
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <!-- Town / City -->
                                            <div class="form-group">
                                                <label for="ZIP" class="color">ZIP / Postcode *</label>
                                                <input class="form-control form-control-sm" id="ZIP" type="text"
                                                       placeholder="ZIP / Postcode">
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <!-- Button -->
                                            <button class="btn btn-outline-dark" type="submit">
                                                Save Address
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Heading -->
                            <h4 class="mb-3">Phương thức thanh toán</h4>
                            <!-- List group -->
                            <div class="list-group list-group-sm mb-5">
                                <div class="list-group-item">
                                    <!-- Radio -->
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio"
                                               name="flexRadioDefault" id="flexRadioDefault1">
                                        <label class="form-check-label" for="flexRadioDefault1">
                                            Thanh toán tiền mặt khi nhận hàng
                                        </label>
                                    </div>
                                </div>
                                <div class="list-group-item">
                                    <!-- Radio -->
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio"
                                               name="flexRadioDefault" id="flexRadioDefault1">
                                        <label class="form-check-label" for="flexRadioDefault1">
                                            Thanh toán bằng thẻ quốc tế Visa, Master, JCB
                                            <img class="ml-2" style="width: 10%;" src="./public/images/homepage/card.png" alt="...">
                                        </label>
                                    </div>
                                </div>
                                <div class="list-group-item">
                                    <!-- Radio -->
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio"
                                               name="flexRadioDefault" id="flexRadioDefault1">
                                        <label class="form-check-label" for="flexRadioDefault1">
                                            Thanh toán bằng Viettel Money
                                            <img class="ml-2"
                                                 src="./public/images/homepage/icon-payment-method-viettelmoney.png"
                                                 style="width: 10%;" alt="...">
                                        </label>
                                    </div>
                                </div>
                                <div class="list-group-item">
                                    <!-- Radio -->
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio"
                                               name="flexRadioDefault" id="flexRadioDefault1">
                                        <label class="form-check-label" for="flexRadioDefault1">
                                            Thanh toán bằng Zalo Pay
                                            <img class="ml-2"
                                                 src="https://frontend.tikicdn.com/_desktop-next/static/img/icons/checkout/icon-payment-method-zalo-pay.svg"
                                                 alt="...">
                                        </label>
                                    </div>
                                </div>
                                <div class="list-group-item">
                                    <!-- Radio -->
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio"
                                               name="flexRadioDefault" id="flexRadioDefault1">
                                        <label class="form-check-label" for="flexRadioDefault1">
                                            Thanh toán bằng VNPAY
                                            <img class="ml-2" src="./public/images/homepage/icon-payment-method-vnpay.png"
                                                 style="width: 10%;" alt="...">
                                        </label>
                                    </div>
                                </div>
                                <div class="list-group-item">
                                    <!-- Radio -->
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio"
                                               name="flexRadioDefault" id="flexRadioDefault1">
                                        <label class="form-check-label" for="flexRadioDefault1">
                                            Thẻ ATM nội địa/Internet Banking (Hỗ trợ Internet
                                            Banking)
                                            <img class="ml-2"
                                                 src="https://frontend.tikicdn.com/_desktop-next/static/img/icons/checkout/icon-payment-method-atm.svg"
                                                 alt="...">
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <!-- Notes -->
                            <textarea class="form-control form-control-sm mb-9 mb-md-0 font-size-xs" rows="5"
                                      placeholder="Ghi chú giao hàng"></textarea>
                        </form>
                    </div>
                    <div class="col-lg-4 col-md-12 col-sm-12 col-12">
                        <div class="cart_detail_box mb-4" style="background-color: #f4f5f7 ;">
                            <div class="card-body">
                                <ul class="list-group list-group-sm list-group-flush-y list-group-flush-x">
                                    <li class="list-group-item d-flex">
                                        <h4 style="color: #555;">Thông tin đơn hàng</h4>
                                    </li>
                                    <li class="list-group-item d-flex">
                                    <c:set var="total" value="0"></c:set>
                                    <c:forEach items="${cart}" var="orderDetailSession">
                                        <div class="product_title">
                                            <h5 class="tbl_pr_title">${orderDetailSession.name}</h5>
                                            <p class="tbl_pr_quality">${orderDetailSession.price}</p><p class="tbl_quan">${orderDetailSession.quantity}</p>
                                        </div>
                                        <c:set var="total" value="${total+(orderDetailSession.price * orderDetailSession.quantity)}"></c:set>
                                    </c:forEach>
                                    </li>
                                    <li class="list-group-item d-flex">
                                        <p style="color: #555;">Thuế: </p>
                                        <span class="ml-auto font-size-sm" style="color: #555;">0.00</span>
                                    </li>
                                    <li class="list-group-item d-flex">
                                        <p style="color: #555;">Phí giao hàng: </p>
                                        <span class="ml-auto font-size-sm" style="color: #555;">35000.00</span>
                                    </li>
                                    <li class="list-group-item d-flex">
                                        <p style="color: #555;"><b>Tổng: </b></p>
                                        <span class="ml-auto font-size-sm" style="color: #555;">${total}</span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <a class="btn btn-block btn-dark mb-2" style="color:#fff !important;" href="CheckoutServlet">Thanh
                            Toán</a>
                    </div>
                </div>
            </div>
        </section>
        <%@include file="./inc/footer.jsp" %>
    </body>
</html>

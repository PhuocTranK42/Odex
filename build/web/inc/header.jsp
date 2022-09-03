<%-- 
    Document   : header
    Created on : Aug 2, 2022, 3:29:14 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<section class="row header align-items-center">
    <div class="header-top">
        <a href="HomeServlet">
            <img src="./public/images/homepage/logo-light.png" alt="">
        </a>
    </div>
    <nav class="navbar navbar-expand-lg navbar-light justify-content-center "
         style="margin-left: 19rem; font-size: 20px; padding: 0.75rem 1.5rem;">
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="HomeServlet">Trang chủ <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Sản phẩm
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="./CategoryServlet?id=1" style="color:#000 !important;">
                            <b>Máy tính xách tay</b>
                            <i class="fa fa-angle-right" style="margin-left: 0.5rem;"></i>
                        </a>
                        <a class="dropdown-item" href="./CategoryServlet?id=2" style="color:#000 !important;"><b>Điện thoại</b><i class="fa fa-angle-right" style="margin-left: 0.5rem;"></i></a>
                        <a class="dropdown-item" href="./CategoryServlet?id=3" style="color:#000 !important;"><b>Phụ kiện công nghệ</b><i class="fa fa-angle-right" style="margin-left: 0.5rem;"></i></a>
                    </div>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0" action="SearchServlet" method="get">
                <input class="form-control mr-sm-2" name="productName" type="search" placeholder="Search" aria-label="Search">
                <button type="submit" style="border:none; background:none;">
                    <i class="fa fa-search" style="color: white;"></i>
                </button>
            </form>
        </div>
    </nav>
    <div class="general_head_right justify-content-center">
        <ul>
            <li>
                <c:if test="${sessionScope.user == null}">
                    <a href="AccountServlet">
                        <button type="submit">
                            <i class="fa fa-user"></i>
                        </button>
                    </a>
                </c:if>
                <c:if test="${sessionScope.user != null}">
                    <a href="LogoutServlet">
                        <button type="submit">
                            <i class="fa fa-sign-in"></i>
                        </button>
                    </a>
                </c:if>
            </li>
            <li>
                <a href="javascript:void(0);"  onclick="openRightMenu()">
                    <span class="qut_counter">${index}</span>
                    <button type="submit">
                        <i class="fa fa-shopping-cart"></i>
                    </button>
                </a>
            </li>
        </ul>
    </div>
</section>
<!-- Cart -->
<div class="w3-ch-sideBar w3-bar-block w3-card-2 w3-animate-right" id="rightMenu" style="display:none;right:0;">
    <div class="rightMenu-scroll">
        <h4 class="cart_heading">Giỏ hàng</h4>
        <button onclick="closeRightMenu()" style="
                margin-left: 10rem;
                border: none;
                background: none;
                ">
            <i class="fa fa-times"></i>
        </button>
        <div class="right-ch-sideBar">
            <div class="cart_select_items">
                <c:set var="total" value="0"></c:set>
                <c:forEach items="${cart}" var="orderDetailSession">
                    <div class="cart_selected_single">
                        <div class="cart_selected_single_thumb">
                            <a href="#"><img src="${orderDetailSession.img}" alt="" style="width: 100%;"/></a>
                        </div>
                        <div class="cart_selected_single_caption">
                            <h4 class="product_title">${orderDetailSession.productName}</h4>
                            <span class="numberof_item">${orderDetailSession.price} x ${orderDetailSession.quantity}</span>
                        </div>
                    </div>
                    <c:set var="total" value="${total+(orderDetailSession.price * orderDetailSession.quantity)}"></c:set>
                </c:forEach>
                <div class="cart_subtotal">
                    <h6>Subtotal<span class="theme-cl">${total}</span></h6>
                </div>
                <div class="cart_action">
                    <ul>
                        <li><a href="CartServlet" class="btn btn-go-cart btn-theme">View/Edit Cart</a></li>
                        <li><a href="CheckoutServlet" class="btn btn-checkout">Checkout Now</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    function openRightMenu() {
        document.getElementById("rightMenu").style.display = "block";
    }
    function closeRightMenu() {
        document.getElementById("rightMenu").style.display = "none";
    }
</script>
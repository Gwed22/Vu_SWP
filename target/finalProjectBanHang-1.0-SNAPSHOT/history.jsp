<%-- 
    Document   : history
    Created on : Nov 3, 2022, 10:49:23 PM
    Author     : PC
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.models.Order"%>
<%@page import="com.models.Account"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.dao.OrderDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- basic -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- mobile metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <!-- font-awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

        <!-- site metas -->
        <title>ISUNG</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- bootstrap css -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- style css -->
        <link rel="stylesheet" href="css/style3.css">
        <!-- Responsive-->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- fevicon -->
        <link rel="icon" href="images/fevicon.png" type="image/gif" />
        <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
        <!-- Scrollbar Custom CSS -->
        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
        <!-- Tweaks for older IEs-->
        <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
        <!-- owl stylesheets -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
        <style>
            #buyNow {
                background-color: black;
                color: white;
                border-radius: 30px;
                width: 200px;
                height: 50px;
                text-align: center;
                font-size: 20px;
                padding-top: 7px;
            }
            #buyNow:hover {
                background-color: #FF0000;
            }
        </style>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <br>
            <main role="main">
                <!-- Block content - Đục lỗ trên giao diện bố cục chung, đặt tên là `content` -->
                <div class="container-fluid" >

                    <br>
                <c:if test="${size > 0}">
                    <h1 style="margin-left: 25px">Your Order List</h1>
                    <div class="row">
                        <div class="col col-lg-12">
                            <table class="table table-border">
                                <thead style="text-align: center">
                                    <tr>
                                        <th>Order ID</th>
                                        <th>Product</th>
                                        <th>Product name</th>
                                        <th>Quantity</th>
                                        <th>Total Price</th>
                                        <th>Order Date</th>
                                        <th>Shipping Date</th>
                                        <th>Shipping Address</th>
                                        <th>Status</th>
                                        <th>Note</th>

                                    </tr>
                                </thead>
                                <tbody style="text-align: center" >

                                    <c:forEach items="${list}" var="o">

                                        <tr >
                                            <td>OR${o.getOrderID()}</td>
                                            <td>
                                                <div class="aside">
                                                    <img style="max-width: 100px" src="${o.getProductImg()}" />
                                                </div>
                                            </td>
                                            <td>${o.getProductName()}</td>
                                            <td>${o.getQuantity()}</td>
                                            <td><fmt:formatNumber type="number" value="${o.getTotalPrice()}" pattern="###,###,###" /> VND</td>
                                            <td >${o.getOrderDate()} </td>
                                            <td >${o.getDeliveriDate()}</td>
                                            <td >${o.getAddress()}</td>
                                            <td >${o.getStatus()}</td>
                                            <td >${o.getNote()}</td>
                                            <c:if test="${!(o.getStatus().equals('Complete'))}">
                                                <td><a href="receivedItem?od=${o.getOrderID()}" class="send" style="width: 80px; background-color: green !important;">Received</a></td>
                                                <c:if   test="${!(o.getStatus().equals('Delivering'))}">
                                                    <td><a href="returnItem?oid=${o.getOrderID()}" class="send" style="width: 80px;">Cancel</a></td>
                                                </c:if>
                                            </c:if>
                                        </tr>
                                    </c:forEach>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </c:if>
                <c:if test="${size == 0}">
                    <h1 class="text-center text-justify " style="font-size: 50px; color: #f2b87f; ">You haven't ordered anything!</h1>
                    <div class="row" style="margin-bottom: 50px; font-size: 30px; color: black; margin-left: 400px">
                        Start shopping now &nbsp;
                        <a href="/allproduct" id="buyNow">Buy now</a>
                    </div>
                </c:if>
            </div>
            <!-- End block content -->
        </main>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/jquery-3.0.0.min.js"></script>
    <script src="js/plugin.js"></script>
    <!-- sidebar -->
    <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="js/custom.js"></script>
    <!-- javascript -->
    <script src="js/owl.carousel.js"></script>
    <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
    <script>
        $(document).ready(function () {
            $(".fancybox").fancybox({
                openEffect: "none",
                closeEffect: "none"
            });

            $(".zoom").hover(function () {

                $(this).addClass('transition');
            }, function () {

                $(this).removeClass('transition');
            });
        });
    </script>
</html>

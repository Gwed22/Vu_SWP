<%-- 
    Document   : orderhistory
    Created on : Mar 13, 2023, 6:50:43 PM
    Author     : Tran Ba Nam
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <!-- basic -->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- basic -->
        <meta charset="utf-8">
        <!-- mobile metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <!-- site metas -->
        <title>G3</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- bootstrap css -->
        <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
        <link rel="stylesheet" href="bootstrap.min.css">
        <!-- style css -->
        <link rel="stylesheet" href="css/stylee.css">
        <!-- Responsive-->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- fevicon -->
        <link rel="icon" href="images/fevicon.png" type="image/gif" />
        <!-- Scrollbar Custom CSS -->
        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
        <!-- Tweaks for older IEs-->
        <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
        <!-- owl stylesheets -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>   
            <main role="main">
                <!-- Block content - Đục lỗ trên giao diện bố cục chung, đặt tên là `content` -->
                <div class="container-fluid" >
                    <br>

                    <h1 style="margin-left: 25px">History Order</h1>
                    <div class="row">
                        <div class="col col-lg-12">
                            <table class="table table-border " >
                                <thead style="text-align: center">
                                    <tr>
                                        <th>Order Code</th>
                                        <th>Order Day</th>
                                        <th>Delivery Day</th>
                                        <th>Status</th>
                                        <th>Note</th>
                                        <th>Address</th>
                                        <th>Total Price</th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody style="text-align: center" >
                                <c:forEach items="${list}" var="o" varStatus="loop">
                                    <tr>
                                        <td>OR${o.getOrderID()}</td>
                                        <td>${o.getOrderDate()}</td>
                                        <td>${o.getDeliveryDate()}</td>
                                        <td>${o.getAddress()}</td>
                                        <td>${o.getStatus()}</td>
                                        <td>${o.getNote()}</td>
                                        <td><fmt:formatNumber type="number" value="${o.getTotalMoney()}" pattern="###,###,###" /> VND</td>
                                        <td><a href="history?od=${o.getOrderID()}" class="send" style="width: 80px; background-color: #0000ff !important;">Detail</a></td>
                                        <c:if test="${!(o.getStatus().equals('Complete') || o.getStatus().equals('Return'))}">
                                            <td><a href="receiveditem?od=${o.getOrderID()}" class="send" style="width: 80px; background-color: green !important;">Received</a></td>
                                            <c:if test="${!(o.getStatus().equals('Delivering'))}">
                                            <td><a href="returnItem?oid=${o.getOrderID()}" class="send" style="width: 80px;">Cancel</a></td>
                                            </c:if>
                                        </c:if>
                                    </tr>

                                </c:forEach>

                            </tbody>
                        </table>
                    </div>
                </div>




            </div>
            <!-- End block content -->
        </main>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>

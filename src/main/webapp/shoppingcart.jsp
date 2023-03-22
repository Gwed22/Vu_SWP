<%-- 
    Document   : shoppingcart
    Created on : Oct 28, 2022, 10:56:54 AM
    Author     : PC
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="com.models.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>



    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
        <link href="css/style9.css" rel="stylesheet" type="text/css"/>
        <style>
            .gallery-wrap .img-big-wrap img {
                height: 450px;
                width: auto;
                display: inline-block;
                cursor: zoom-in;
            }


            .gallery-wrap .img-small-wrap .item-gallery {
                width: 60px;
                height: 60px;
                border: 1px solid #ddd;
                margin: 7px 2px;
                display: inline-block;
                overflow: hidden;
            }

            .gallery-wrap .img-small-wrap {
                text-align: center;
            }
            .gallery-wrap .img-small-wrap img {
                max-width: 100%;
                max-height: 100%;
                object-fit: cover;
                border-radius: 4px;
                cursor: zoom-in;
            }
            .img-big-wrap img{
                width: 100% !important;
                height: auto !important;
            }


        </style>
    </head>
    <body>

        <jsp:include page="header.jsp"></jsp:include>
            <section >
                <div class="cart-shop">
                    <span>CART</span>
                </div>
                <div class="container">
                    <div clas="col-lg-12">
                    <c:set var="p" value="${sessionScope.cart}" />
                    <c:if test="${size != 0}">
                            <table style="width: 100%; text-align: center;">
                                <thead>
                                    <tr >
                                        <th style="padding-bottom: 20px;">Product </th>
                                        <th style="padding-bottom: 20px;">Product Name </th>
                                        <th style="padding-bottom: 20px;">Quantity </th>
                                        <th style="padding-bottom: 20px;">Price</th>
                                        <th style="padding-bottom: 20px;">Total</th>
                                        <th style="padding-bottom: 20px;">Action </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="c" items="${p.items}">
                                        <tr style="background-color: #fff; ">
                                            <td><img class="img-cart" src="${c.product.productImg}" alt="alt"/></td>
                                            <td><span>${c.product.productName}</span></td>
                                            <td><input type="text" value="${c.quantity}" style="border: none; text-align: center; width: 50px; font-size: 14px;" readonly></td>
                                            <td><span><fmt:formatNumber type="number" value="${c.price}" pattern="###,###,###.#"/>VND</span></td>
                                            <td><span><fmt:formatNumber type="number" value="${c.quantity*c.price}" pattern="###,###,###.#"/>VND</span></td>       
                                            <td><a href="delete?pid=${c.product.conID}">Delete</a></td>                           
                                        </tr>
                                    </c:forEach>
                                </tbody>

                            </table>
                            <div class="col-md-12">
                                <a class="btn send" href="/paymentprocess" style="margin-top: 50px;"> Order</a>
                            </div>
                        
                         <div style="margin-bottom: 10px;"><a href="allproduct"> << Continue to shopping</a></div>
                    </c:if>
                    <c:if test="${size == 0}">
                        <div style="text-align: center; margin-bottom: 20px;"><span>THERE IS NO PRODUCT IN THE CART</span></div>
                        <div style="height: 100px; text-align: center;"><a href="/allproduct"> << Continue to shopping</a></div>
                    </c:if>
                </div>
            </div>
        </section>
        <jsp:include page="footer.jsp"></jsp:include>

    </body>
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
    crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
            integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
    crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
            integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
    crossorigin="anonymous"></script>
    <!-- Javascript files-->
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

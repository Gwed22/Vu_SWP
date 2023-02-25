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
        <link href="css/style7.css" rel="stylesheet" type="text/css"/>
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

        <div class=" titlepage" >
            <a href="shopcart" style="margin-top: 10px;"> << Back to cart </a>
            <div class="title" style="margin: 50px auto 30px 0px;">
                <h2>G3 Order Confirm</h2>

            </div>

        </div>

        <div class="payment">

            <div class="row">
                <div class="col-lg-6 col-md-5 col-sm-5 col-xs-5">
                    <div class="payment-form" style="margin-left: 200px;">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-10">
                                    <div class="row">
                                        <div style="display: none" class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                                            Code:<input class="form-control" type="text" name="txtProductID" value="cc" readonly>
                                        </div>
                                        <div class="col-xl-12 col-lg-6 col-md-6 col-sm-6">
                                            Name: <input class="form-control" placeholder="Your name" type="text" name="txtName" value="cc" readonly >
                                        </div>
                                        <div class="col-xl-12 col-lg-6 col-md-6 col-sm-6">
                                            Phone: <input class="form-control" placeholder="Phone number" type="text" name="txtPhone" value="cc" readonly >
                                        </div>
                                        <div class="col-md-12">
                                            Address: <textarea class="textarea" placeholder="Address" name="txtAddress" required></textarea>
                                        </div>
                                        <div class="col-md-12">
                                            Note: <textarea class="textarea" placeholder="Address" name="txtAddress" required></textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5 ">
                    <div class="container">
                        <div class="">
                            <div class="row">
                                <c:set var="p" value="${sessionScope.cart}" />
                                <table style="width: 100%; height: 50%; text-align: center;" >
                                    <thead>
                                    <th>Product: </th>
                                    <th>Product Name: </th>
                                    <th>Quantity:  </th>
                                    <th>Price: </th>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="c" items="${p.items}">
                                            <tr style="background-color: #fff; ">
                                                <td><img class="img-cart" src="${c.product.productImg}" alt="alt"/></td>
                                                <td><span>${c.product.productName}</span></td>
                                                <td><input type="text" value="${c.quantity}" style="border: none; text-align: center; width: 50px; font-size: 14px;" readonly></td>
                                                <td><span><fmt:formatNumber type="number" value="${c.quantity*c.price}" pattern="###,###,###.#"/> VND</span></td>                                                                                                               
                                            </tr>
                                        </c:forEach>     
                                    </tbody>
                                </table>
                            </div> <!-- row.// -->
                            <table style="margin-top: 20px; width: 100%;">
                                <thead>
                                    <tr>
                                        <th scope="col"></th>

                                    </tr>
                                </thead>
                                <tbody class="total-inline">
                                    <tr >
                                        <td class="inline">Product Total Price: </td>
                                        <td  style="text-align: right">${c.quantity*c.price}</td>
                                    </tr>
                                    <tr>
                                        <td class="inline" >Shipping Price: </td>
                                        <td style="text-align: right">$30</td>
                                    </tr>
                                </tbody>
                                <tfoot class="total-foot">
                                    <tr>
                                        <td class="inline">Total: </td>
                                        <td style="text-align: right">$12030</td>
                                    </tr>
                                </tfoot>
                            </table>
                            <div class=" col-md-10">
                                <button class="send-payment" type="submit" name="SendOrder">Confirm</button>
                            </div>
                        </div> <!-- card.// -->
                    </div>
                </div>
            </div>
        </div>


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

<%-- 
    Document   : shoppingcart
    Created on : Oct 28, 2022, 10:56:54 AM
    Author     : PC
--%>
<%@page import="com.models.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>



    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
        <link href="css/style3.css" rel="stylesheet" type="text/css"/>
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
        <%
            Account acc = (Account) session.getAttribute("acc");
            if (acc != null) {
        %>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="container">
                <div class="row">
                    <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5 border">
                        <div class="container">
                            <div class="card">
                                <div class="row">
                                    <aside>
                                        <article class="gallery-wrap"> 
                                            <div class="img-big-wrap">
                                                <div> <a href="#"><img src="${detail.getProductImg()}"></a></div>
                                        </div> <!-- slider-product.// -->
                                        <div class="img-small-wrap">
                                        </div> 
                                        <!-- slider-nav.// -->
                                    </article> 
                                    <!-- gallery-wrap .end// -->
                                </aside>
                                <aside>
                                    <article class="card-body p-5">
                                        <h3 class="title mb-lg-3">${detail.getProductName()}</h3>
                                        <p class="price-detail-wrap"> 
                                            <span class="price h3 text-warning"> 
                                                <span class="red">$</span><span class="red">${detail.getProductPrice()}</span>
                                            </span> 
                                        </p> <!-- price-detail-wrap .// -->
                                        <dl class="item-property">
                                            <dt>Description</dt>
                                            <dd><p>
                                                    ${detail.getProductDesc()}
                                                </p></dd>
                                        </dl>                                    

                                    </article> <!-- card-body.// -->
                                </aside> <!-- col.// -->
                            </div> <!-- row.// -->
                        </div> <!-- card.// -->
                    </div>
                </div>
                <div class="col-lg-7 col-md-7 col-sm-7 col-xs-7">
                    <div class="contact">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">

                                    <form class="main_form" action="order" method="post">
                                        <div class="row">
                                            <div style="display: none" class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                                                Product Code:<input class="form-control" type="text" name="txtProductID" value="${detail.getProductID()}" readonly>
                                            </div>
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                                                Name: <input class="form-control" placeholder="Your name" type="text" name="txtName" value="<%= acc.getLname()%> <%= acc.getFname()%>" readonly >
                                            </div>
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                                                Phone: <input class="form-control" placeholder="Phone number" type="text" name="txtPhone" value="<%= acc.getPhone()%>" readonly >
                                            </div>
                                            <div class=" col-md-12">
                                                Quantity: <input class="form-control" placeholder="Quantity" type="number" name="txtQuantity" min="1" max="${detail.getQuantity()}" id="quantity"  required>
                                            </div>

                                            <div class="col-md-12">
                                                Address: <textarea class="textarea" placeholder="Address" name="txtAddress" required></textarea>
                                            </div>
                                            <div class=" col-md-12">
                                                <button class="send" type="submit" name="SendOrder">Order</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
        <%
            } else {
                request.setAttribute("errorLogin", "Please login to buy!");
                request.getRequestDispatcher("/account").forward(request, response);
                
            }
        %>
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

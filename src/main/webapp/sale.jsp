<%-- 
    Document   : sale.jsp
    Created on : Feb 22, 2023, 10:06:21 PM
    Author     : Admin
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
        <style>
            /* Make the image fully responsive */
            .carousel-inner img {
                width: 100%;
                height: 400px;
            }

            .titlepage .title h2{
                font-size: 42px;
            }
            .product {
                display: flex;
                flex-direction: column;
                align-items: center;
                margin-bottom: 2rem;
                border-radius: 5%;
                box-shadow:5px 5px 5px 5px grey;
                padding-bottom: 5%;
            }

            .product img {
                max-width: 100%;
            }

            .product h3 {
                margin: 1rem 0;
            }

            .product p {
                font-size: 1.2rem;
            }

            .product p span {
                color: #999;
                text-decoration: line-through;
                margin-left: 1rem;
            }
            .product button {
                background-color: #333;
                color: #fff;
                border: none;
                border-radius: 5%;
                margin-top: 2%;
                padding: 1% 2%;
            }

            .product button:hover {
                background-color: #555;
            }
            .title{
                margin: 5% 0 2% 1%;
            }
        </style>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <!-- Carousel wrapper -->
            <div id="demo" class="carousel slide container" data-ride="carousel" >
                <ul class="carousel-indicators">
                    <li data-target="#demo" data-slide-to="0" class="active"></li>
                    <li data-target="#demo" data-slide-to="1"></li>
                    <li data-target="#demo" data-slide-to="2"></li>
                </ul>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="/images/salebanner.png" alt="Sale" width="500" height="500">
                        <div class="carousel-caption">
                            <h3>Sale 1</h3>
                            <p>Sale description</p>
                        </div>   
                    </div>
                    <div class="carousel-item">
                        <img src="/images/salebanner.png" alt="Sale" width="500" height="500">
                        <div class="carousel-caption">
                            <h3>Sale 1</h3>
                            <p>Sale description</p>
                        </div>   
                    </div>
                    <div class="carousel-item">
                        <img src="/images/salebanner.png" alt="Sale" width="500" height="500">
                        <div class="carousel-caption">
                            <h3>Sale 1</h3>
                            <p>Sale description</p>
                        </div>      
                    </div>
                </div>
                <a class="carousel-control-prev" href="#demo" data-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </a>
                <a class="carousel-control-next" href="#demo" data-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </a>
            </div>
            <!-- Carousel wrapper -->

            <div class="container-fluid">
                <div class="row" style="margin-top: 50px;">
                <c:forEach var="c" items="${listSA}">
                    <div class="col-md-3">
                        <div class="product container">
                            <a href="productdetail?pid=${c.getConID()}"><img src="${c.getProductImg()}" alt="Product 1" style="width: 100%; border-radius: 10px; margin-top: 5px"></a>
                            <h3 style="font-size: 15px;">${c.getProductName()}</h3>
                            <p>
                                Old price: <del><fmt:formatNumber type="number" value=" ${c.getProductPrice()}" pattern="###,###,###" /></del>VND
                                <br>
                                New price: <strong style="color: red"><fmt:formatNumber type="number" value=" ${c.getProductPrice() - (c.getProductPrice() * c.getSalePrice())}" pattern="###,###,###" /></strong>VND
                            </p>
                             <a href="addtocart?pid=${c.getConID()}" class="btn btn-main">Buy now</a>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>

    </body>
</html>
<%-- 
    Document   : sale.jsp
    Created on : Feb 22, 2023, 10:06:21 PM
    Author     : Admin
--%>

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
        <div id="demo" class="carousel slide" data-ride="carousel">
            <ul class="carousel-indicators">
                <li data-target="#demo" data-slide-to="0" class="active"></li>
                <li data-target="#demo" data-slide-to="1"></li>
                <li data-target="#demo" data-slide-to="2"></li>
            </ul>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="/images/salebanner.png" alt="Sale" width="1100" height="500">
                    <div class="carousel-caption">
                        <h3>Sale 1</h3>
                        <p>Sale description</p>
                    </div>   
                </div>
                <div class="carousel-item">
                    <img src="/images/salebanner.png" alt="Sale" width="1100" height="500">
                    <div class="carousel-caption">
                        <h3>Sale 1</h3>
                        <p>Sale description</p>
                    </div>   
                </div>
                <div class="carousel-item">
                    <img src="/images/salebanner.png" alt="Sale" width="1100" height="500">
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
       <div class="container titlepage">
                    <div class="col-lg-12 ">
                        <div class="title">
                            <h2>Product on sale</h2>
                        </div>
                    </div>
                    <div class="col-lg-8">
                        <a class="read-more " href="/allproduct">See More</a>
                    </div>

                </div>
        <div class="row">
            <div class="col md 3">
                <div class="product">
                    <img src="product1.jpg" alt="Product 1">
                    <h3>Product 2</h3>
                    <p>$20.99 <span>$25.99</span></p>
                    <button>Add to Cart</button>
                </div>
            </div>

            <div class="col md 3">
                <div class="product">
                    <img src="product1.jpg" alt="Product 1">
                    <h3>Product 2</h3>
                    <p>$20.99 <span>$25.99</span></p>
                    <button>Add to Cart</button>
                </div>
            </div>

            <div class="col md 3">
                <div class="product">
                    <img src="product1.jpg" alt="Product 1">
                    <h3>Product 3</h3>
                    <p>$20.99 <span>$25.99</span></p>
                    <button>Add to Cart</button>
                </div>
            </div>

            <div class="col md 3">
                <div class="product">
                    <img src="product1.jpg" alt="Product 1">
                    <h3>Product 4</h3>
                    <p>$20.99 <span>$25.99</span></p>
                    <button>Add to Cart</button>
                </div>
            </div>
        </div>
        
<div class="container titlepage">
                    <div class="col-lg-12 ">
                        <div class="title">
                            <h2>Product on sale</h2>
                        </div>
                    </div>
                    <div class="col-lg-8">
                        <a class="read-more " href="/allproduct">See More</a>
                    </div>

                </div> 
        <div class="row">
            <div class="col md 3">
                <div class="product">
                    <img src="product1.jpg" alt="Product 1">
                    <h3>Product 2</h3>
                    <p>$20.99 <span>$25.99</span></p>
                    <button>Add to Cart</button>
                </div>
            </div>

            <div class="col md 3">
                <div class="product">
                    <img src="product1.jpg" alt="Product 1">
                    <h3>Product 2</h3>
                    <p>$20.99 <span>$25.99</span></p>
                    <button>Add to Cart</button>
                </div>
            </div>

            <div class="col md 3">
                <div class="product">
                    <img src="product1.jpg" alt="Product 1">
                    <h3>Product 3</h3>
                    <p>$20.99 <span>$25.99</span></p>
                    <button>Add to Cart</button>
                </div>
            </div>

            <div class="col md 3">
                <div class="product">
                    <img src="product1.jpg" alt="Product 1">
                    <h3>Product 4</h3>
                    <p>$20.99 <span>$25.99</span></p>
                    <button>Add to Cart</button>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>

    </body>
</html>

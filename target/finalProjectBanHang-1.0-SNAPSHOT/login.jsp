<%-- 
    Document   : login
    Created on : Oct 25, 2022, 6:21:20 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <!-- basic -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- mobile metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <!-- site metas -->
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- bootstrap css -->
        <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- style css -->
        <link rel="stylesheet" href="css/style9.css">
        <link rel="stylesheet" href="css/style9.css">
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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
        <style>
            html {
                overflow: hidden;
            }
            .btn-color{
                background-color: #0e1c36;
                color: #fff;
            }

            .profile-image-pic{
                height: 200px;
                width: 200px;
                object-fit: cover;
            }

            .cardbody-color{
                background-color: #ebf2fa;
            }

            a{
                text-decoration: none;
            }
            .other-option{
                display: flex;
                justify-content: center;
            }
            .other-option .forgot-password{
                margin-right: 20%;
            }
        </style>
        <style>
            #bill-form {
                position: fixed;
                width: 100vw;
                height: 100vh;
                background-color: rgba(0, 0, 0, 0.6);
                top: 0;
                left: 0;
                display: flex;
                align-items: center;
                justify-content: center;
                text-align: center;
                display: flex;
                z-index: 999;
            }
            #bill-form-content {
                padding-left: 15px;
                width: 320px;
                height: 160px;
                background-color: white;
                color: black;
                border-radius: 5px;
            }
            #bill-form-content h2 {
                font-size: 20px;
                padding: 12px 0;
                border-bottom: 1px solid #ddd;
                position: relative;
            }
            #bill-form-content h2 span {
                display: block;
                position: absolute;
                height: 30px;
                padding: 0 6px;
                border: 1px solid #ddd;
                right: 12px;
                cursor: pointer;
                top: 50%;
                transform: translateY(-50%);
                line-height: 26px;
                border-radius: 5px;
                background-color: #1b2a47;
                color: white;
                font-size: 15px;
            }
        </style>
    </head>
    <body>
        <c:if test="${message != null}">
            <div id="bill-form">
                <div id="bill-form-content">
                    <h2>Message<span id="bill-close">Close</span></h2>
                    <br>
                    <div class="row" style="margin: 0 5px 0 5px">
                        <span style="font-size: 20px">${message}!</span>
                    </div>
                </div>
            </div>
        </c:if>
        <div class="container">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <h2 class="text-center text-dark mt-5">Login</h2>
                    <p class=" text-success" style="font-size: 25px; text-align: center">${errorLogin}</p>

                    <div class="card my-auto">

                        <form class="card-body cardbody-color p-lg-5" action="/login" method="post">

                            <div class="mb-3">
                                <input type="text" class="form-control" id="phone" aria-describedby="numberPhone" required=""
                                       placeholder="Enter number phone" name="phone">
                            </div>

                            <div class="mb-3">
                                <input type="password" class="form-control" id="password" placeholder="Password" name="password" required="" >
                            </div>

                            <div class="mb-3" style="display: none">
                                <input type="text" class="form-control" name="a" value="allproduct">
                            </div>

                            <div class="mb-3" style="display: none">
                                <input type="text" class="form-control" name="a" value="home">
                            </div>

                            <p class="text-danger">${mess}</p>
                            <div class="text-center"><button type="submit" class="btn btn-color px-5 mb-5 w-100" name="submit">Login</button></div>
                            <div  class="other-option">
                                <div id="emailHelp" class="form-text text-center mb-5 text-dark forgot-password"> <a href="confirmphone" class="text-dark fw-bold"> Forgot Password</a></div>
                                <div id="emailHelp" class="form-text text-center mb-5 text-dark register">Not
                                    Registered? <a href="/register" class="text-dark fw-bold"> Create an
                                        Account</a> </div>
                            </div>
                    </div>
                </div>
                </form>
            </div>
        </div>

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
    <script>
        const billclose = document.querySelector('#bill-close');
        billclose.addEventListener("click", function () {
            document.querySelector('#bill-form').style.display = "none";
        });


    </script>

</html>

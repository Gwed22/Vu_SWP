<%-- 
    Document   : resetpassword
    Created on : Feb 18, 2023, 7:55:18 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reset Password</title>
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
<<<<<<< HEAD
<<<<<<< HEAD
        <link rel="stylesheet" href="css/stylee.css">
=======
        <link rel="stylesheet" href="css/stylee.css">
>>>>>>> 532509d27860fb160c21cc5688701b2179066b34
=======
        <link rel="stylesheet" href="css/style8.css">
        <link rel="stylesheet" href="css/style8.css">
>>>>>>> 4f0c8ff6d651eca7f5b52b15e041493b56c77a8d
        <!-- Responsive-->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- fevicon -->
        <link rel="icon" href="images/fevicon.png" type="image/gif" />
        <!-- Scrollbar Custom CSS -->
        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
        <!-- Tweaks for older IEs-->
        <!-- owl stylesheets -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
        <style>
            .button-next-back{
                display: flex;
                justify-content: center;
            }

            .button-next-back .login-button{
                margin-right: 10%;
            }
            .button-next-back .back-button{
                margin-left: 10%;
            }
            .back-button a{
                color:white;
            }
            html {
                overflow: hidden;
            }
            .button-next-back .btn-color{
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
        </style>
    </head>
    <body>

        <div class="container">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <h2 class="text-center text-dark mt-5">Reset Password</h2>
                    <p class=" text-success" style="font-size: 25px; text-align: center">${errorLogin}</p>

                    <div class="card my-auto">

                        <form action="resetpassword" method="post" class="card-body cardbody-color p-lg-5">
                            <div style="display: none" class="input-group mg-b-pro-edt">
                                <span class="input-group-addon"><i class="icon nalika-edit" aria-hidden="true"></i></span>
                                <input type="text" class="form-control" placeholder="Consignment ID" name="accountID" value="${id}" readonly style="color: black">
                            </div>

                            <div class="mb-3">
                                <input type="password" name="txtPassword" class="form-control" id="password" placeholder="Password" >
                            </div>
                            <div class="mb-3">
                                <input type="password" name="txtPassword1" class="form-control" id="cf-password" placeholder="Confirm Password" >
                            </div>
                            <div class="button-next-back">
                                <div class="back-button"><a href="forgotpassword">Back</a></div>
                                <div class="login-button"><button type="submit" name="btnReset" class="btn btn-color px-5  mb-5 w-100">Reset</button></div>

                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>
        <c:if test="${message != null}">
            <div id="bill-form">

                <div class="row" style="margin: 0 5px 0 5px">
                    <span style="font-size: 20px;color: red; text-align: center; ">${message}!</span>
                </div>

            </div>
        </c:if>
    </body>
</html>

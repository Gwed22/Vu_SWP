<%-- 
    Document   : register
    Created on : Oct 25, 2022, 6:21:56 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
        <link rel="stylesheet" href="css/style7.css">
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
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->

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
        </style>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <h2 class="text-center text-dark mt-5">Register</h2>
                    <div class="card my-auto">

                        <form class="card-body cardbody-color p-lg-5" action="register" method="post">
                            <div class="mb-3">
                                <input type="text" class="form-control" id="Fname" aria-describedby="fname"
                                       placeholder="First Name" name="txtFName">
                            </div>
                            <p id="firstNameError" class="text-danger">

                            </p>

                            <div class="mb-3">
                                <input type="text" class="form-control" id="Lname" aria-describedby="lname"
                                       placeholder="Last name" name="txtLName">
                            </div>
                            <p id="lastNameError" class="text-danger">

                            </p>
                            <div class="mb-3">
                                <input type="text" class="form-control" id="Phone" aria-describedby="phone"
                                       placeholder="Phone" name="txtPhone">
                            </div>
                            <p id="phoneError" class="text-danger">${mes}</p>
                            <div class="mb-3">
                                <input type="password" class="form-control" id="password" placeholder="Password" name="txtPw">
                            </div>
                            <p id="passwordError" class="text-danger"></p>
                            <div class="mb-3">
                                <input type="password" class="form-control" id="repassword" placeholder="Comfirm password" name="txtRePw">
                            </div>
                            <p id="repasswordError" class="text-danger"></p>
                            <p id="Error" class="text-danger"></p>
                            <div class="text-center"><button type="submit" class="btn btn-color px-5 mb-5 w-100" name="btnRegi" onclick="return check()">Register</button></div>
                            <div id="emailHelp" class="form-text text-center mb-5 text-dark">I have account.
                                <a href="/account" class="text-dark fw-bold"> Sign in</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/jquery-3.0.0.min.js"></script>
    <script src="js/plugin.js"></script>
    <script src="js/checkRegister.js"></script>
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

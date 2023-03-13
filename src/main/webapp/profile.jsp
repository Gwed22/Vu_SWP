<%-- 
    Document   : profile
    Created on : Feb 27, 2023, 7:17:49 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
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
        <link rel="stylesheet" href="css/style8.css">
        <link rel="stylesheet" href="css/style8.css">
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
        <style>>
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
        <jsp:include page="header.jsp"></jsp:include>
            <div class="container">
                <div class="row">
                    <div class="col-md-6 offset-md-3">
                        <h2 class="text-center text-dark mt-5">Profile</h2>
                        <div class="card my-auto">
                            <form class="card-body cardbody-color p-lg-5" action="editprofile" method="post">
                                <div style="display: none" class="mb-3">
                                    <input type="text" class="form-control" id="account"  value="${acc.getAccountID()}" name="accountID" readonly>
                                </div>
                                <h2>Your full name</h2>
                                <div class="mb-3">
                                    <input type="text" class="form-control" id="fullname"  value="${acc.getName()}" name="txtName" required="">
                                </div>
                                <h2>Your phone number</h2>
                                <div class="mb-3">
                                    <input type="text" class="form-control" id="phone" aria-describedby="numberPhone" value="${acc.getPhone()}" placeholder="Number phone" name="txtPhone" readonly>
                                </div>
                                <h2>Your address</h2>
                                <div class="mb-3">
                                    <input type="text" class="form-control" id="address"  value="${acc.getAddress()}" name="txtAddress" required="" >
                                </div>
                                <h2>Your security answer</h2>
                                <div class="mb-3">
                                    <input type="text" class="form-control" id="answer"  value="${acc.getAnswer_context()}" name="txtAnswer" required="">
                                </div>
                                <div class="text-center"><button type="submit" class="btn btn-color px-5 mb-5 w-100" name="btnUpdate">Edit</button></div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>

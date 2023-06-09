<%-- 
    Document   : contact
    Created on : Oct 27, 2022, 11:07:04 AM
    Author     : PC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- basic -->
        <meta charset="utf-8">

        <!-- mobile metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <!-- site metas -->
        <title>Contact</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- bootstrap css -->
        <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- style css -->
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
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    </head>
    <!-- body -->

    <body class="main-layout">
        <!-- loader  -->
        <jsp:include page="header.jsp"></jsp:include>
            <!-- end header -->
            <div class="brand_color">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="titlepage">
                            <c:if test="${requestScope.oid == null}">
                                <h2>Contact</h2>
                            </c:if>

                            <c:if test="${requestScope.oid != null}">
                                <h2 > Return</h2>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- contact -->
        <div class="contact" >
            <div class="container contact-child">
                <form class="main_form col-md-7" action="contact" method="post" name="myform" onsubmit="return validateemail();">
                    <c:if test="${requestScope.oid != null}">
                        <div class="col-md-4">
                            ORDER CODE:
                            <input class="form-control" placeholder="Order Code" type="text" name="txtOrderCode" value="OR${requestScope.oid}" readonly>
                        </div>
                    </c:if>
                    <div class="col-md-8">
                        Name:
                        <input class="form-control" placeholder="Name" type="text" name="txtName" value="${sessionScope.acc.name}" readonly>
                    </div>
                    <div class="col-md-8">
                        Mail:
                        <input class="form-control" placeholder="yourmail@fpt.com" type="text" name="txtMail" required>
                    </div>
                    <div class="col-md-12">
                        Reason: 
                        <textarea placeholder="Reasson..." rows="10" style="width: 100%;" name="txtRea" class="textarea" required></textarea>
                    </div>
                    <div class=" col-md-12">
                        <button class="send" type="submit">Send</button>
                    </div>
                </form>
            </div>
        </div>
        <!-- end contact -->

        <!-- footer -->
        <jsp:include page="footer.jsp"></jsp:include>
        <!-- end footer -->
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

            function validateemail()
            {
                var x = document.myform.txtMail.value;
                var atposition = x.indexOf("@");
                var dotposition = x.lastIndexOf(".");
                if (atposition < 1 || dotposition < atposition + 2 || dotposition + 2 >= x.length) {
                    alert("Please enter mail follow format yourmail@mail.com");
                    return false;
                }
            }
        </script>
    </body>

</html>

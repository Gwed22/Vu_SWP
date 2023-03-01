<%-- 
    Document   : profile
    Created on : Feb 17, 2023, 7:55:18 PM
    Author     : Admin
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
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
        <link rel="stylesheet" href="css/style1.css">
=======
        <link rel="stylesheet" href="css/style5.css">
>>>>>>> 532509d27860fb160c21cc5688701b2179066b34
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

            .register-button{
                margin-left: 70%;
            }
            .gender{
                text-align: center;
                display:flex;
                margin-left: 25%
            }
            .input-gender-male{
                margin-right: 25%
            }
           
        </style>


        <script>
            function checkValid() {
                var patt_phone = /^0[1-9]\d{8,10}$/;
                var name = document.getElementById("full-name").value;
                var phone = document.getElementById("phone").value;
                var password = document.getElementById("password").value;
                var password1 = document.getElementById("password1").value;
                var address = document.getElementById("address").value;
                var security_answer = document.getElementById("security_answer").value;
                var mess = "";
                if (!patt_phone.test(phone)) {
                    mess += "The phone is invalid!\n";
                }
                if (name.length > 50) {
                    //  alert("The name cannot be null! The name cannot be greater than 50 characters! ");
                    mess += "The name cannot be greater than 50 characters!\n";
                    //return false;
                }
                if (password.length > 50) {
                    //  alert("The name cannot be null! The name cannot be greater than 50 characters! ");
                    mess += "The password cannot be greater than 50 characters!\n";
                    //return false;
                }
                if (password1 !== password) {
                    //  alert("The name cannot be null! The name cannot be greater than 50 characters! ");
                    mess += "The confirm password must be the same as the password as above!\n";
                    //return false;
                }
                if (security_answer.length > 100) {
                    // alert("The address cannot be null! The address cannot be greater than 100 characters!");
                    mess += "The security answer cannot be greater than 100 characters!\n";
                    //return false;
                }
                if (address.length > 100) {
                    // alert("The address cannot be null! The address cannot be greater than 100 characters!");
                    mess += "The address cannot be greater than 100 characters!\n";
                    //return false;
                }
                if (mess !== "") {
                    alert(mess);
                    return false;
                }
            }
        </script>
    </head>
    <body>
        <div class="container">

            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <h2 class="text-center text-dark mt-5">Register</h2>

                    <div class="card my-auto">

                        <form class="card-body cardbody-color p-lg-5" action="register" method="post">       

                            <div class="mb-3">
                                <input type="text" class="form-control" id="full-name"
                                       placeholder="Full Name" name="txtName" required="">
                            </div>
                            <div class="mb-3">
                                <input type="number" class="form-control" id="phone" aria-describedby="numberPhone"
                                       placeholder="Enter number phone" name="txtPhone" required="">
                            </div>
                            <div class="mb-3">
                                <div class="gender">
                                    <div class="input-gender-male">
                                        <input  type="radio" id="gender-male"   name="gender"  value="male" checked="" >
                                        <lable> Male </lable>
                                    </div>
                                    <div class="input-gender-female">
                                    <input type="radio" id="gender-female" name="gender" value="female">
                                    <lable>Female </lable>
                                </div>
                            </div>
                    </div>

                    <div class="mb-3">
                        <input type="password" class="form-control" id="password"
                               placeholder="Password" name="txtPassword" required="">
                    </div>
                    <div class="mb-3">
                        <input type="password" class="form-control" id="password1"
                               placeholder="Confirm Password" name="txtPassword2" required="">
                    </div>
                    <div class="mb-3">
                        <input type="text" class="form-control" id="address" "
                               placeholder="Address" name="txtAddress" required="">
                    </div>
                    <div class="mb-3">
                        <div class="input-group mg-b-pro-edt">
                            <span class="input-group-addon"><i class="icon nalika-table" aria-hidden="true"></i></span>
                            <select name="sqID" class="form-control pro-edt-select form-control-primary">
                                <c:forEach items="${listC}" var="ca">
                                    <option value="${ca.getSqID()}">${ca.getSqContext()}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="mb-3">
                        <input type="text" class="form-control" id="security_answer" "
                               placeholder="Security Answer" name="txtAnswer" required="">
                    </div>

                    <div class=""><button type="submit" name="btnAdd" onclick="return checkValid()" class="btn btn-color  register-button">Register</button></div>
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

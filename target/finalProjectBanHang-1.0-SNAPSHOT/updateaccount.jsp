<%@page import="com.daos.AccountDAO"%>
<%@page import="com.models.Account"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Register new account</title>
        <script
        src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <link rel="stylesheet"
              href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <link rel="stylesheet"
              href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script>
            $(document).ready(function () {

                var patt_email = /^[a-zA-Z]+\w*([.-_]\w+)*\@[a-zA-Z]+\w*([.-_]\w+)*(\.\w+)+$/;
                var patt_phone = /^0[1-9]\d{8,10}$/;

                $("#username").blur(function () {
                    var tk = $.trim($("#username").val());
                    if (tk == "") {
                        $("#usernameHelpBlock").html("User name can not be empty");
                        $("#text-muted").css("color", "red");
                    } else {
                        $("#usernameHelpBlock").html("");
                    }
                });

                $("#address").blur(function () {
                    var tk = $.trim($("#address").val());
                    if (tk == "") {
                        $("#addressHelpBlock").html("Address can not be empty");
                        $("#text-muted").css("color", "red");
                    } else {
                        $("#addressHelpBlock").html("");
                    }
                });

                $("#password1").blur(function () {
                    var mk1 = $.trim($("#password1").val());
                    if (mk1.length < 6 || mk1.length > 20) {
                        $("#password1HelpBlock").html("Password length must be from 6 to 20 characters");
                    } else {
                        $("#password1HelpBlock").html("");
                    }
                });

                $("#phone").blur(function () {
                    var sdt = $.trim($("#phone").val());
                    if (patt_phone.test(sdt) == false) {
                        $("#phoneHelpBlock").html("Phone number is invalid");
                    } else {
                        $("#phoneHelpBlock").html("");
                    }
                });

                $("#button").click(function () {
                    var sdt = $.trim($("#phone").val());
                    var tk = $.trim($("#username").val());
                    var mk2 = $.trim($("#password1").val());
                    var addr = $.trim($("#address").val());

                    if (tk != "" && addr != "" &&
                            mk1.length >= 6 || mk1.length <= 20 &&
                            patt_phone.test(sdt) == true) {
                        $("#success").html("Successful!");
                        return true; //false n?u không mu?n chuy?n trang
                    } else {
                        $("#fail").html("Input not valid!");
                        return false;
                    }
                });

            });
        </script>
        <style>
        </style>
    </head>
    <div class="jumbotron text-center">
        <h1>Update Account</h1>
    </div>
    <div class="slider_section row">
        <div class="menu-left col-xl-2 col-lg-12 col-md-12 co-sm-11 ">
            <ul class="nav-menu-left" style="list-style-type: none">
                <li class="jumbotron text-center"><a href="#">Product Management</a></li>
                <li class="jumbotron text-center"><a href="#">Order Management</a></li>
                <li class="jumbotron text-center"><a href="#">Account Management</a></li>
            </ul>
        </div>
        <div id="myCarousel" class="carousel slide banner-main col-xl-9 col-lg-10 col-md-12 co-sm-11" data-ride="carousel">
            <div class="carousel-inner">
                <form method="post" action="/Account/Updatea">
                    <%
                        Account acc = (Account) session.getAttribute("acc_info");
                    %>
                    <div class="form-group row" id="Form1">
                        <div class="col-lg-2"></div>
                        <label class="col-2 col-form-label" for="id">Account ID</label>
                        <div class="col-6">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">
                                        <i class="fa fa-address-card"></i>
                                    </div>
                                </div>
                                <input id="id" name="id" type="text"
                                       aria-describedby="idHelpBlock"
                                       class="form-control" value="<%= acc.getAccountID()%>" readonly>
                            </div>
                            <span id="idHelpBlock" class="form-text text-danger"></span>
                        </div>
                    </div>
                    <br>
                    <div class="form-group row" id="Form1">
                        <div class="col-lg-2"></div>
                        <label class="col-2 col-form-label" for="username">Account Name</label>
                        <div class="col-6">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">
                                        <i class="fa fa-address-card"></i>
                                    </div>
                                </div>
                                <input id="username" name="username" placeholder="Please enter account name" type="text"
                                       aria-describedby="usernameHelpBlock"
                                       class="form-control" value="<%= acc.getName()%>">
                            </div>
                            <span id="usernameHelpBlock" class="form-text text-danger"></span>
                        </div>
                    </div>
                    <br>
                    <div class="form-group row">
                        <div class="col-lg-2"></div>
                        <label for="password1" class="col-2 col-form-label">Password</label>
                        <div class="col-6">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">
                                        <i class="fa fa-key"></i>
                                    </div>
                                </div>
                                <input id="password1" name="password1" placeholder="Please enter password" type="text"
                                       aria-describedby="password1HelpBlock"
                                       class="form-control" value="<%= acc.getPassword()%>">
                            </div>
                            <span id="password1HelpBlock" class="form-text text-danger"></span>
                        </div>
                    </div>
                    <br>
                    <div class="form-group row">
                        <div class="col-lg-2"></div>
                        <label for="gender" class="col-2 col-form-label">Gender</label>
                        <div class="col-6">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                </div>
                                <input type="radio" name="rdoGD" value="Male"<%= (acc.getGender().equals("Male")) ? "checked" : ""%>/> Male         
                                <input class="offset-2" type="radio" name="rdoGD" value="Female" <%= (acc.getGender().equals("Female")) ? "checked" : ""%>/> Female    
                            </div>
                        </div>
                    </div>
                    <br>
                    <div class="form-group row">
                        <div class="col-lg-2"></div>
                        <label for="role" class="col-2 col-form-label">Role</label>
                        <div class="col-6">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">
                                        <i class="fa fa-gears"></i>
                                    </div>
                                </div>
                                <select id="role" class="form-control">
                                    <option selected><%=acc.getRole_id()%></option>
                                    <option>...</option>
                                    <option>...</option>
                                    <option>...</option>
                                    <option>...</option>
                                </select>
                            </div>
                            <span id="roleHelpBlock" class="form-text text-danger"></span>
                        </div>
                    </div>
                    <br>
                    <div class="form-group row">
                        <div class="col-lg-2"></div>
                        <label for="sq" class="col-2 col-form-label">Security ID</label>
                        <div class="col-6">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">
                                        <i class="fa fa-gears"></i>
                                    </div>
                                </div>
                                <select id="sq" class="form-control">
                                    <option selected><%=acc.getSq_id()%></option>
                                    <option>...</option>
                                    <option>...</option>
                                    <option>...</option>
                                    <option>...</option>
                                </select>
                            </div>
                            <span id="sqHelpBlock" class="form-text text-danger"></span>
                        </div>
                    </div>
                    <br>
                    <div class="form-group row">
                        <div class="col-lg-2"></div>
                        <label for="phone" class="col-2 col-form-label">Phone</label>
                        <div class="col-6">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">
                                        <i class="fa fa-phone"></i>
                                    </div>
                                </div>
                                <input id="phone" name="phone" placeholder="Please enter phone number" type="text"
                                       aria-describedby="phoneHelpBlock"
                                       class="form-control" value="<%=acc.getPhone()%>">
                            </div>
                            <span id="phoneHelpBlock" class="form-text text-danger"></span>
                        </div>
                    </div>
                    <br>
                    <div class="form-group row">
                        <div class="col-lg-2"></div>
                        <label for="address" class="col-2 col-form-label">Address</label>
                        <div class="col-6">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">
                                        <i class="fa fa-address-card"></i>
                                    </div>
                                </div>
                                <textarea id="address" name="address" placeholder="Please enter address"
                                          aria-describedby="addressHelpBlock"
                                          class="form-control"><%=acc.getAddress()%></textarea>
                            </div>
                            <span id="addressHelpBlock" class="form-text text-danger"></span>
                        </div>
                    </div>
                    <br>
                    <div class="form-group row">
                        <div class="offset-4">
                            <button name="btnUpdate" type="submit" id ="button" class="btn btn-primary">Update</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <div class="form-text text-success">
            <h1 id="success"></h1>
        </div>     
        <div class="form-text text-danger">
            <h2 id="fail"></h2>
        </div>
</html>
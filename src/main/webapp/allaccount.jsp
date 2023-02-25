<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.dao.AccountDAO"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Account List</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- favicon
                    ============================================ -->
        <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
        <!-- Google Fonts
                    ============================================ -->
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
        <!-- Bootstrap CSS
                    ============================================ -->
        <link rel="stylesheet" href="css1/bootstrap.min.css">
        <!-- Bootstrap CSS
                    ============================================ -->
        <link rel="stylesheet" href="css1/font-awesome.min.css">
        <!-- nalika Icon CSS
                ============================================ -->
        <link rel="stylesheet" href="css1/nalika-icon.css">
        <!-- owl.carousel CSS
                    ============================================ -->
        <link rel="stylesheet" href="css1/owl.carousel.css">
        <link rel="stylesheet" href="css1/owl.theme.css">
        <link rel="stylesheet" href="css1/owl.transitions.css">
        <!-- animate CSS
                    ============================================ -->
        <link rel="stylesheet" href="css1/animate.css">
        <!-- normalize CSS
                    ============================================ -->
        <link rel="stylesheet" href="css1/normalize.css">
        <!-- meanmenu icon CSS
                    ============================================ -->
        <link rel="stylesheet" href="css1/meanmenu.min.css">
        <!-- main CSS
                    ============================================ -->
        <link rel="stylesheet" href="css1/main.css">
        <!-- morrisjs CSS
                    ============================================ -->
        <link rel="stylesheet" href="css1/morrisjs/morris.css">
        <!-- mCustomScrollbar CSS
                    ============================================ -->
        <link rel="stylesheet" href="css1/scrollbar/jquery.mCustomScrollbar.min.css">
        <!-- metisMenu CSS
                    ============================================ -->
        <link rel="stylesheet" href="css1/metisMenu/metisMenu.min.css">
        <link rel="stylesheet" href="css1/metisMenu/metisMenu-vertical.css">

        <!-- style CSS
                    ============================================ -->
        <link rel="stylesheet" href="style.css">
        <!-- responsive CSS
                    ============================================ -->
        <link rel="stylesheet" href="css1/responsive.css">
        <!-- modernizr JS
                    ============================================ -->
        <script src="js1/vendor/modernizr-2.8.3.min.js"></script>
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
        <jsp:include page="headeradmin.jsp"></jsp:include>
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
        <div class="breadcome-area">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="breadcome-list">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                    <div class="breadcomb-wp">
                                        <div class="breadcomb-icon">
                                            <a href="home"><i class="icon nalika-home"></i></a>
                                        </div>
                                        <div class="breadcomb-ctn">
                                            <h2>Account Management</h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>      
        <div class="product-status mg-b-30">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="product-status-wrap">
                            <h4>Account List</h4>
                            <div class="add-product">
                                <a href="addaccount">Add Account</a>
                            </div>
                            <form action="searchaccount" method="get" class="form-control" style="padding-left: 0px;">
                                <input class="form-control" name="query" id="query" type="text" placeholder="Search">
                            </form>
                            <br><br>
                            <table>
                                <thead>
                                    <tr>
                                        <th scope="col">Account ID</th>
                                        <th scope="col">First Name</th>
                                        <th scope="col">Last Name</th>
                                        <th scope="col">Phone</th>
                                        <th scope="col">Password</th>
                                        <th scope="col">Gender</th>
                                        <th scope="col">Address</th>
                                        <th scope="col">Role ID</th>
                                        <th scope="col">Question ID</th>
                                        <th scope="col">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        ResultSet rs = (ResultSet) request.getAttribute("rs");
                                        while (rs.next()) {

                                            // Split full name into first and last name
                                            String[] nameParts = rs.getString("full_name").split(" ");
                                            String firstName = nameParts[0];
                                            String lastName = "";
                                            for (int i = 1; i < nameParts.length; i++) {
                                                lastName += nameParts[i] + " ";
                                                pageContext.setAttribute("ln", lastName);
                                            }
                                    %>
                                    <tr>
                                        <td><%= rs.getInt("account_id")%></td>
                                        <td><%= firstName%></td>
                                        <td><%= pageContext.getAttribute("ln")%></td>
                                        <td><%= rs.getString("phone")%></td>
                                        <td><%= rs.getString("password")%></td>
                                        <td><%= rs.getString("gender")%></td>
                                        <td><%= rs.getString("address")%></td>
                                        <td><%= rs.getInt("role_id")%></td>
                                        <td><%= rs.getInt("sq_id")%></td>
                                        <td>
                                            <a href="/editaccount?id=<%=rs.getString("account_id")%>"><button data-toggle="tooltip" title="Edit" class="pd-setting-ed"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button></a>
                                            <a href="/deleteaccount?id=<%=rs.getString("account_id")%>" onclick="return confirm('Do you want to delete this consignment?')"><button data-toggle="tooltip" title="Trash" class="pd-setting-ed"><i class="fa fa-trash-o" aria-hidden="true"></i></button></a>
                                        </td>
                                    </tr>
                                    <%
                                        }
                                    %>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="js1/vendor/jquery-1.12.4.min.js"></script>
        <!-- bootstrap JS
                    ============================================ -->
        <script src="js1/bootstrap.min.js"></script>
        <!-- wow JS
                    ============================================ -->
        <script src="js1/wow.min.js"></script>
        <!-- price-slider JS
                    ============================================ -->
        <script src="js1/jquery-price-slider.js"></script>
        <!-- meanmenu JS
                    ============================================ -->
        <script src="js1/jquery.meanmenu.js"></script>
        <!-- owl.carousel JS
                    ============================================ -->
        <script src="js1/owl.carousel.min.js"></script>
        <!-- sticky JS
                    ============================================ -->
        <script src="js1/jquery.sticky.js"></script>
        <!-- scrollUp JS
                    ============================================ -->
        <script src="js1/jquery.scrollUp.min.js"></script>
        <!-- mCustomScrollbar JS
                    ============================================ -->
        <script src="js1/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="js1/scrollbar/mCustomScrollbar-active.js"></script>
        <!-- metisMenu JS
                    ============================================ -->
        <script src="js1/metisMenu/metisMenu.min.js"></script>
        <script src="js1/metisMenu/metisMenu-active.js"></script>
        <!-- morrisjs JS
                    ============================================ -->
        <script src="js1/sparkline/jquery.sparkline.min.js"></script>
        <script src="js1/sparkline/jquery.charts-sparkline.js"></script>

        <!-- plugins JS
                    ============================================ -->
        <script src="js1/plugins.js"></script>
        <!-- main JS
                    ============================================ -->
        <script src="js1/main.js"></script>
        <script>
                                                    const billclose = document.querySelector('#bill-close');
                                                    billclose.addEventListener("click", function () {
                                                        document.querySelector('#bill-form').style.display = "none";
                                                    });

                                                    const formatter = new Intl.NumberFormat('vi-VN', {
                                                        style: 'currency',
                                                        currency: 'VND',
                                                        minimumFractionDigits: 0
                                                    })

                                                    var x = document.getElementsByClassName('money');
                                                    for (var i = 0; i < x.length; i++) {
                                                        x[i].innerHTML = formatter.format(x[i].innerHTML);
                                                    }
        </script>
    </body>
</html>
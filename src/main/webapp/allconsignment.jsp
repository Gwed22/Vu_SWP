<%-- 
    Document   : product-list
    Created on : Oct 28, 2022, 11:41:24 PM
    Author     : DELL
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Consignment List</title>
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
    </head>

    <body>

        <jsp:include page="headeradmin.jsp"></jsp:include>
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
                                                <h2>Warehouse Management</h2>
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
                                <h4>Consignment List</h4>
                                <div class="add-product">
                                    <a href="product-add.jsp">Add Consignment</a>
                                </div>
                                <form role="search">
                                    <input type="text" placeholder="Search..." class="form-control">
                                </form>
                                <table>
                                    <tr>
                                        <th>Image</th>
                                        <th>Name</th>
                                        <th>Category</th>
                                        <th>Brand</th>
                                        <th>Import cost</th>
                                        <th>Quantity</th>
                                        <th>Import Date</th>
                                        <th>Setting</th>
                                    </tr>
                                <%
                                    ResultSet rs = (ResultSet) request.getAttribute("listC");
                                    while (rs.next()) {
                                %>
                                <tr>
                                    <td><img src="<%= rs.getString("product_img")%>"/></td>
                                    <td><%= rs.getString("product_name")%></td>
                                    <td><%= rs.getString("c_name")%></td>
                                    <td><%= rs.getString("brand_name")%></td>
                                    <td class="money"><%= rs.getFloat("con_price")%></td>
                                    <td><%= rs.getInt("con_quantity")%></td>
                                    <td><%= rs.getString("import_date")%></td>
                                    <td>
                                        <a href="#"><button data-toggle="tooltip" title="Edit" class="pd-setting-ed"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button></a>
                                        <a href="#"><button data-toggle="tooltip" title="Trash" class="pd-setting-ed"><i class="fa fa-trash-o" aria-hidden="true"></i></button></a>
                                    </td>
                                </tr>
                                <%
                                    }
                                %>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- jquery
                ============================================ -->
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

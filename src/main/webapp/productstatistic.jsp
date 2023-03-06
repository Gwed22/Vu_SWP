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
        <title>Product Statistics</title>
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
                                                <a href="homeadmin"><i class="icon nalika-home"></i></a>
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
            <div style="display: none">
            <%
                ResultSet rsBarChart = (ResultSet) request.getAttribute("listBarChart");
                while (rsBarChart.next()) {
            %>
            <span class="barLabel"><%= rsBarChart.getString("c_name")%></span>
            <span class="barData"><%= rsBarChart.getInt("quantity")%></span>
            <%
                }
            %>
        </div>
        
        <div style="display: none">
            <%
                ResultSet rsPieChart = (ResultSet) request.getAttribute("listPieChart");
                while (rsPieChart.next()) {
            %>
            <span class="pieLabel"><%= rsPieChart.getString("c_name")%></span>
            <span class="pieData"><%= rsPieChart.getInt("quantity")%></span>
            <%
                }
            %>
        </div>
        <div class="product-status mg-b-30">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="product-status-wrap">
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div>
                                        <canvas id="barChart"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="product-status-wrap row">
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                    <div>
                                        <canvas id="pieChart"></canvas>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                    <h4>Inventory List</h4>
                                    <!--                                    <form role="search" action="" method="get">
                                                                            <input type="text" placeholder="Search..." class="form-control" name="txtQuery">
                                                                        </form>-->
                                    <table>
                                        <tr>
                                            <th>Image</th>
                                            <th>Name</th>
                                            <th>Quantity</th>
                                            <!--<th>Setting</th>-->
                                        </tr>
                                        <%
                                            ResultSet rsInventory = (ResultSet) request.getAttribute("listInventory");
                                            while (rsInventory.next()) {
                                        %>
                                        <tr>
                                            <td><img src="<%= rsInventory.getString("product_img")%>"/></td>
                                            <td><%= rsInventory.getString("product_name")%></td>
                                            <td><%= rsInventory.getInt("con_quantity")%></td>
                                            <!--                                            <td>
                                                                                            <a href="#"><button data-toggle="tooltip" title="Details" class="pd-setting-ed"><i class="fa fa-search-plus" aria-hidden="true"></i></button></a>
                                                                                        </td>-->
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
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
        const bar = document.getElementById('barChart');
        var barData = document.getElementsByClassName('barData');
        var barDataset = [];
        for (let i = 0; i < barData.length; i++) {
            barDataset.push(barData[i].innerHTML);
        }

        var barLabel = document.getElementsByClassName('barLabel');
        var barLabelSet = [];
        for (let i = 0; i < barLabel.length; i++) {
            barLabelSet.push(barLabel[i].innerHTML);
        }
        Chart.defaults.color = '#fff';
        new Chart(bar, {
            type: 'bar',
            options: {
                plugins: {
                    title: {
                        display: true,
                        text: 'Number of Imported products group by Catgegories',
                        position: 'top',
                        font: {
                            size: 25
                        }
                    }
                },
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            },
            data: {
                labels: barLabelSet,
                datasets: [{
                        label: 'Number of products',
                        data: barDataset,
                        borderWidth: 1,
                        backgroundColor: 'rgba(112, 230, 181, 1)'
                    }]
            }
        });
    </script>

    <script>
        const pie = document.getElementById('pieChart');
        var pieData = document.getElementsByClassName('pieData');
        var pieDataset = [];
        for (let i = 0; i < pieData.length; i++) {
            pieDataset.push(pieData[i].innerHTML);
        }
        
        var pieLabel = document.getElementsByClassName('pieLabel');
        var pieLabelSet = [];
        for (let i = 0; i < pieLabel.length; i++) {
            pieLabelSet.push(pieLabel[i].innerHTML);
        }
        Chart.defaults.color = '#fff';
        new Chart(pie, {
            type: 'pie',
            options: {
                plugins: {
                    title: {
                        display: true,
                        text: 'Number of Sold products group by Catgegories',
                        position: 'top',
                        font: {
                            size: 25
                        }
                    },
                    legend: {
                        position: 'right'
                    }
                }
            },
            data: {
                labels: pieLabelSet,
                datasets: [{
                        label: 'Number of products',
                        data: pieDataset,
                        borderWidth: 1,
                        backgroundColor: [
                            'rgba(255, 99, 132, 0.9)',
                            'rgba(255, 159, 64, 0.9)',
                            'rgba(255, 205, 86, 0.9)',
                            'rgba(75, 192, 192, 0.9)',
                            'rgba(54, 162, 235, 0.9)',
                            'rgba(153, 102, 255, 0.9)',
                            'rgba(201, 203, 207, 0.9)'
                        ],
                        borderColor: [
                            'rgb(255, 99, 132)',
                            'rgb(255, 159, 64)',
                            'rgb(255, 205, 86)',
                            'rgb(75, 192, 192)',
                            'rgb(54, 162, 235)',
                            'rgb(153, 102, 255)',
                            'rgb(201, 203, 207)'
                        ]
                    }]
            }
        });
    </script>
</body>

</html>

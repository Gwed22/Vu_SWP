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
        <title>Revenue Statistics</title>
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
                                                <h2>Accountant</h2>
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
            <c:forEach items="${listLineChart}" var="l">
                <span class="lineLabel">${l.getOrderDate()}</span>
                <span class="lineData">${l.getTotalPrice()}</span>
            </c:forEach>
        </div>
        <div class="product-status mg-b-30">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="product-status-wrap">
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <form action="revenuestatistic" method="post">
                                        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
                                            <div class="row review-content-section">
                                                <!--<div id="error">Start Date must be the date before End Date</div>-->
                                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                                    <div class="row">
                                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                                            <p>From: </p>
                                                        </div>
                                                        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
                                                            <div class="input-group mg-b-pro-edt">
                                                                <input id="date1" type="date" class="form-control" placeholder="Start Date" name="txtStartDate" required>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                                    <div class="row">
                                                        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                                            <p>To:</p>
                                                        </div>
                                                        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10">
                                                            <div class="input-group mg-b-pro-edt">
                                                                <input id="date2" type="date" class="form-control" placeholder="End Date" name="txtEndDate" required>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                                    <div class="text-right custom-pro-edt-ds">
                                                        <button type="submit" name="btnSearch" class="btn btn-ctl-bt waves-effect waves-light m-r-10" onclick="return checkDate()">Search</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                    <div>
                                        <canvas id="lineChart"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="product-status-wrap row">
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                    <h4>Income List</h4>
                                    <table>
                                        <tr>
                                            <th>Date</th>
                                            <th>Income</th>
                                            <th>Setting</th>
                                        </tr>
                                        <c:forEach items="${listIncome}" var="l">
                                            <tr>
                                                <td>${l.getOrderDate()}</td>
                                                <td class='money'>${l.getTotalPrice()}</td>
                                                <td>
                                                    <a href="incomedetail?date=${l.getOrderDate()}"><button data-toggle="tooltip" title="Details" class="pd-setting-ed"><i class="fa fa-search-plus" aria-hidden="true"></i></button></a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </table>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                    <h4>Spending List</h4>
                                    <table>
                                        <tr>
                                            <th>Date</th>
                                            <th>Spending</th>
                                            <th>Setting</th>
                                        </tr>
                                        <c:forEach items="${listSpending}" var="l">
                                            <tr>
                                                <td>${l.getOrderDate()}</td>
                                                <td class='money'>${l.getTotalPrice()}</td>
                                                <td>
                                                    <a href="spendingdetail?date=${l.getOrderDate()}"><button data-toggle="tooltip" title="Details" class="pd-setting-ed"><i class="fa fa-search-plus" aria-hidden="true"></i></button></a>
                                                </td>
                                            </tr>
                                        </c:forEach>
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
                                                            const line = document.getElementById('lineChart');
                                                            var lineData = document.getElementsByClassName('lineData');
                                                            var lineDataSet = [];
                                                            for (let i = 0; i < lineData.length; i++) {
                                                            lineDataSet.push(lineData[i].innerHTML);
                                                            }

                                                            var lineLabel = document.getElementsByClassName('lineLabel');
                                                            var lineLabelSet = [];
                                                            for (let i = 0; i < lineLabel.length; i++) {
                                                            lineLabelSet.push(lineLabel[i].innerHTML);
                                                            }
                                                            
                                                            Chart.defaults.color = '#fff';
                                                            new Chart(line, {
                                                            type: 'line',
                                                                    data: {
                                                                    labels: lineLabelSet,
                                                                            datasets: [{
                                                                            label: 'Total Income of a day',
                                                                                    data: lineDataSet,
                                                                                    borderWidth: 1,
                                                                                    backgroundColor: 'rgba(112, 230, 181, 1)',
                                                                                    borderColor: 'rgb(75, 192, 192)'
                                                                            }
                                                                            ]
                                                                    },
                                                                    options: {
                                                                    plugins: {
                                                                    title: {
                                                                    display: true,
                                                                            text: 'The growth of Total Income',
                                                                            position: 'top',
                                                                            font: {
                                                                            size: 25
                                                                            },
                                                                            align: 'end'
                                                                    },
                                                                            legend: {
                                                                            align: 'end'
                                                                            }
                                                                    },
                                                                            scales: {
                                                                            y: {
                                                                            beginAtZero: true
                                                                            },
                                                                                    x: {
                                                                                    ticks: {
                                                                                    display: false
                                                                                    }
                                                                                    }
                                                                            }
                                                                    }
                                                            });
    </script>

    <script>
        today = new Date().toJSON().slice(0, 10);
        console.log(today);
        document.getElementById('date1').max = today;
        document.getElementById('date2').max = today;
        function checkDate() {
        d1 = document.getElementById('date1').value;
        d2 = document.getElementById('date2').value;
        const date1 = new Date(d1);
        const date2 = new Date(d2);
        if (date1 > date2) {
        console.log("sai r");
        alert("Start Date must be the date before End Date!!!");
        return false;
        }
        return true;
        }
    </script>

    <script>
        const formatter = new Intl.NumberFormat('vi-VN', {
        style: 'currency',
                currency: 'VND',
                minimumFractionDigits: 0
        });
        var x = document.getElementsByClassName('money');
        for (var i = 0; i < x.length; i++) {
        x[i].innerHTML = formatter.format(x[i].innerHTML);
        console.log(x);
        }
    </script>
</body>

</html>

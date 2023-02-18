
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css" rel="stylesheet"/>
        <script src = "https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src = "https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <link rel="stylesheet"
              href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <link rel="stylesheet"
              href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script>
            $(document).ready(function () {
                $('#tb').DataTable();
            });
        </script>
    </head>
    <body>
        <%
//            if (request.getParameter("btnSubmit") != null) {    //Nguoi ta chon gioi tinh va submit
//                //Nhan gioi tinh nguoi ta chon va luu vao bien gt
//                String gt = request.getParameter("cboGender");
//
//                Class.forName("com.mysql.jdbc.Driver");
//                //tao doi tuong connection
//                String url = "jdbc:mysql://localhost/se1608";
//                Connection conn = DriverManager.getConnection(url, "root", "");
//                //tao doi tuong statement
//                //Statement st = conn.createStatement();
//                PreparedStatement pst = conn.prepareStatement("Select * from `khachhang` where gioiTinh=?");
//                pst.setString(1, gt);
//                ResultSet rs = pst.executeQuery();
//                //thuc thi cau lenh truy van
//                //ResultSet rs = st.executeQuery("Select * from `khachhang`");

        %>
        <div class="jumbotron text-center">
            <h1>Account Management</h1>
        </div>
        <div class="slider_section row">
            <div class="menu-left col-xl-2 col-lg-12 col-md-12 co-sm-11 ">
                <ul class="nav-menu-left" style="list-style-type: none">
                    <li class="jumbotron text-center"><a href="#">Create New Account</a></li>
                </ul>
            </div>
            <div id="myCarousel" class="carousel slide banner-main col-xl-9 col-lg-10 col-md-12 co-sm-11" data-ride="carousel">
                <div class="carousel-inner">
                    <div>
                        <form action="search" class="col-md-8">
                            <input class="col-sm-8" name="txt"
                                   type="text" 
                                   placeholder="Search" 
                                   aria-label="Search">
                            <button type="submit" class=" btn-secondary btn-search "><i class="fa fa-search"></i></button>
                        </form>
                    </div>
                    <br><br>
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">Account ID</th>
                                <th scope="col">First Name</th>
                                <th scope="col">Last Name</th>
                                <th scope="col">Phone</th>
                                <th scope="col">Question ID</th>
                                <th scope="col">Answer ID</th>
                                <th scope="col">Address</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th scope="row">1</th>
                                <td>Mark</td>
                                <td>Otto</td>
                                <td>@mdo</td>
                                <td>@mdo</td>
                                <td>@mdo</td>
                                <td>@mdo</td>
                                <td>@mdo</td>
                                <td>@mdo</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
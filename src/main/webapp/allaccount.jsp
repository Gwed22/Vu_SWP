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
    </head>
    <body>
        <div class="jumbotron text-center">
            <h1>Account Management</h1>
        </div>
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
        <div class="slider_section row">
            <div class="menu-left col-xl-2 col-lg-12 col-md-12 co-sm-11 ">
            </div>
            <div id="myCarousel" class="carousel slide banner-main col-xl-9 col-lg-10 col-md-12 co-sm-11" data-ride="carousel">
                <div class="carousel-inner">
                    <div>
                        <form action="searchaccount" method="get" class="col-md-8" style="padding-left: 0px;">
                            <input class="col-sm-8" name="query" id="query"
                                   type="text" 
                                   placeholder="Search" 
                                   aria-label="Search">
                            <button name="btnSearch" id="btn" type="submit" class=" btn-secondary btn-search "><i class="fa fa-search"></i></button>
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
                                    <a class="btn btn-outline-primary" href="/editaccount?id=<%=rs.getString("account_id")%>">Update</a>
                                    <a class="btn btn-outline-danger" href="/deleteaccount?id=<%=rs.getString("account_id")%>">Delete</a>
                                </td>
                            </tr>
                            <%
                                }
                            %>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td>                
                                    <ul  style="padding-left: 0px">
                                        <li class="btn btn-outline-info text-center"><a href="/addaccount">Create New Account</a></li>
                                    </ul>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
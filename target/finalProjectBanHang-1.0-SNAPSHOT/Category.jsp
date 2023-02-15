<%-- 
    Document   : Category
    Created on : Oct 29, 2022, 12:57:11 PM
    Author     : PC
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--Start: Categories-->
<div class="container-categories color-black container">
    <!--Navbar-->
    <nav class="navbar navbar-expand-sm navbar-dark mdb-color lighten-3 mt-2 mb-3">

        <!-- Navbar brand -->
        <span class="navbar-brand">Categories : </span>
        <!-- Collapsible content -->
        <div class="collapse navbar-collapse" id="basicExampleNav">
            <!-- Links -->
            <ul class="categories-item navbar-nav mr-auto">
                <li class="nav-item ${tag == null ? "active" : ""}">
                    <a class="nav-link" href="allproduct"> <span class="size-36">All</span>
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <c:forEach items="${listC}" var="o">
                    <li class="nav-item ${tag == o.getC_Id() ? "active" : ""}">
                        <a class="nav-link" href="category?c_Id=${o.getC_Id()}"> 
                            <span class="size-36">
                                <%--
                                    Because of private attribute so it must be 
                                    using get getCategoryName() instead of CategoryName
                                --%>
                                ${o.getC_Name()}
                            </span>
                        </a>
                    </li>
                </c:forEach>
            </ul>
            <!-- Links -->
            

        </div>
        <!-- Collapsible content -->
    </nav>
</div>


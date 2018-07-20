<%--
  Created by Eclipse.
  User: Anh Tuan Nguyen
  Date: 6/25/2018
  Time: 9:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="title icon" type="image/png" href="images/title-img.png">
	<link rel="stylesheet" href="styles.css">
	<!-- Bootstrap CSS -->
	  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
	  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
	  <script defer src="https://use.fontawesome.com/releases/v5.0.10/js/all.js" integrity="sha384-slN8GvtUJGnv6ca26v8EzVaR9DC58QEwsIk9q1QXdCU8Yu8ck/tL/5szYlBbqmS+" crossorigin="anonymous"></script>
	  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
	<title>Insert title here</title>
</head>
<body>
	<!--navbar-->
        <nav class="nav navbar-extend-md navbar-light">
              <div class="" id="myNavbar">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xl-2  sidebar fixed-top">
                            <a href="#" class="navbar-brand text-white d-block mx-auto text-center py-3 mb-4 bottom-border"> User</a>
                            <div class="bottom-border pb-3">
                                <img src="images/admin.jpeg"width="50" class="rounded-circle mr-3">
                                <a href="#" class="text-white"> Anh Nguyen</a>
                            </div>
                            <ul class="navbar-nav flex-column mt-4">
                                <li class="nav-item"><a href="#" class="nav-link text-white p-3 mb-2 current"><i class="fas fa-home text-light fa-lg mr-3"></i>Dashboard</a></li>
                                <li class="nav-item"><a href="#" class="nav-link text-white p-3 mb-2 sidebar-link"><i class="fas fa-user text-light fa-lg mr-3"></i>Profile</a></li>
                                <li class="nav-item"><a href="#" class="nav-link text-white p-3 mb-2 sidebar-link"><i class="fas fa-envelope text-light fa-lg mr-3"></i>Inbox</a></li>
                                <li class="nav-item"><a href="#" class="nav-link text-white p-3 mb-2 sidebar-link"><i class="fas fa-shopping-cart text-light fa-lg mr-3"></i>Sales</a></li>
                                <li class="nav-item"><a href="#" class="nav-link text-white p-3 mb-2 sidebar-link"><i class="fas fa-chart-line text-light fa-lg mr-3"></i>Analyticts</a></li>
                                <li class="nav-item"><a href="#" class="nav-link text-white p-3 mb-2 sidebar-link"><i class="fas fa-chart-bar text-light fa-lg mr-3"></i>Charts</a></li>
                                <li class="nav-item"><a href="#" class="nav-link text-white p-3 mb-2 sidebar-link"><i class="fas fa-table text-light fa-lg mr-3"></i>Tables</a></li>
                                <li class="nav-item"><a href="#" class="nav-link text-white p-3 mb-2 sidebar-link"><i class="fas fa-wrench text-light fa-lg mr-3"></i>Settings</a></li>
                                <li class="nav-item"><a href="#" class="nav-link text-white p-3 mb-2 sidebar-link"><i class="fas fa-file-alt text-light fa-lg mr-3"></i>Documentation</a></li>
                            </ul>
                        </div>
                        <!--top-nav-->
                        <div class="col-xl-10 col-lg-9 col-md-8 ml-auto bg-dark fixed-top py-2 ">
                            <div class="row align-items-center">
                                <div class="col-md-4">
                                    <h4 class="text-light text-uppercase mb-0">Dashboard</h4>
                                </div>
                                <div class="col-md-3">
                                    <form action="">
                                    <div class="input-group">
                                        <input type="text" class="form-control search-input" placeholder="Search...">
                                        <button type="button" class="btn btn-white search-button"><i class="fas fa-search text-danger"></i></button>
                                    </div>
                                    </form>
                                </div>
                                <div class="col-md-3">
                                    <ul class="nav">
                                    <li class="nav-item icon-parent">
                                        <a href="#" class="nav-link icon-bullet"><i class="fas fa-comments text-muted fa-lg"></i></a>
                                    </li>
                                    <li class="nav-item icon-parent">
                                        <a href="#" class="nav-link icon-bullet"><i class="fas fa-bell text-muted fa-lg"></i></a>
                                    </li>
                                    <li class="nav-item pl-2">
                                        <a href="#" class="nav-link icon-parent" data-toggle="modal" data-target="#sign-out"><i class=" fas fa-sign-out-alt text-danger fa-lg"></i></a>
                                    </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                  <!--end of top-nav-->
                        <!--end of top-->
                    </div>
                </div>
            </div>
        </nav>
    <!--end of header-->
        <section class="mt-5 ">
            <div class="container-fluid">
                <div class="row">
                <div class = "col-xl-10 ml-auto pt-4">
                 <h4 class = "text-uppercase text-muted">User Management</h4>        
            </div>
        </section>
        <section class="mt-4">
        	
	        <div class="container-fluid" id = "form-post">
	        	<div class="row">
	        		<div class="col-xl-10 col-lg-9 ml-auto">
						<form:form action="processUser.html" method="post" modelAttribute="user">
							<div class="form-group">
								<label for="name">Name</label>
								<form:input path="name" id="name" cssClass="form-control"/>
							</div>
							<div class="form-group">
			                    <label for="username">User name</label>
			                    <form:input path="username" id="username" cssClass="form-control"/>
			                </div>
			                 <div class="form-group">
			                    <label for="password">Password</label>
			                    <form:input path="password" id="password" cssClass="form-control"/>
			                </div>
			                <div class="form-group">
			                    <label for="phoneNo">Phone Number</label>
			                    <form:input path="phoneNo" id="phoneNo" cssClass="form-control"/>
			                </div>
			                <form:input type="hidden" path="id" id="id" cssClass="form-control"/>
			                <button type="submit" class = "btn btn-primary mt-2" id="addButton"><i class="fa fa-user-plus" aria-hidden="true"></i><span> Add user</span></button>
			               	
						</form:form>
	        			
	        		</div>
	        	</div>
	        </div>
        </section>    
        <section>
            <div class="container-fluid">
                <div class="row pt-5 mt-3 mb-5">
                    <div class="col-xl-10 ml-auto">
                        <table class="table table-striped table-hover table-bordered bg-light text-center">
                            <thead class="table-info">
                                <tr class="text-muted">
                                    <th>#</th>
                                    <th>Name</th>
                                    <th>User name</th>
                                    <th>password</th>
                                    <th>Phone Number</th>
                                    <th>Date of birth</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                            	<c:forEach items="${userList}" var="row">
				                    <tr>
				                        <td><c:out value="${row.id}"></c:out></td>
				                        <td><c:out value="${row.name}"></c:out></td>
				                        <td><c:out value="${row.username}"></c:out></td>
				                        <td><c:out value="${row.password}"></c:out></td>
				                        <td><c:out value="${row.phoneNo}"></c:out></td>
				                        <td><c:out value="${row.dob}"></c:out></td>
				                        <td><a class ="btn btn-warning mr-3" id="editButton"href="UserEdit?id=${row.id}"><span><i class="fas fa-edit" aria-hidden="true"></i></span> Edit</a> |
				                         <a class = "btn btn-danger mr-3" href="deleteUser.html?id=${row.id}"><span><i class="fa fa-times" aria-hidden="true"></i></span> Delete</a></td> 
				                    </tr>
                				</c:forEach>
                            </tbody>
                        </table>
                    </div>                  
                </div>
            </div>
            
        </section>
        <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
        <script src="scripts.js"></script>
</body>
</html>
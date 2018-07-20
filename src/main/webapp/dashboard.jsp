<%--
  Created by Eclipse.
  User: Anh Tuan Nguyen
  Date: 6/25/2018
  Time: 9:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
   	<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <title>Dash Board</title>
</head>
<body>
<!--user form-->	
	<c:if test="${not empty requestScope.msg}">
		<div class="alert alert-success" role="alert">
		 	<c:out value = "${requestScope.msg}">
		 	</c:out>
		</div>
	</c:if>	
    <section class="p-3">
        <div class="container-fluid">
            <form action="UserInsert" method="post">
            	
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" class="form-control" id="name" name="name" placeholder="Enter your name" value ="${requestScope.userDto.name}">
                </div>
                <div class="form-group">
                    <label for="email">Email address</label>
                    <input type="email" class="form-control" id="email" name="email" placeholder="E nter your email" value ="${requestScope.userDto.email}">
                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" name="password" id="password" placeholder="Password" value ="${requestScope.userDto.password}">
                </div>
                <div class="form-group">
                    <label for="dob">Date of birth</label>
                    <input type="text" class="form-control" name="dob" id="dob" placeholder="Date of birth" value = "<fmt:formatDate value="${requestScope.userDto.dob}" pattern="dd/MM/yyyy"/>">
                </div>
                <input type = "hidden" name = "id" id = "id" value = "${requestScope.userDto.id }">
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
    </section>
<!--end of user form-->
<!--user info-->
    <section class="p-3">
        <div class="container-fluid">
            <h3 class="text-left text-muted text-primary">User Info</h3>
            <table class="table  table-striped table-bordered table-hover">
                <thead class="table-info">
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Password</th>
                    <th>Date of Birth</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div>
    </section>
<!--end of user info-->
	
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
    </body>
</html>

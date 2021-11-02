<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="functions" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>ValidateAction</h2>
  <spring:hasBindErrors name="command"/>
  <form:errors path="command"></form:errors>
  <form action="/springWeb/formValidate.do" method="post">
    <div class="form-group">
      <label for="id">ID:</label>
      <input type="text" class="form-control" id="id" placeholder="ID id" name="id" value="${test.id}">       
      <font color="red" size="4">      
       <form:errors path="test.id"></form:errors>
      </font>
    </div>
    <div class="form-group">
      <label for="name">Name:</label>
      <input type="text" class="form-control" id="name" placeholder="Enter name" name="name" value="${test.name}">
      <font color="red" size="4">      
       <form:errors path="test.name"></form:errors>
      </font>
    </div>
    <div class="form-group">
      <label for="addr">Addr:</label>
      <input type="text" class="form-control" id="addr" placeholder="Enter addr" name="addr" value="${test.addr}">
      <font color="red" size="4">      
       <form:errors path="test.addr"></form:errors>
      </font>
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd" value="${test.pwd}">
      <font color="red" size="4">      
       <form:errors path="test.pwd"></form:errors>
      </font>
    </div>
    
    <button type="submit" class="btn btn-default">Submit</button>
  </form>
</div>

</body>
</html>

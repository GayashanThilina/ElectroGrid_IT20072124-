<%@page import="com.Power"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<body style="background-color:#ceffbd;">
<meta charset="ISO-8859-1">
<title>Power Consumption </title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.6.0.min.js"></script>
<script src="Components/power.js"></script>
</head>
<body> 
<div class="container"><div class="row"><div class="col-6"> 

<h1><u> <center>Power Consumption  </center></u></h1>

<br>
<form id="formPower" name="formPower" method="post" action="power.jsp">
 Account_Number: 
 <input id="accountnumber" name="account_number" type="text" 
 class="form-control form-control-sm">
 <br> Name: 
 <input id="Name" name="name" type="text" 
 class="form-control form-control-sm">
 <br> Type: 
 <input id="Type" name="type" type="text" 
 class="form-control form-control-sm">
 <br>
 Description: 
 <input id="Description" name="description" type="text" 
 class="form-control form-control-sm">
 <br>
 <input id="btnSave" name="btnSave" type="button" value="Save" 
 class="btn btn-primary">
 <input type="hidden" id="hidconsumtiopn_idSave" 
 name="hidconsumtiopn_idSave" value="">
</form>
<div id="alertSuccess" class="alert alert-success"></div>
<div id="alertError" class="alert alert-danger"></div>

<div id="divPowersGrid">
 <%
 Power powerconsumptionObj = new Power(); 
 out.print(powerconsumptionObj.readpowerconsumption()); 
 %>
</div>
</div> </div> </div> 
</body>
</html>
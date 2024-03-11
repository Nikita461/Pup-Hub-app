
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <%@include file="bartitle.jsp" %>
    <link rel="stylesheet" href="style.css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Permanent+Marker&display=swap" rel="stylesheet">    
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <style>
	 .button {
		background-color:#008CBA;
		border: none;
		color: white;
		padding: 15px 32px;
		text-align: center;
		text-decoration: none;
		display: inline-block;
		font-size: 20px;
		box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
		border-radius:12px;
	}
	.button:hover {
		background-color: #4CAF50;
		color: white;
		box-shadow: 0 0 15px #339900;
	}
	p
	{
		color:brown;
		font-size:17px;
	}
  </style>
</head>
<body>
    <!-- Main Header -->
    <header class="main-header">
        <center><h1><%@include file="title.jsp" %></h1></center>
    </header>
    <!-- Dropdown Navbar -->
    <nav>
        <ul>
           <li><a href="index.jsp" class="active" >Home</a></li>
<li><a href="login.jsp">Login</a></li>
<li><a href="register.jsp">Register</a></li>
<li><a href="admin.jsp">Admin</a></li>
            
        </ul>
    </nav>
    <br><br><br>
	<div class="container">
	<div class="row">
		<div class="col-lg-8">
<p style="text-align:justify; font-family:'Lobster', cursive; font-size: 20px">We are Pup Hub - we bring you the best of everything dog related out there!
Accessories?
Food?
Vaccinations?
You name it ! We've got it .
We aim to reduce ambiguity in everything you invest into your dog  be it time, money or choice.<br>
And how do we do that?<br>
We analyse and study the locations, places, items , accessories etc made available for pet owners, categorise them on different basis such as rating, most preferred , closest location etc based on your input  and provide you the best options customised for your requirement .
This will make it a cake walk for pet owners making everything they need at one place for their pets , which makes it efficient and  economic .
Hence, we call ourselves a one stop destination for all your pet needs!</p>
<h3 style="font-family: 'Permanent Marker', cursive; font-size: 32px;">Register Now to Explore..!!</h3>

<br><br><br>
<center>
<button class="button"  onclick="window.location.href='register.jsp'" style="margin-right:100px;">REGISTER<span style="margin-left:10px;" class="glyphicon glyphicon-user"></span></button>
<button class="button"  onclick="window.location.href='login.jsp'" style="margin-right:100px;">LOGIN<span style="margin-left:10px;" class="glyphicon glyphicon-log-in"></span></button>
</center>
</div>
		<div class="col-lg-4"><center><img class="bi" src="hub/bg.png" width="400px" height="400px" alt="" style=""></center></div>
	</div>
		</div>
    <br><br><br>
    <!-- Main Footer -->
    <footer class="main-footer">
        <%@include file="bottom.jsp"%>
    </footer>
</body></html>

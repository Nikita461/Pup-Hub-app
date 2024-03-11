<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <%@include file="bartitle.jsp" %>
    <link rel="stylesheet" href="style.css">
    
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
</head>

<body>
    
        <%
        if (request.getParameter("m1") != null) {%>
        <script>alert('Login Failed..!');</script> 
        <%}%>
        <%
        if (request.getParameter("msg") != null) {%>
        <script>alert('Registered Successfully..!');</script> 
        <%}%>
    
    <!-- Main Header -->
    <header class="main-header">
        <center><h1><%@include file="title.jsp" %></h1></center>
    </header>
    <!-- Dropdown Navbar -->
    <nav>
         <ul>
             <li><a href="index.jsp">Home</a></li>
<li><a href="login.jsp" class="active" >Login</a></li>
<li><a href="register.jsp">Register</a></li>
<li><a href="admin.jsp">Admin</a></li>
            
        </ul>
    </nav>
    <!-- Login Form -->
    <div class="form-div animated flip">
        <img src="img/user.png">
        <h2> Login Page</h2>
        <script>
                function valid(){
                 var  email = document.form.email.value;
		var  password = document.form.password.value;
		if(email == "" && password == ""){
			alert("Enter valid credentials");
			document.form.email.focus();
                            return false;
		}
                    else if(email == "")
                    {
                            alert("Enter valid Email-Id");
                            document.form.email.focus();
                            return false;
                    }
                    else if(password == "")
                    {
                            alert("Enter Password");
                            document.form.password.focus();
                            return false;
                    }  
                }
            </script>
        <form action="loginact.jsp" method="post" name="form" onsubmit="return valid()">
            <input type="email" placeholder="Enter Email" name="email" autocomplete="off">
            <br>
            <input type="password" placeholder="Enter Password" name="password" >
            <br>
            <br>
            <input type="submit" value="Login">
            <br>
            <br>
        </form>
    </div>
    <br><br>
    <br><br><br>
    <br>
    <!-- Main Footer -->
    <footer class="main-footer">
        <%@include file="bottom.jsp"%>
    </footer>
</body>
            </html>

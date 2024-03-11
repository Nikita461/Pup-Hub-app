<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <%@include  file="bartitle.jsp" %>
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
             <li><a href="UserHomePage.jsp">Home</a></li>
<li><a href="ProductsandAccessoriesdetails.jsp">Products</a></li>
<li><a href="AccessoriesDetails.jsp"  >Accessories</a></li>
<li><a href="location.jsp" class="active">Location</a></li>
<li><a href="FoodDetails.jsp">Food Details</a></li>
<li><a href="VaccinationDetails.jsp">Vaccination Details</a></li>
<li><a href="ContactUs.jsp">Feedback</a></li>
<li><a href="index.jsp">Logout</a></li>
        </ul>      
    </nav>
    <!-- Login Form -->
    <div class="form-div animated flip">
        <br>
        <br>
        <br>
        <div>
            <h2>Location Search</h2>
        </div>
        <br>
        <br>
        <h2>Select Location</h2>
        <script>
                function valid(){
                 var  Loc = document.form.Loc.value;
                    if(Loc == 0)
                    {
                            alert("select one Location option");
                            document.form.Loc.focus();
                            return false;
                    }
                    var  lim = document.form.lim.value;
                    if(lim == 0)
                    {
                            alert("Select No. of Locations");
                            document.form.lim.focus();
                            return false;
                    } 
                }
            </script>
            
        <form action="LocViewDB.jsp" method="post" name="form" onsubmit="return valid()">
            <%
    Connection con = null;
    try{  
          con = DBCon.DbConnector.getConnection();        
         PreparedStatement ps =con.prepareStatement("select DISTINCT(location) from location");
         ResultSet rs = ps.executeQuery();   
%> 
            <select name="Loc" id="">
                <option selected disabled>Select Area</option>
                <%
                 while (rs.next()){     
             %>
           <option><%=rs.getString(1)%></option>
            <%}%>
        </select>
            <%}  
    catch(Exception e)
    {
        e.printStackTrace();
    }
    finally
    {
        con.close();
    }
 %>
<br>
            <br>
            <select name="lim" id="">
                <option value="0">Select No. of Locations</option>
                <option value="Limit 3">Top 3</option>
                <option value="Limit 4">Top 4</option>
                <option value="Limit 5">Top 5</option>
                <option value="Limit 6">Top 6</option>
                <option value="Limit 7">Top 7</option>
                <option value="Limit 8">Top 8</option>
                <option value="Limit 20">All</option> 
            </select>
            <input type="submit" value="Search">
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


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

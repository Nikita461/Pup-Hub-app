
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <%@include file="bartitle.jsp"%>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
</head>

<body>
    <!-- Main Header -->
    <header class="main-header">
        <center><h1><%@include file="title.jsp"%></h1></center>
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
    <br>
    <br>
    <div  style="margin-left: 80px;">
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<div><label class="heading">Sector Info</label></div>
<br>
<%
    Connection con = null;
    String Loc = request.getParameter("Loc");
    String lim = request.getParameter("lim");
    try{  
          con = DBCon.DbConnector.getConnection(); 
          String SQL= "select * from location where location =? ORDER BY rating DESC " + lim ;
          PreparedStatement ps =con.prepareStatement(SQL);
          ps.setString(1, Loc);
          ResultSet rs = ps.executeQuery(); 
%> 
        <TABLE cellpadding="15" border="1" style="background-color: #F8F5F1; width: 1200px;">
            <tr>
                <th>Store Name</th>
                <th>Area</th>
                <th>Address</th>
                <th>Phone No</th>
                <th>Rating</th>
                <th>Feedback</th>
             </tr>
             <%
                 while (rs.next()){
             %>
             <tr>
                 <td style="color:black; width: 200px;"><%=rs.getString(2)%></td>
                 <td style="color:black; width: 150px;"><%=rs.getString(3)%></td>
                 <td style="color:black; width: 400px;"><%=rs.getString(4)%></td>
                 <td style="color:black; width: 150px;"><%=rs.getString(5)%></td>
                 <td style="color:black"><%=rs.getString(6)%></td>
                 <td style="color:black; width: 150px;"><a href="ProvideRating.jsp?id=<%=rs.getString(1)%>" style="text-decoration: none;">Provide User Rating</a></td>
             </tr><%}%>
        </TABLE>
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
    </div>
    <br>
    <!-- Main Footer -->
    <footer class="main-footer">
        <%@include file="bottom.jsp"%>
    </footer>
</body>
</html>

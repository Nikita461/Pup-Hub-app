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
              <li><a href="AdminHome.jsp">Home</a></li>
<li><a href="Products.jsp" class="active">Products</a></li>
<li><a href="Accessories.jsp"   >Accessories </a></li>
<li><a href="vaccination.jsp">Vaccination</a></li>
<li><a href="FoodTimings.jsp">Food Timings </a></li>
<li><a href="AddLocations.jsp">Location</a></li>
<li><a href="ContactUsDetails.jsp">Users Feedback</a></li>
<li><a href="index.jsp">Logout</a></li>  
        </ul>
    </nav>
    <!-- Login Form -->
    <div class="form-div animated flip">        
        <h2>products and accessories</h2>        
        <form action="ProductsandAccessoriesDB.jsp" method="post" name="form" onsubmit="return valid()">
        <input type="text" placeholder="Enter productsname" name="productsname" pattern="[A-Za-z]+" title="please enter character in between A-Z or a-z"  autocomplete="off">
        <br>
        <input type="text" placeholder="Enter product type" name="ptype" pattern="[A-Za-z]+" title="please enter character in between A-Z or a-z"  autocomplete="off">
        <br>
        <input type="text" placeholder="Enter accessories name" name="accessoriesname"  pattern="[A-Za-z]+" title="please enter character in between A-Z or a-z" autocomplete="off">
        <br>
        <input type="text" placeholder="Enter accessories type" name="atype" pattern="[A-Za-z]+" title="please enter character in between A-Z or a-z" autocomplete="off">
        <br>
        <input type="text" name="size" placeholder="Enter size" >        
        <br> 
        <input type="file" name="productimage">        
        <br>
        <input type="submit" value="REGISTER">
        <br>
        <br>
        </form>
    </div>
  
    <br>
    <!-- Main Footer -->
    <footer class="main-footer">
        <%@include file="bottom.jsp"%>
    </footer>
</body>
</html>


<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
    Connection con = null;
    FileInputStream fis;
    try{
        String productsname = request.getParameter("productsname");
        String ptype = request.getParameter("ptype"); 
        String accessoriesname = request.getParameter("accessoriesname");
        String atype = request.getParameter("atype"); 
        String size = request.getParameter("size"); 
        String c = request.getParameter("productimage"); 
        con = DBCon.DbConnector.getConnection();
        File image=new File("C:\\PUP HUB\\IMG\\"+c);
        PreparedStatement ps =con.prepareStatement("insert into productsandaccessories (productsname, ptype, accessoriesname, atype, size, productimage) values (?,?,?,?,?,?) ");
        ps.setString(1, productsname);
        ps.setString(2, ptype);
        ps.setString(3, accessoriesname);
        ps.setString(4, atype);
        ps.setString(5, size); 
        fis=new FileInputStream(image);
        ps.setBinaryStream(6, (InputStream)fis, (int)(image.length())); 
        int i = ps.executeUpdate();
        if(i == 1)
        {        
            response.sendRedirect("ProductsandAccessories.jsp?success");            
        }
        else{
            response.sendRedirect("ProductsandAccessories.jsp?failed");
        }      
    }  
    catch(Exception e)
    {
        e.printStackTrace();
    }
    finally
    {
        con.close();
    }    
%>

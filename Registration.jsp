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
            <li><a href="index.jsp">Home</a></li>
<li><a href="login.jsp">Login</a></li>
<li><a href="register.jsp" class="active" >Register</a></li>
<li><a href="admin.jsp">Admin</a></li>            
        </ul>
    </nav>
    <!-- Login Form -->
    <div class="form-div animated flip">        
        <h2 style="padding-top: 18px;font-size: 28px; ">Registration Form</h2>
        <script>
	function check(){
            const password = document.querySelector('input[name=password]');
            const confirm = document.querySelector('input[name=conpassword]');
            if (confirm.value === password.value) {
                confirm.setCustomValidity('');
            } else {
                confirm.setCustomValidity('Passwords do not match! Re-enter the correct password');
            }
        }
                function valid(){
                 var  firstname = document.form.firstname.value;
                    if(firstname === "")
                    {
                            alert("Enter First Name");
                            document.form.firstname.focus();
                            return false;
                    }
                    var  lastname = document.form.lastname.value;
                    if(lastname === "")
                    {
                            alert("Enter Last Name");
                            document.form.lastname.focus();
                            return false;
                    }
                    var  email = document.form.email.value;
                    if(email === "")
                    {
                            alert("Enter E-mail Id");
                            document.form.email.focus();
                            return false;
                    }
                     var  phone_number = document.form.phone_number.value;
                    if(phone_number === "")
                    {
                            alert("Enter Phone Number");
                            document.form.phone_number.focus();
                            return false;
                    }
                    
                    var  usergen = document.form.usergen.value;
                    if(usergen == 0)
                    {
                            alert("select user gender");
                            document.form.usergen.focus();
                            return false;
                    }
                    
                    var  pettype = document.form.pettype.value;
                    if(pettype == 0)
                    {
                            alert("select dog type");
                            document.form.pettype.focus();
                            return false;
                    }
                    
                    var  petage = document.form.petage.value;
                    if(petage === "")
                    {
                            alert("Enter Pet Age");
                            document.form.petage.focus();
                            return false;
                    }
                    
                     var  petgen = document.form.petgen.value;
                    if(petgen === 0)
                    {
                            alert("select pet gender");
                            document.form.petgen.focus();
                            return false;
                    }
                    
                    var  password = document.form.password.value;
                    if(password === 0)
                    {
                            alert("Enter Password");
                            document.form.password.focus();
                            return false;
                    }
                    var  conpassword = document.form.conpassword.value;
                    if(conpassword === 0)
                    {
                            alert("Confirm your Password");
                            document.form.conpassword.focus();
                            return false;
                    }
                }
            </script>
        <form action="registeract.jsp" method="post" name="form" onsubmit="return valid()">
        <input type="text" placeholder="Enter First Name" name="firstname" pattern="[A-Za-z\s]+" title="Please enter alphabetical characters"  autocomplete="off">
        <br>
        <input type="text" placeholder="Enter Last Name" name="lastname" pattern="[A-Za-z\s]+" title="Please enter alphabetical characters"  autocomplete="off">
        <br>
        <input type="email" placeholder="Enter E-mail Id" name="email"  pattern="[a-z0-9._%+-]+@[a-z.-_]+\.[a-z]{2,3}$" title="Ex:- abc@xyz.com" autocomplete="off">
        <br>
        <input type="text" placeholder="Enter Phone No" name="phone_number" pattern="[6-9]{1}[0-9]{9}$" title="1st digit must be 6-9 and remaining 0-9"  autocomplete="off">
        <br>
        <select name="usergen">
                <option selected disabled>--Gender--</option>
                <option value="male">Male</option>
                <option value="female">Female</option>                
        </select>
        <br>
        <h3 style="color: white; font-size: 23px;font-family: Andalus,sans-serif">Dog Details</h3>
        <select name="pettype">
                <option selected disabled>--Enter Dog Breed--</option>
                <option value="Pug">Pug</option>
                <option value="Labrador">Labrador</option>
                <option value="German Shepard">German Shepard</option>
                <option value="Dashund">Dashund</option>
                <option value="Pomeranian">Pomeranian</option>
                <option value="Indian Pariah Dog">Indian Pariah Dog</option>
                <option value="Doberman">Doberman</option>
                <option value="Pitbull">Pitbull</option>
                <option value="Golden retriever">Golden retriever</option>
                <option value="Beagle">Beagle</option>
                <option value="Siberian Husky">Siberian Husky</option>
                <option value="Shih Tzu">Shih Tzu</option>
                <option value="Chihuahua">Chihuahua</option>
                <option value="Great Dane">Great Dane</option>
                <option value="Dalmatian">Dalmatian</option>
                <option value="Rottweiler">Rottweiler</option>
                <option value="St.Bernard">St.Bernard</option>
                <option value="Cocker Spaniel">Cocker Spaniel</option>
        </select>
	<br>
        <input type="text" name="petage" placeholder="Enter Dog Age" pattern="[0-9]{1,}"  autocomplete="off">
        <br>
        <select name="petgen">
                            <option selected disabled>Dog Gender</option>
                            <option value="male">Male</option>
                            <option value="female">Female</option>
         </select>
         <br>
         <br>
         <br>
         <br>
	<div class="form-group">
                    <input type="password" name="password" id="password" placeholder="Enter Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
                        title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters" autocomplete="off">
                    <input type="password" name="conpassword" id="con-password" placeholder="Confirm Password" 
                        title="Please enter the same password" onchange="check()" autocomplete="off">
          </div>    
        <input type="submit" value="REGISTER">
        <br>
        <br>
        </form>
    </div>
  
    <br>
    <!-- Main Footer -->
    <footer class="main-footer">
        <%@include file="bottom.jsp"%>
    </footer></body></html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>FoodShop</title>

        <!-- viewport-->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> <!-- this makes our web page responsive (viewport)-->
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        
        <!-- bootstrap-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js">
        <link href="index.css" rel="stylesheet" type="text/css">
        
        
        <!-- Javascript -->
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        
        <!-- Google fonts -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:900|Ubuntu&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans&display=swap" rel="stylesheet">
        
        <!-- font awesome -->
        <script src="https://kit.fontawesome.com/382a0f27c6.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class="header" id="topheader" >
	<!-- Navigation Bar-->
        <nav class="navbar navbar-expand-lg">
            <div class="container text-uppercase p-2">											
            
                <a class="navbar-brand font-weight-bold text-white" href="#">FoodShop</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
        
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto">								
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                    </li>
                    
                    <li class="nav-item">
                        <a class="nav-link" href="#">ABOUT</a>
                    </li> 
                    <li class="nav-item">
                        <a class="nav-link" href="contactus.html">CONTACTS</a>
                    </li>
                    
                    </ul>   
                </div>
            </div>
        </nav>
        
        <!-- Login Buttons-->
        <div class="container">
            <div class="row">
                <div class="col-4">
                    <h3 style="font-family: Cambria, Cochin, Georgia, Times, serif">Manufacturer:</h3>
                    <div  class="col-md-12 col-sm align-self-center">
                        <a role="button" class="btn btn-block btn-sm  btn-warning" data-toggle="modal" data-target="#ALoginmodal">Login</a> 																																																			
                    </div>
                </div>
                <div class="col-4"></div>
                <div class="col-4" style="text-align: right; float:right">
                    <h3 style="font-family: Cambria, Cochin, Georgia, Times, serif">Dentist:</h3>
                        <div  class="col-md-12 col-sm align-self-center">
                            <a role="button" class="btn btn-block btn-sm  btn-warning" data-toggle="modal" data-target="#CLoginmodal">Login</a> 																																																			
                        </div>
                </div>
            </div>
        </div>
	 </div>
	 
	 <!-- Dentist Login Section-->
        <div id="CLoginmodal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-lg" role="content">
                <div class="modal-content">
                    <div class="row" style="background-image: url(images/modback.png);
                                            background-repeat: no-repeat;
                                            background-size: 100% 100%;">
                        <div class="col-md-6 mx-auto p-0">
                            <div class="card">
                                <div class="login-box">
                                    <div class="login-snip"> <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Login</label> <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
                                        <div class="login-space">
                                            <div class="login">
                                                <!--Login request goes to core.php file-->
                                                <form action="login" method="POST">
                                                    <div class="group"> <label for="user" class="label">Email</label> <input id="user" type="email" class="input" placeholder="Enter your Email" name="dlemail"> </div>
                                                    <div class="group"> <label for="pass" class="label">Password</label> <input id="pass" type="password" class="input" data-type="password" placeholder="Enter your password" name="dlpass"> </div>
                                                    <div class="group"> <input id="check" type="checkbox" class="check" checked> <label for="check"><span class="icon"></span> Keep me Signed in</label> </div>
                                                    <div class="group"> <input type="submit" class="button" value="Sign In" name="dlsignin"> </div>
                                                </form>
                                                <div class="hr"></div>
                                                <div class="foot"> <a href="#">Forgot Password?</a> </div>
                                            </div>
                                            <div class="sign-up-form">
                                                <form action="Signup" method="POST">
                                                    <div class="group"> <label for="user" class="label">Username</label> <input id="user" type="text" class="input" placeholder="Create your Username" name="drname"> </div>
                                                    <div class="group"> <label for="pass" class="label">Email Address</label> <input id="pass" type="text" class="input" placeholder="Enter your email address" name="dremail"> </div>
                                                    <div class="group"> <label for="pass" class="label">Password</label> <input id="pass" type="password" class="input" placeholder="Enter your password" name="drpass"> </div>
                                                    
                                                    <div class="group"> <input type="submit" class="button" value="Sign Up" name="drsignup"> </div>
                                                </form>
                                                <div class="hr"></div>
                                                <div class="foot"> <label for="tab-1">Already Member?</label> </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
	 
	<!-- Footer List-->
    <footer class="footer" style="
                                background-color: #9575CD;
                                margin: 0px auto;
                                padding: 20px 0px 20px 0px;
                                ">
            <div class="container">
                <div class="row">             
                    <div class="col-4 offset-1 col-sm-2">
                        <h5>Links</h5>
                        <ul class="list-unstyled">
                            <li><a href="#" style="color: black;">Home</a></li>
                            <li><a href="aboutus.html" style="color: black;">About</a></li>
                            <li><a href="#" style="color: black;">Contact</a></li>
                        </ul>
                    </div>
                    <div class="col-7 col-sm-5">
                        <h5>Our Address</h5>
                        <address style="
                                        font-size: 100%;
                                        margin: 0px;
                                        color: #0f0f0f;
                                    ">
                          121, PCCOE<br>
                          Pimpri-Chinchwad, Pune<br>
                          Maharashtra<br>
                          <i class="fa fa-phone fa-lg"></i> +852 1234 5678<br>
                          <i class="fa fa-fax fa-lg"></i>+852 8765 4321<br>
                          <i class="fa fa-envelope fa-lg"></i><a href="mailto:pccoe@college.net">pccoe@college.net</a>
                       </address>
                    </div>
                    <div class="col-12 col-sm-4 align-self-center">
                        
                        <div class="text-center">
                             <a class="btn btn-social-icon btn-google" href="http://google.com/+"><i class="fa fa-google-plus"></i></a>
                            <a class="btn btn-social-icon btn-facebook" href="http://www.facebook.com/profile.php?id="><i class="fa fa-facebook"></i></a>
                            <a class="btn btn-social-icon btn-linkedin" href="http://www.linkedin.com/in/"><i class="fa fa-linkedin"></i></a>
                            <a class="btn btn-social-icon btn-twitter" href="http://twitter.com/"><i class="fa fa-twitter"></i></a>
                            <a class="btn btn-social-icon btn-google" href="http://youtube.com/"><i class="fa fa-youtube"></i></a>
                            <a class="btn btn-social-icon" href="mailto:"><i class="fa fa-envelope-o"></i></a>
                        </div>
                    </div>
               </div>
               <div class="row justify-content-center">             
                    <div class="col-auto">
                        <p>© Copyright 2020 XYZ</p>
                    </div>
               </div>
            </div>
        </footer>
	

</body>
</html>

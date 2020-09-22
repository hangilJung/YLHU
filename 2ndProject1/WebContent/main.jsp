<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- mobile metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<!-- site metas -->
<title>Cial</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content=""> 
<!-- bootstrap css -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<!-- style css -->
<link rel="stylesheet" type="text/css" href="css/style.css">
<!-- Responsive-->
<link rel="stylesheet" href="css/responsive.css">
<!-- fevicon -->
<link rel="icon" href="images/fevicon.png" type="image/gif" />
<!-- Scrollbar Custom CSS -->
<link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
<!-- Tweaks for older IEs-->
<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
<!-- owl stylesheets --> 
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
</head>
<body>
  <!--header section start -->
    <div class="header_section">
      <div class="header_left">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
          <div class="logo"><a href="index.html"><img src="images/logo.png"></a></div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item">
                <a class="nav-link" href="main.html">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="about.html">About</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="services.html">Services</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="contact.html">Contact Us</a>
              </li>
            </ul>
          </div>
        </nav>
      <div class="banner_main">
        <h1 class="banner_taital">financial <br>Service</h1>
        <p class="banner_text">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever </p>
        <div class="btn_main">
          <div class="contact_bt"><a class="nav-link" data-toggle="modal" href="#LoginModal">Login Us</a></div>
          <div class="more_bt"><a class="nav-link" data-toggle="modal" href="#JoinModal">Join Us </a></div>
        </div>
      </div>
    </div>
    <!-- 로그인 Modal -->
    <div class = "modal fade" id="LoginModal" role="dialog" style="display:noe;" ,aria-hidden="true" >
        <!-- 사용자 지정부분 : id -->
        <div class="modal-dialog">
        <!-- Modal content -->
        <div class="modal-content">
          <div class="modal-header">
            <button type = "button" class="close" data-dismiss="modal">X</button>
          </div>
          <div class="modal-body"></div>
          <!-- 로그인 -->
          <nav id="menu" class="container">
            <ul class="links">
              <li>
                <h4>로그인</h4>
              </li>
              <form action="Login_Service.do" method="post">
              <li>
                <label for="id">ID </label>
                <input type="text" name="id" class="form-control2" placeholder="ID를 입력하시오" required="required"> 
              </li> 
              
              <li>
                <label for="pw">PW</label>
                <input type="password" name="pw"  class="form-control2" placeholder="PW를 입력하시오" required="required">
              </li>

              <li>
                <input type="submit" value="Login" class="button fit" style="float: right">
              </li>
             
              </form>
            </ul>

            
          </nav>
        </div>
        <div class="modal-fotter">
          <button type="button" class="btn-default" data-dismiss="modal">CLOSE</button>
          </button>

        </div>
        </div>
    </div>
    
    <div class = "modal fade" id="JoinModal" role="dialog" style="display:noe;" ,aria-hidden="true" >
      <!-- 사용자 지정부분 : id -->
      <div class="modal-dialog">
      <!-- Modal content -->
      <div class="modal-content">
        <div class="modal-header">
          <button type = "button" class="close" data-dismiss="modal">X</button>
        </div>
        <div class="modal-body"></div>
        <!-- 회원가입 -->
        <nav id="menu" class="container">

          <ul class="links">
            <li>
              <h4>회원가입</h4>
            </li>
            <form action="Join_Service.do" method="post">
              <li>
                <input type="text" name="id" class="form-control2" placeholder="ID">
              </li>
              <li>
                <input type="password" name="pw" class="form-control2" placeholder="PW">
              </li>
              <li>
                <input type="text" name="age" class="form-control2" placeholder="나이">
              </li>
              <li>
                <input type="text" name="tel" class="form-control2" placeholder="연락처">
              </li>
              <li>
                <input type="submit" value="Join" class="button fit" style="float:right">
              </li>
           
            </form>
          </ul>
        </nav>
      </div>
      <div class="modal-fotter">
        <button type="button" class="btn-default" data-dismiss="modal">CLOSE</button>
        </button>

      </div>
      </div>
  </div>




    <div class="header_right">
      <img src="images/banner-img.png" class="banner_img">
    </div>
  </div>
  <!--header section end -->

<!--footer section start -->
<div class="footer_section layout_padding margin_top_90">
    <div class="container">
      <div class="row">
        <div class="col-lg-3 col-sm-6">
          <h4 class="about_text">About Financial</h4>
          <div class="location_text"><img src="images/map-icon.png"><span class="padding_left_15">Locations</span></div>
          <div class="location_text"><img src="images/call-icon.png"><span class="padding_left_15">+01 9876543210</span></div>
          <div class="location_text"><img src="images/mail-icon.png"><span class="padding_left_15">demo@gmail.com</span></div>
        </div>
        <div class="col-lg-3 col-sm-6">
          <h4 class="about_text">About Financial</h4>
          <p class="dolor_text">ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt</p>
        </div>
        <div class="col-lg-3 col-sm-6">
          <h4 class="about_text">Instagram</h4>
          <div class="footer_images">
            <div class="footer_images_left">
              <div class="image_12"><img src="images/img-12.png"></div>
              <div class="image_12"><img src="images/img-12.png"></div>
              <div class="image_12"><img src="images/img-12.png"></div>
            </div>
            <div class="footer_images_right">
              <div class="image_12"><img src="images/img-12.png"></div>
              <div class="image_12"><img src="images/img-12.png"></div>
              <div class="image_12"><img src="images/img-12.png"></div>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-sm-6">
          <h4 class="about_text">Newsletter</h4>
          <input type="text" class="mail_text" placeholder="Enter your email" name="Enter your email">
          <div class="subscribe_bt"><a href="#">Subscribe</a></div>
          <div class="footer_social_icon">
            <ul>
              <li><a href="#"><img src="images/fb-icon1.png"></a></li>
               <li><a href="#"><img src="images/twitter-icon1.png"></a></li>
              <li><a href="#"><img src="images/linkedin-icon1.png"></a></li>
              <li><a href="#"><img src="images/youtub-icon1.png"></a></li>
            </ul>
          </div>
        </div>
      </div>
      <!-- copyright section start -->
      <div class="copyright_section">
        <div class="copyright_text">Copyright 2019 All Right Reserved By <a href="https://html.design">Free html  Templates</a></div>
      </div>
      <!-- copyright section end -->
    </div>
  </div>
  <!--footer section end -->
  <!-- Javascript files-->
  <script src="js/jquery.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.bundle.min.js"></script>
  <script src="js/jquery-3.0.0.min.js"></script>
  <script src="js/plugin.js"></script>
  <!-- sidebar -->
  <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
  <script src="js/custom.js"></script>
  <!-- javascript --> 
  <script src="js/owl.carousel.js"></script>
  <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script> 
</body>
</html>
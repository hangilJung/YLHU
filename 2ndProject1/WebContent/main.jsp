<%@page import="com.model.MemberDTO"%>
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
<style>
	h2 { text-align: center; }
	label{margin-top:.5rem;}
	.container input[type="submit"] {
    width: 150px;
    float: right;
    margin-top: 25px;
    margin-bottom: 30px;
    font-size: 20px;
    color: #ffffff;
    text-align: center;
    background-color: black;
    padding: 10px 0px;
    text-transform: uppercase;
    border-radius: 30px;
    border:0px;  
  }
  .text_1{
  	width: 100%;
    float: center;
    font-size: 18px;
    color: #666666;
    background-color: transparent !important;
    border-bottom: 1px solid #050000 !important;
    padding-right: 20%;
    border: 0px
    }
   .about_text{
   	text-align : center;
   }
</style>
</head>
<body>
	<%
		MemberDTO info = (MemberDTO)session.getAttribute("info");
	%>
  <!--header section start -->
    <div class="header_section">
      <div class="header_left">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
          <div class="logo"><a href="main.jsp"><img src="images/YLHU.png"></a></div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div  style="font-weight: bold; width: 100px;" class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item">
                <a class="nav-link" href="mainService.jsp">뉴스 판별하기</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="mainBoard.jsp">판별된 뉴스</a>
              </li>
              <%if(info==null) {%>
              <li class="nav-item">
                <a class="nav-link" href="contact.jsp">문의하기</a>
              </li>
              <%} %>
              <%if(info!=null) {%>
              <li class="nav-item">
                <a class="nav-link" href="list.jsp">게시판</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="mypage.jsp">회원정보수정</a>
              </li>
              <%} %>
            </ul>
          </div>
        </nav>
      <div class="banner_main">
        <h1 class="banner_taital">FAKE NEWS <br>Service</h1>
        <% 
        if(info==null){ 
  		%>	
        	<p class="banner_text">
        	저희 서비스는 당신이 진실인지 거짓인지 알고싶은 뉴스 원본을 그대로 가져오시면 
        	<br>뉴스의 진위여부를 알려주는 서비스를 제공하고 있습니다.
        	<br>Login을 먼저 진행해주세요 ^^!! </p>
        	<% } else{%>
        	<p class="banner_text"><%=info.getEmail() %>님 환영합니다</p>
        <%}%>
        	
        
        
 
        <div class="btn_main">
        <%
        	if(info==null){
        %>
          <div class="contact_bt"><a class="nav-link" data-toggle="modal" href="#LoginModal">Login Us</a></div>
          <div class="more_bt" ><a class="nav-link" data-toggle="modal" href="#JoinModal">Join Us </a></div>
          <% } else{ %>
          <div class="contact_bt" ><a class="nav-link_1" href="Logout_Service.do">Logout</a></div>
        <% } %>
        </div>
      </div>
      </div>
       
    
    
    <!-- 로그인 Modal창 -->

    <div class="modal fade" id="LoginModal" role="dialog"> <!-- 사용자 지정 부분① : id명 -->

      <div class="modal-dialog">
        <!-- Modal content-->
  
        <div class="modal-content">
  
          <div class="modal-header">
  
            <button type="button" class="close" data-dismiss="modal">X</button>
  
            <!-- <h4 class="modal-title">모달 창 타이틀</h4> 사용자 지정 부분② : 타이틀 -->
  
          </div>
  
  
  
          <div class="modal-body">
  
  
      <!-- 로그인, 회원가입  -->
  
            <nav id="menu" class="container">	
  
              <ul class="links" >
  
                <li><h2>로그인</h2></li> 
                
                  <form action="Login_Service.do" method="post" >

                    <label for="id">E-MAIL</label>
                    <br>
                    <li><input name="email" type="text"  class="text_1" placeholder="이메일주소" required="required">
                    <br><br>
                    </li>
                    <label for="pw">PASSWORD</label>
                    <li><input name="pw" type="password"  class="text_1" placeholder="비밀번호"></li>
                    <li><input type="submit" value="LogIn" class="button fit"  style="float: right" ></li>
                  </form><br>
  
              </ul>
  
              
            </nav>			
  
          </div>
  
          <!--
          <div class="modal-footer">
  
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
  
          </div> 
           -->
  
        </div>
  
      </div>
  
    </div>
    
      <!-- 회원가입 Modal창 -->

      <div class="modal fade" id="JoinModal" role="dialog"> <!-- 사용자 지정 부분① : id명 -->

        <div class="modal-dialog">

          <!-- Modal content-->
    
          <div class="modal-content">
    
            <div class="modal-header">
    
              <button type="button" class="close" data-dismiss="modal">X</button>
    
              <!-- <h4 class="modal-title">모달 창 타이틀</h4> 사용자 지정 부분② : 타이틀 -->
    
            </div>

            <div class="modal-body">

              <nav id="menu" class="container">
                <ul class="links" >
                  <li><h2>회원가입</h2></li> 
    				
                    <form action="Join_Service.do" method="post" >
    
                      
                      <label for="email">E-MAIL</label>
                      <li><input name="email" type="text"  class="text_1" placeholder="Email 주소" required="required"></li>
                      
                      
                      <label for="pw">PASSWORD</label>
                      <li><input name="pw" type="password"  class="text_1" placeholder="비밀번호"></li>
                      
                      
                      <label for="age">AGE</label>
                      <li><input name="age" type="text"  class="text_1" placeholder="연령"></li>
                      
                      
                      <label for="tel">TELPHONE</label>
                      <li><input name="tel" type="text"  class="text_1" placeholder="연락처"></li>
  
                      <li><input type="submit" value="Join" class="button fit"  style="float: right" ></li>
    
                    </form><br>
    
                </ul>
    
                
              </nav>			
    
            </div>
    
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
          <h4 class="about_text">NEWS PAGE</h4>
          <div class="footer_images">
            <div class="footer_images_left">
              <div class="image_12"><img src="images/a1.png"></div>
              <div class="image_12"><img src="images/a2.png"></div>
              <div class="image_12"><img src="images/a3.png"></div>
            </div>
            <div class="footer_images_right">
              <div class="image_12"><img src="images/b1.png"></div>
              <div class="image_12"><img src="images/b2.png"></div>
              <div class="image_12"><img src="images/b3.png"></div>
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
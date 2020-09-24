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
  <title>MyPage</title>
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
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css"
    media="screen">
    <!-- hg -->
<link rel="stylesheet" href = "css/hg.css">
	<style>
	.mail_section input[type="submit"] {
    width: 170px;
    float: right;
    margin-top: 40px;
    margin-bottom: 40px;
    font-size: 20px;
    color: #ffffff;
    text-align: center;
    background-color: #ff5a58;
    padding: 10px 0px;
    text-transform: uppercase;
    border-radius: 30px;
    border:0px;  
  }
    .mail_section{
      text-align: center;;
    }
    .del{
      text-align: center;
    }
    .del p{
    font-size: 30px;
    }
    .del input[type="submit"]{
    width: 170px;
    float: right;
    margin-top: 40px;
    margin-bottom: 40px;
    font-size: 20px;
    color: #ffffff;
    text-align: center;
    background-color: #1b5a8d;
    padding: 10px 0px;
    text-transform: uppercase;
    border-radius: 30px;
    border:0px;}
    }
  
	</style>
</head>

<body>
	<%
		MemberDTO info = (MemberDTO)session.getAttribute("info");
	%>
  <!--header section start -->
  <div class="header_section header_bg">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <div class="logo"><a href="main.jsp"><img src="images/logo.png"></a></div>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
         	<li class="nav-item">
                <a class="nav-link" href="mainService.jsp">���� �Ǻ��ϱ�</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="mainBoard.jsp">�Խ���</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="contact.jsp">���ǻ���</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="list.jsp">���� �Խñ�</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="mypage.jsp">���� ������</a>
              </li>
        </ul>
      </div>
    </nav>
  </div>
  <!--header section end -->
  <!-- contact section start -->
  <!-- �α��� �� ȸ������ ������ -->
  <div class="contact_section layout_padding">
    <div class="container-fluid">
      <h1 class="what_taital" >����/ȸ��Ż��</h1>
      <p class="amet_text">amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore </p>

      <div class="contact_section2">
        <div class="row">
          <div class="col-md-6 padding_left_0">
            <div class="mail_section">
              <h1>UPDATE</h1>
              <form action="Update_Service.do" method="get">
              <input type="text" class="mail_text_1" placeholder="<%=info.getEmail() %>" name="email">
              <input type="password" class="mail_text_1" placeholder="Password" name="password ">
              <input type="text" class="mail_text_1" placeholder="Age : <%=info.getAge() %>" name="age">
              <input type="text" class="mail_text_1" placeholder="Tel: <%=info.getTel() %>" name="tel">
         	  <input type="submit" value="�����ϱ�">
              </form>
            </div>
          </div>
          <div class="col-md-6 padding_0" id="con-al">
            <div class="del">
            	<h1>DELETE</h1>
       			<form action="Drop_Service.do" method="get">
       			<br>
       			<br>
       			<p><%= info.getEmail()%>��<br><br>
       			ȸ��Ż�� �����Ͻðڽ��ϱ�?</p>
       			<br>
       			<br>
       			<input type="submit" onclick="btn1_event()" value="ȸ��Ż��" >
       			</form>
       		</div>
       	</div>
       </div>	  
      </div>
    <!-- contact section end -->
    <!--footer section start -->
    <div class="footer_section layout_padding margin_top_90">
      <div class="container">
        <div class="row">
          <div class="col-lg-3 col-sm-6">
            <h4 class="about_text">About Financial</h4>
            <div class="location_text"><img src="images/map-icon.png"><span class="padding_left_15">Locations</span>
            </div>
            <div class="location_text"><img src="images/call-icon.png"><span class="padding_left_15">+01
                9876543210</span></div>
            <div class="location_text"><img src="images/mail-icon.png"><span
                class="padding_left_15">demo@gmail.com</span></div>
          </div>
          <div class="col-lg-3 col-sm-6">
            <h4 class="about_text">About Financial</h4>
            <p class="dolor_text">ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
            </p>
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
          <div class="copyright_text">Copyright 2019 All Right Reserved By <a href="https://html.design">Free html
              Templates</a></div>
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
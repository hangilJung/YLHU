<%@page import="java.util.ArrayList"%>
<%@page import="com.model.MemberDTO"%>
<%@page import="com.model.MessageDTO"%>
<%@page import="com.model.MessageDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- basic -->
<meta charset="EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- mobile metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<!-- site metas -->
<title>Notice Board</title>
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
<!-- hg -->
<link rel="stylesheet" href = "css/hg.css">
<!-- Icons -->
<link href="js/plugins/nucleo/css/nucleo.css" rel="stylesheet" />
<link href="js/plugins/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet" />
<style>
.table input[type="submit"] {
    width: 170px;
    float: center;
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
</style>
</head>
<body>
	<% 
		MemberDTO info = (MemberDTO)session.getAttribute("info");
	%>
  <!--header section start -->
    <div class="header_section header_bg">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
          <div class="logo"><a href="main.jsp"><img src="images/YLHU.png"></a></div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div  style="font-weight: bold; width: 100px;" class="collapse navbar-collapse" id="navbarSupportedContent">
            <li class="nav-item">
                <a class="nav-link" href="mainService.jsp">뉴스 판별하기</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="mainBoard.jsp">게시판</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="contact.jsp">문의사항</a>
              </li>
              <%if(info!=null) {%>
              <li class="nav-item">
                <a class="nav-link" href="list.jsp">나의 게시글</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="mypage.jsp">나의 페이지</a>
              </li>
              <%} %>
            </ul>
          </div>
        </nav>
    </div>
    <!--header section end -->
    <!--viewBoard section start  -->
    <div class="contact_section layout_padding">
    <div class="container-fluid">
      <h1 class="what_taital" >뉴스 판별하기</h1>
    	<p style="text-align:center;">여기에 판별이 필요한 제목이나 기사를 적어주세요</p>
    </div>
    	<form action="mainService.do" method="get">
    		<div style="margin: 0px 250px 0px 250px;">
             <table class="table table-hover">
              <tr>  
                <td>작성자 E-mail</td>
                <td><textarea type="text"  class="form-control" name="email" readonly><%=info.getEmail() %></textarea></td>
          	  </tr>
              <tr>  
                <td>제목</td>
                <td><textarea type="text"  class="form-control" placeholder="제목을 적어주세요." name="title"></textarea></td>
          	  </tr>
          	  <tr>
                <td>글내용</td>
                <td><textarea rows="10" cols="50" name="content" placeholder="내용을 적어주세요." class="view"></textarea></td>
          	  </tr>
          	  <tr>
          	  	<td>출처</td>
          	  	<td><textarea type="text" class="form-control" placeholder="https://www.naver.com" name="url"></textarea></td>
          	  </tr>
          	  <tr>
                <td colspan="2"  class="text-center">
                <input type="submit" value="판별하기"></input>
                </td>
           	  </tr>
         	 </table>
            </div>
        </form>
       </div>
    <!--viewBoard section end -->
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
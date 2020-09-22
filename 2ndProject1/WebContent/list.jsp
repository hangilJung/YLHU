<%@page import="java.util.ArrayList"%>
<%@page import="com.model.MemberDTO"%>
<%@page import="com.model.MessageDTO"%>
<%@page import="com.model.MessageDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
</head>
<body>
	<%
		MemberDTO info = (MemberDTO)session.getAttribute("info");
		MessageDAO dao = new MessageDAO();
		ArrayList<MessageDTO> list1 = dao.viewAll();
		ArrayList<MessageDTO> list2 = dao.myView(info.getEmail());
	%>
  <!--header section start -->
    <div class="header_section header_bg">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
          <div class="logo"><a href="main.jsp"><img src="images/logo.png"></a></div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
              <ul class="navbar-nav mr-auto">
              <li class="nav-item">
                <a class="nav-link" href="about.jsp">About</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="services.jsp">Services</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="Board.jsp">Board</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="contact.jsp">Contact Us</a>
              </li>
              <c:if test="${empty info}">
              <li class="nav-item">
                <a class="nav-link" href="#">My Page</a>
              </li>
              </c:if>
            </ul>
          </div>
        </nav>
    </div>
    <!--header section end -->
    <!--board section start  -->
    <div class="row">
        <div class="col">
          <div class="card shadow">
            <div class="card-header border-0">
              <h3 class="mb-0"><%if(info.getEmail().equals("admin")){%>고객 문의사항<%}else { %>내가 쓴 글 목록<%} %></h3>
            </div>
            <div class="table-responsive">
              <table class="table align-items-center table-flush table-hover">
                <thead class="thead-light">                
                  <tr>
                    <th scope="col">번호</th>
                    <th scope="col">제목</th>
                    <th scope="col">작성자</th>
                    <th scope="col">시간</th>    
                    <th scope="col"></th>
                    <th scope="col"></th>
                  </tr>
                </thead>
                <tbody>
                <div class="detail-view"></div>
                	<%if(info.getEmail().equals("admin")){
                		for(int i = 0; i<list1.size();i++){ %>                	
                  <tr>                    
                    <td>
                      <%=i+1 %>
                    </td>
                    <td>
                      <%=list1.get(i).getTitle() %>
                    </td>                    
                    <td>
                      <%=list1.get(i).getSender() %>
                    </td>
                    <td>
                      <%=list1.get(i).getMsg_Day() %>
                    </td>
                    <td><a href="viewBoard.jsp?msg_num=<%=list1.get(i).getMsg_num()%>"><button class="table-update btn-primary">상세보기</button></td></a>
                    <td><button onclick="btn1_event()" class="table-update btn-primary">삭제</button></td>
                  </tr> 
                  <script type="text/javascript">
						function btn1_event(){
							if(confirm("정말 삭제하시겠습니까?")==true){
								document.location.href="removeBoard.do?msg_num=<%=list1.get(i).getMsg_num()%>";
							}else{
								return;
							}
								}
					</script>
                  <% }}else {%>
               		
                  	<% for(int i = 0; i<list2.size();i++){%>
                  <tr>                    
                    <td>
                      <%=i+1 %>
                    </td>
                    <td>
                      <%=list2.get(i).getTitle() %>
                    </td>                    
                    <td>
                      <%=list2.get(i).getSender() %>
                    </td>
                    <td>
                      <%=list2.get(i).getMsg_Day() %>
                    </td >
                     <td><a href="viewBoard.jsp?msg_num=<%=list2.get(i).getMsg_num()%>" name="viewBoard_confirm"><button class="table-update btn-primary">상세보기</button></td></a>
                    <td><button onclick="btn2_event()" class="table-update btn-primary">삭제</button></td>
                  </tr>
                    <script type="text/javascript">
						function btn2_event(){
							if(confirm("정말 삭제하시겠습니까?")==true){
								document.location.href="removeBoard.do?msg_num=<%=list2.get(i).getMsg_num()%>";
							}else{
								return;
							}
								}
					</script>
                  
                  
                  		<%}} %>
                                              
                </tbody>
              </table>
            </div>
            
            <div class="card-footer py-4">
              <nav aria-label="...">
                <ul class="pagination justify-content-end mb-0">
                  <li class="page-item disabled">
                    <a class="page-link" href="#" tabindex="-1">
                      <i class="fas fa-angle-left"></i>
                      <span class="sr-only">Previous</span>
                    </a>
                  </li>
                  <li class="page-item active">
                    <a class="page-link" href="#">1</a>
                  </li>
                  <li class="page-item">
                    <a class="page-link" href="#">2 <span class="sr-only">(current)</span></a>
                  </li>
                  <li class="page-item"><a class="page-link" href="#">3</a></li>
                  <li class="page-item">
                    <a class="page-link" href="#">
                      <i class="fas fa-angle-right"></i>
                      <span class="sr-only">Next</span>
                    </a>
                  </li>
                </ul>
              </nav>
            </div>
          </div>
        </div>     
    </div>
    	 	
     
    <!--board section end -->
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
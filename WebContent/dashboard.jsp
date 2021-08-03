<%@page import="com.entity.UserBean"%>
<%@page import="com.entity.SpecializationBean"%>
<%@page import="com.entity.CounsellorBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

 <%@page import="java.util.ArrayList" %>
   
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Delicious Bootstrap Template - Index</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,600,600i,700,700i|Satisfy|Comic+Neue:300,300i,400,400i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Delicious - v4.3.0
  * Template URL: https://bootstrapmade.com/delicious-free-restaurant-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  -->
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<!-- Required meta tags -->
<title>Dashboard</title>
<style type="text/css">
.mycard {
	margin: 0 auto; /* Added */
	float: none; /* Added */
	margin-bottom: 10px; /* Added */
	
}

.mycontent-left {
	border-right: 1px solid #333;
	background-color: white;
}	
.mar{
	margin-bottom: 100px;
}	

</style>

</head>
<body style="background-color: #FFFFFF;">
   <%response.setHeader("Cache-Control","no-cache,no-store,must-revalidate"); %>
<%ArrayList<CounsellorBean> al=(ArrayList<CounsellorBean>)getServletContext().getAttribute("counsellors"); %>
 <%ArrayList<SpecializationBean> speclist=(ArrayList<SpecializationBean>)getServletContext().getAttribute("specialization"); %>
<%UserBean ub = (UserBean)session.getAttribute("loggedInUser"); %>
<%if(ub==null)
	{
		response.sendRedirect("login.jsp");
	}%>
	<!------------------------------------------------------------------------------  -->
	<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <!-- Container wrapper -->
  <div class="container-fluid">
    <!-- Toggle button -->
    <button
      class="navbar-toggler"
      type="button"
      data-mdb-toggle="collapse"
      data-mdb-target="#navbarSupportedContent"
      aria-controls="navbarSupportedContent"
      aria-expanded="false"
      aria-label="Toggle navigation"
    >
      <i class="fas fa-bars"></i>
    </button>

    <!-- Collapsible wrapper -->
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <!-- Navbar brand -->
      <a class="navbar-brand mt-2 mt-lg-0" href="#">
          <span style="color: #FF991C">dashboard</span>
       <!-- <img
          src="https://mdbootstrap.com/img/logo/mdb-transaprent-noshadows.png"
          height="15"
          alt=""
          loading="lazy"
        />-->
      </a>
      <!-- Left links 
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link" href="#">Dashboard</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Team</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Projects</a>
        </li>
      </ul>
       Left links -->
    </div>
    <!-- Collapsible wrapper -->

    <!-- Right elements -->
    <div class="d-flex align-items-center">

      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="viewprofile.jsp">Profile</a>
        </li>
        <li class="nav-item" >
          <a class="nav-link" href="<%=pageContext.getServletContext().getContextPath()%>/UserLogOutServlet">Log Out</a>
        </li>
      </ul>

     <!--  Notifications
      <a
        class="text-reset me-3 dropdown-toggle hidden-arrow"
        href="#"
        id="navbarDropdownMenuLink"
        role="button"
        data-mdb-toggle="dropdown"
        aria-expanded="false"
      >
        <i class="far fa-bell"></i>
        <span class="badge rounded-pill badge-notification bg-danger">1</span>
      </a>
     
      <ul
        class="dropdown-menu dropdown-menu-end"
        aria-labelledby="navbarDropdownMenuLink"
      >
        <li>
          <a class="dropdown-item" href="#">Some news</a>
        </li>
        <li>
          <a class="dropdown-item" href="#">Another news</a>
        </li>
        <li>
          <a class="dropdown-item" href="#">Something else here</a>
        </li>
      </ul>
 -->
      <!-- Avatar
      <a
        class="dropdown-toggle d-flex align-items-center hidden-arrow"
        href="#"
        id="navbarDropdownMenuLink"
        role="button"
        data-mdb-toggle="dropdown"
        aria-expanded="false"
      >
        <img
          src="https://mdbootstrap.com/img/new/avatars/2.jpg"
          class="rounded-circle"
          height="25"
          alt=""
          loading="lazy"
        />
      </a>

      <ul
        class="dropdown-menu dropdown-menu-end"
        aria-labelledby="navbarDropdownMenuLink"
      >
        <li>
          <a class="dropdown-item" href="#">My profile</a>
        </li>
        <li>
          <a class="dropdown-item" href="#">Settings</a>
        </li>
        <li>
          <a class="dropdown-item" href="#">Logout</a>
        </li>
      </ul>
 -->
    </div>

    <!-- Right elements -->
  </div>
  <!-- Container wrapper -->
</nav>
	<div class="container " >
	
	<div class="row p-3 ">
	<%int index=0;
	for(CounsellorBean c:al){ %>
		 <div class="col-sm-3 mt-3 ">
		<div class="card p-2" style="width: 15rem; box-shadow: 5px 5px; background-color:#DAE5E6; height:200px">
			<!--  <img class="card-img-top p-2 image-fluid" src="<c:url value="/resources/images/SquarePic_20191216_22492294.jpg"/>" alt="Card image cap">-->
			<div class="card-body text-center">
				<h5 class="card-title font-italic text-warning"><%=c.getCounsellor_name() %></h5>
				<h6 class="card-title"><%=speclist.get(index).getSpecialization_name() %></h6>
				<p class="card-text"></p>
				<div class="mt-3">
					<a href=""  class="btn btn-secondary">View Profile</a>		
			</div>
			</div>
		</div>
		</div>
		<%index++;
		} %>	
	</div>
	
	</div>
</body>
</html>
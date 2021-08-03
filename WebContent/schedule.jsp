<%@page import="com.entity.CounsellorBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css"
	integrity="sha384-wESLQ85D6gbsF459vf1CiZ2+rr+CsxRY0RpiF1tLlQpDnAgg6rwdsUF1+Ics2bni"
	crossorigin="anonymous">


<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<!-- <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Delicious Bootstrap Template - Index</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
<link href="assets/img/favicon.png" rel="icon">
<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,600,600i,700,700i|Satisfy|Comic+Neue:300,300i,400,400i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="assets/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="assets/css/style.css" rel="stylesheet">

<!-- =======================================================
  * Template Name: Delicious - v4.3.0
  * Template URL: https://bootstrapmade.com/delicious-free-restaurant-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->

<style type="text/css">
.myDiv {
	border: 2px solid #ffb03b;
	border-radius: 12px;
	height: auto;
	width: auto;
	background-color: white;
}

.section-title1 {
	margin: 15px 0 0 0;
	font-size: 32px;
	font-weight: 700;
	color: #5f5950;
}

.section-title1 h1 span {
	color: #ffb03b;
}

.container .box {
	display: flex;
	flex-direction: row;
}

.container .box .box1 {
	background: #d7dedd;
	color: black;
	text-align: justify;
	flex: 100%;
	padding: 4px 20px;
}

.container .box .box2 {
	background: #f0f5f4;
	text-align: justify;
	padding: 4px 20px;
	flex: 100%;
}

#head {
	display: inline;
}

#time1 {
	padding: 4px 8px;
	margin-left: 15px;
}
</style>


</head>
<body>
	<%
	response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
	%>

	<%
	CounsellorBean cb = (CounsellorBean) session.getAttribute("loggedInCounsellor");
	%>
	<%
	if (cb != null) {
	%>


	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<!-- Container wrapper -->
		<div class="container-fluid">
			<!-- Toggle button -->
			<button class="navbar-toggler" type="button"
				data-mdb-toggle="collapse" data-mdb-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<i class="fas fa-bars"></i>
			</button>

			<!-- Collapsible wrapper -->
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<!-- Navbar brand -->
				<a class="navbar-brand mt-2 mt-lg-0" href="#"> <span
					style="color: #FF991C"><%=cb.getCounsellor_name()%>'s
						Schedule</span> <!-- <img
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
					<li class="nav-item"><a class="nav-link" href="#">Home</a></li>
					<li class="nav-item"><a class="nav-link"
						href="viewprofile.jsp">Profile</a></li>
					<li class="nav-item"><a class="nav-link"
						href="CousellorLogOutServlet">Log Out</a></li>
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
	<div class="myDiv">

		<form>
			<h2 id="head" style="color: #000000">Monday</h2>
			<input type="hidden" name="day" value="Monday"> 
			<input type="checkbox" id="Mondaycheck" name="working" value="working" class="p-4" onclick="ckChange()">
			<label for="c1"> Working</label> 
			<input type="checkbox" id="c2" name="leave" value="leave" onclick="ckChange()"> 
			<label for="c2"> Leave</label><br>
			<div class="container ">
				<div class="box ">
					<div class="box1 ">
						<h4 id="head" align="left">Before Noon</h4>
						<input type="checkbox" id="c1" name="Before_status"
							value="working" class="monday"> <label for="c1">
							Working</label> <input type="checkbox" id="c2" name="Before_status"
							value="leave"> <label for="c2"> Leave</label><br> 
							<select
							name="Btime" class="mon-bef-noon" id="time" style="padding: 4px 8px;">
							<option>start time</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
						</select> <select name="Bendtime" id="time1">
							<option>end time</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
						</select> <input type="text" name="BeforenoOfPatient" id="noOfPatient"
							placeholder="Patients" size="5" />
					</div>
					<div class="box2">
						<h4 id="head" align="left">After Noon</h4>
						<input type="checkbox" id="c1" name="After_status" value="working">
						<label for="c1"> Working</label> <input type="checkbox" id="c2"
							name="After_status" value="leave"> <label for="c2">
							Leave</label><br> <select name="Atime" id="Atime"
							style="padding: 4px 8px;">
							<option>start time</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
						</select> <select name="Aendtime" id="Atime1" style="padding: 4px 8px;">
							<option>end time</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
						</select> <input type="text" name="AfternoOfPatient" id="noOfPatient"
							placeholder="Patients" size="5" />	
					</div>
				</div>
			</div>
		</form>
	</div>

	<form>
		<h2 id="head" style="color: #000000" name="Tuesday">Tuesday</h2>
		<input type="checkbox" id="c1" name="c1" value="working"> <label
			for="c1"> Working</label> <input type="checkbox" id="c2" name="c2"
			value="leave"> <label for="c2"> Leave</label><br>
		<div class="container">
			<div class="box">
				<div class="box1">
					<h4 id="head" align="left">Before Noon</h4>
					<input type="checkbox" id="c1" name="c1" value="working"> <label
						for="c1"> Working</label> <input type="checkbox" id="c2" name="c2"
						value="leave"> <label for="c2"> Leave</label><br> <select
						name="time" id="Tuetime" style="padding: 4px 8px;">
						<option>start time</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select> <select name="endtime" id="Tuetime1">
						<option>end time</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select> <input type="text" name="noOfPatient" id="noOfPatient"
						placeholder="Patients" size="5" />
				</div>
				<div class="box2">
					<h4 id="head" align="left">After Noon</h4>
					<input type="checkbox" id="c1" name="c1" value="working"> <label
						for="c1"> Working</label> <input type="checkbox" id="c2" name="c2"
						value="leave"> <label for="c2"> Leave</label><br> <select
						name="time" id="TueAtime" style="padding: 4px 8px;">
						<option>start time</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select> <select name="endtime" id="TueAtime1" style="padding: 4px 8px;">
						<option>end time</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select> <input type="text" name="noOfPatient" id="noOfPatient"
						placeholder="Patients" size="5" />
				</div>
			</div>
		</div>
	</form>
	<form action="">
		<h2 id="head" name="Wednesday">Wednesday</h2>
		<input type="checkbox" id="c1" name="c1" value="working"> <label
			for="c1"> Working</label> <input type="checkbox" id="c2" name="c2"
			value="leave"> <label for="c2"> Leave</label><br>
		<div class="container">
			<div class="box">
				<div class="box1">
					<h4 id="head" align="left">Before Noon</h4>
					<input type="checkbox" id="c1" name="c1" value="working"> <label
						for="c1"> Working</label> <input type="checkbox" id="c2" name="c2"
						value="leave"> <label for="c2"> Leave</label><br> <select
						name="time" id="Wedtime" style="padding: 4px 8px;">
						<option>start time</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select> <select name="endtime" id="Wedtime1">
						<option>end time</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select> <input type="text" name="noOfPatient" id="noOfPatient"
						placeholder="Patients" size="5" />
				</div>
				<div class="box2">
					<h4 id="head" align="left">After Noon</h4>
					<input type="checkbox" id="c1" name="c1" value="working"> <label
						for="c1"> Working</label> <input type="checkbox" id="c2" name="c2"
						value="leave"> <label for="c2"> Leave</label><br> <select
						name="time" id="WedAtime" style="padding: 4px 8px;">
						<option>start time</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select> <select name="endtime" id="WedAtime1" style="padding: 4px 8px;">
						<option>end time</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select> <input type="text" name="noOfPatient" id="noOfPatient"
						placeholder="Patients" size="5" />
				</div>
			</div>
		</div>
	</form>
	<form>
		<h2 id="head" name="Thursday">
			<span class="day">Thursday</span>
		</h2>
		<input type="checkbox" id="c1" name="c1" value="working"> <label
			for="c1"> Working</label> <input type="checkbox" id="c2" name="c2"
			value="leave"> <label for="c2"> Leave</label><br>
		<div class="container">
			<div class="box">
				<div class="box1">
					<h4 id="head" align="left">Before Noon</h4>
					<input type="checkbox" id="c1" name="c1" value="working"> <label
						for="c1"> Working</label> <input type="checkbox" id="c2" name="c2"
						value="leave"> <label for="c2"> Leave</label><br> <select
						name="time" id="Thutime" style="padding: 4px 8px;">
						<option>start time</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select> <select name="endtime" id="Thutime1">
						<option>end time</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select> <input type="text" name="noOfPatient" id="noOfPatient"
						placeholder="Patients" size="5" />
				</div>
				<div class="box2">
					<h4 id="head" align="left">After Noon</h4>
					<input type="checkbox" id="c1" name="c1" value="working"> <label
						for="c1"> Working</label> <input type="checkbox" id="c2" name="c2"
						value="leave"> <label for="c2"> Leave</label><br> <select
						name="time" id="ThuAtime" style="padding: 4px 8px;">
						<option>start time</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select> <select name="endtime" id="ThuAtime1" style="padding: 4px 8px;">
						<option>end time</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select> <input type="text" name="noOfPatient" id="noOfPatient"
						placeholder="Patients" size="5" />
				</div>
			</div>
		</div>
	</form>
	<form>
		<h2 id="head" name="Friday">
			<span class="day">Friday</span>
		</h2>
		<input type="checkbox" id="c1" name="c1" value="working"> <label
			for="c1"> Working</label> <input type="checkbox" id="c2" name="c2"
			value="leave"> <label for="c2"> Leave</label><br>
		<div class="container">
			<div class="box">
				<div class="box1">
					<h4 id="head" align="left">Before Noon</h4>
					<input type="checkbox" id="c1" name="c1" value="working"> <label
						for="c1"> Working</label> <input type="checkbox" id="c2" name="c2"
						value="leave"> <label for="c2"> Leave</label><br> <select
						name="time" id="Fritime" style="padding: 4px 8px;">
						<option>start time</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select> <select name="endtime" id="Fritime1">
						<option>end time</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select> <input type="text" name="noOfPatient" id="noOfPatient"
						placeholder="Patients" size="5" />
				</div>
				<div class="box2">
					<h4 id="head" align="left">After Noon</h4>
					<input type="checkbox" id="c1" name="c1" value="working"> <label
						for="c1"> Working</label> <input type="checkbox" id="c2" name="c2"
						value="leave"> <label for="c2"> Leave</label><br> <select
						name="time" id="FriAtime" style="padding: 4px 8px;">
						<option>start time</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select> <select name="endtime" id="FriAtime1" style="padding: 4px 8px;">
						<option>end time</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select> <input type="text" name="noOfPatient" id="noOfPatient"
						placeholder="Patients" size="5" />
				</div>
			</div>
		</div>
	</form>
	<form action="">
		<h2 id="head" name="Saturday">Saturday</h2>
		<input type="checkbox" id="c1" name="c1" value="working"> <label
			for="c1"> Working</label> <input type="checkbox" id="c2" name="c2"
			value="leave"> <label for="c2"> Leave</label><br>
		<div class="container">
			<div class="box">
				<div class="box1">
					<h4 id="head" align="left">Before Noon</h4>
					<input type="checkbox" id="c1" name="c1" value="working"> <label
						for="c1"> Working</label> <input type="checkbox" id="c2" name="c2"
						value="leave"> <label for="c2"> Leave</label><br> <select
						name="time" id="Sattime" style="padding: 4px 8px;">
						<option>start time</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select> <select name="endtime" id="Sattime1">
						<option>end time</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select> <input type="text" name="noOfPatient" id="noOfPatient"
						placeholder="Patients" size="5" />
				</div>
				<div class="box2">
					<h4 id="head" align="left">After Noon</h4>
					<input type="checkbox" id="c1" name="c1" value="working"> <label
						for="c1"> Working</label> <input type="checkbox" id="c2" name="c2"
						value="leave"> <label for="c2"> Leave</label><br> <select
						name="time" id="SatAtime" style="padding: 4px 8px;">
						<option>start time</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select> <select name="endtime" id="SatAtime1" style="padding: 4px 8px;">
						<option>end time</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select> <input type="text" name="noOfPatient" id="noOfPatient"
						placeholder="Patients" size="5" />
				</div>
			</div>
		</div>
	</form>
	<form>
		<h2 id="head" name="Sunday">Sunday</h2>
		<input type="checkbox" id="c1" name="c1" value="working"> <label
			for="c1"> Working</label> <input type="checkbox" id="c2" name="c2"
			value="leave"> <label for="c2"> Leave</label><br>
		<div class="container">
			<div class="box">
				<div class="box1">
					<h4 id="head" align="left">Before Noon</h4>
					<input type="checkbox" id="c1" name="c1" value="working"> <label
						for="c1"> Working</label> <input type="checkbox" id="c2" name="c2"
						value="leave"> <label for="c2"> Leave</label><br> <select
						name="time" id="Suntime" style="padding: 4px 8px;">
						<option>start time</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select> <select name="endtime" id="Suntime1">
						<option>end time</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select> <input type="text" name="noOfPatient" id="noOfPatient"
						placeholder="Patients" size="5" />
				</div>
				<div class="box2">
					<h4 id="head" align="left">After Noon</h4>
					<input type="checkbox" id="c1" name="c1" value="working"> <label
						for="c1"> Working</label> <input type="checkbox" id="c2" name="c2"
						value="leave"> <label for="c2"> Leave</label><br> <select
						name="time" id="SunAtime" style="padding: 4px 8px;">
						<option>start time</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select> <select name="endtime" id="SunAtime1" style="padding: 4px 8px;">
						<option>end time</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select> <input type="text" name="noOfPatient" id="noOfPatient"
						placeholder="Patients" size="5" />
				</div>
			</div>
		</div>
	</form>
	</div>
	<%
	} else {
	response.sendRedirect(request.getContextPath() + "/clogin.jsp");
	}
	%>
</body>
<!-- <script>
 if ($('#Mondaycheck').is(":checked"))
{
  alert("checked");
}
else
	{
	alert("unchecked");
	}

</script>  -->

 <!-- <script>
	function ckChange() {
	//	var ckName1 = document.getElementsByTagName("input");
		     var ckName1 = document.getElementsById("Mondaycheck"); 
		//input.disabled = ckType.checked ? true : false;
		alert("op sir");
    if (checked.checked) {
		    

		        if(!ckName1.checked){
		        		alert("checked");
		       
		            /* ckName1.disabled = true; */
		        }
		        else if(ckName1.checked){
		        	
		        		alert("unchecked");
		          /*   ckName2.disabled = true; */
		        }
		        
		    } 
		  
		  else {
		   alert("dharmendra");
		      ckName1.disabled = false;
		      ckName2.disabled = false; 
		  }
	}
</script>  -->

<script type="text/javascript">
function ckChange(id) {
	  var checkBox = document.getElementById("Mondaycheck");
	//  var text = document.getElementById("text");
	  if (checkBox.checked == true){
		  
	  alert("checked");
	  $(".mon-bef-noon").attr("disabled", true);
		  //  text.style.display = "block";
	  } else {
		  alert("unchecked");
		  $(".mon-bef-noon").attr("disabled", false);
	     //text.style.display = "none";
	  }
	}

</script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	var removed;

	$("#time").change(function() {
		var value = this.value;
		$("#time1").prepend(removed);
		var toKeep = $("#time1 option").filter(function() {
			return parseInt(this.value, 10) > parseInt(value, 10);
		});
		removed = $("#time1 option").filter(function() {
			return parseInt(this.value, 10) < parseInt(value, 10);
		});
		$("#time1").html(toKeep);
		toKeep = null;
		removed = null;
	});
</script>
<script>
	var removed;

	$('#Atime').change(function() {
		var value = this.value;
		$('#Atime1').prepend(removed);
		var toKeep = $('#time1 option').filter(function() {
			return parseInt(this.value, 10) > parseInt(value, 10);
		});
		removed = $('#time1 option').filter(function() {
			return parseInt(this.value, 10) < parseInt(value, 10);
		});
		$('#Atime1').html(toKeep);
	});
</script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	var removed;

	$("#Tuetime").change(function() {
		var value = this.value;
		$("#time1").prepend(removed);
		var toKeep = $("#Tuetime1 option").filter(function() {
			return parseInt(this.value, 10) > parseInt(value, 10);
		});
		removed = $("Tue#time1 option").filter(function() {
			return parseInt(this.value, 10) < parseInt(value, 10);
		});
		$("#Tuetime1").html(toKeep);
		toKeep = null;
		removed = null;
	});
</script>
<script>
	var removed;

	$('#TueAtime').change(function() {
		var value = this.value;
		$('#TueAtime1').prepend(removed);
		var toKeep = $('#Tuetime1 option').filter(function() {
			return parseInt(this.value, 10) > parseInt(value, 10);
		});
		removed = $('#Tuetime1 option').filter(function() {
			return parseInt(this.value, 10) < parseInt(value, 10);
		});
		$('#TueAtime1').html(toKeep);
	});
</script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	var removed;

	$("#Wedtime").change(function() {
		var value = this.value;
		$("#time1").prepend(removed);
		var toKeep = $("#Wedtime1 option").filter(function() {
			return parseInt(this.value, 10) > parseInt(value, 10);
		});
		removed = $("#Wedtime1 option").filter(function() {
			return parseInt(this.value, 10) < parseInt(value, 10);
		});
		$("#Wedtime1").html(toKeep);
		toKeep = null;
		removed = null;
	});
</script>
<script>
	var removed;

	$('#WedAtime').change(function() {
		var value = this.value;
		$('#WedAtime1').prepend(removed);
		var toKeep = $('#Wedtime1 option').filter(function() {
			return parseInt(this.value, 10) > parseInt(value, 10);
		});
		removed = $('#Wedtime1 option').filter(function() {
			return parseInt(this.value, 10) < parseInt(value, 10);
		});
		$('#WedAtime1').html(toKeep);
	});
</script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	var removed;

	$("#Thutime").change(function() {
		var value = this.value;
		$("#time1").prepend(removed);
		var toKeep = $("#Thutime1 option").filter(function() {
			return parseInt(this.value, 10) > parseInt(value, 10);
		});
		removed = $("#Thutime1 option").filter(function() {
			return parseInt(this.value, 10) < parseInt(value, 10);
		});
		$("#Thutime1").html(toKeep);
		toKeep = null;
		removed = null;
	});
</script>
<script>
	var removed;

	$('#ThuAtime').change(function() {
		var value = this.value;
		$('#ThuAtime1').prepend(removed);
		var toKeep = $('#Thutime1 option').filter(function() {
			return parseInt(this.value, 10) > parseInt(value, 10);
		});
		removed = $('#Thutime1 option').filter(function() {
			return parseInt(this.value, 10) < parseInt(value, 10);
		});
		$('#ThuAtime1').html(toKeep);
	});
</script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	var removed;

	$("#Fritime").change(function() {
		var value = this.value;
		$("#time1").prepend(removed);
		var toKeep = $("#Fritime1 option").filter(function() {
			return parseInt(this.value, 10) > parseInt(value, 10);
		});
		removed = $("#Fritime1 option").filter(function() {
			return parseInt(this.value, 10) < parseInt(value, 10);
		});
		$("#Fritime1").html(toKeep);
		toKeep = null;
		removed = null;
	});
</script>
<script>
	var removed;

	$('#FriAtime').change(function() {
		var value = this.value;
		$('#FriAtime1').prepend(removed);
		var toKeep = $('#Fritime1 option').filter(function() {
			return parseInt(this.value, 10) > parseInt(value, 10);
		});
		removed = $('#Fritime1 option').filter(function() {
			return parseInt(this.value, 10) < parseInt(value, 10);
		});
		$('#FriAtime1').html(toKeep);
	});

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">
</script>
<script type="text/javascript">
	var removed;

	$("#Sattime").change(function() {
		var value = this.value;
		$("#time1").prepend(removed);
		var toKeep = $("#Sattime1 option").filter(function() {
			return parseInt(this.value, 10) > parseInt(value, 10);
		});
		removed = $("#Sattime1 option").filter(function() {
			return parseInt(this.value, 10) < parseInt(value, 10);
		});
		$("#Sattime1").html(toKeep);
		toKeep = null;
		removed = null;
	});
</script>
<script>
	var removed;

	$('#SatAtime').change(function() {
		var value = this.value;
		$('#SatAtime1').prepend(removed);
		var toKeep = $('#Sattime1 option').filter(function() {
			return parseInt(this.value, 10) > parseInt(value, 10);
		});
		removed = $('#Sattime1 option').filter(function() {
			return parseInt(this.value, 10) < parseInt(value, 10);
		});
		$('#SatAtime1').html(toKeep);
	});

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">
</script>
<script type="text/javascript">
	var removed;

	$("#Suntime").change(function() {
		var value = this.value;
		$("#time1").prepend(removed);
		var toKeep = $("#Suntime1 option").filter(function() {
			return parseInt(this.value, 10) > parseInt(value, 10);
		});
		removed = $("#Suntime1 option").filter(function() {
			return parseInt(this.value, 10) < parseInt(value, 10);
		});
		$("#Suntime1").html(toKeep);
		toKeep = null;
		removed = null;
	});
</script>
<script>
	var removed;

	$('#SunAtime').change(function() {
		var value = this.value;
		$('#SunAtime1').prepend(removed);
		var toKeep = $('#Suntime1 option').filter(function() {
			return parseInt(this.value, 10) > parseInt(value, 10);
		});
		removed = $('#Suntime1 option').filter(function() {
			return parseInt(this.value, 10) < parseInt(value, 10);
		});
		$('#SunAtime1').html(toKeep);
	});
</script>


</html>
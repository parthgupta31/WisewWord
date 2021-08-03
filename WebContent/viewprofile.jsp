<%@page import="java.util.ArrayList"%>
<%@page import="com.entity.SpecializationBean"%>
<%@page import="com.entity.CounsellorBean"%>
<%@page import="com.entity.FieldBean"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<link href="assets/css/viewprofile.css" rel="stylesheet">
</head>
<body>
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">

<body>
<%FieldBean fb = (FieldBean)session.getAttribute("FieldName"); %>
<%ArrayList<FieldBean> fields = (ArrayList<FieldBean>)session.getAttribute("Field"); %>
<%SpecializationBean sb = (SpecializationBean)session.getAttribute("SpecializationName"); %>
<%CounsellorBean cb =(CounsellorBean)session.getAttribute("loggedInCounsellor"); %>
<%if(cb!=null)
	{%>
	
  <div class="main-content">
  <form action="UpdateCounsellorServlet" method="post">
  <input type="hidden" value="<%=cb.getCounsellor_id() %>" name="c_id">
 <input type="hidden" value="<%=cb.getCounsellor_password() %>" name="password">
    <!-- Top navbar -->
    <nav class="navbar navbar-top navbar-expand-md navbar-dark" id="navbar-main">
      <div class="container-fluid">
        <!-- Brand -->
      <!--    <a class="h4 mb-0 text-white text-uppercase d-none d-lg-inline-block" href="https://www.creative-tim.com/product/argon-dashboard" target="_blank">User profile</a>-->
        <!-- Form -->
        <!-- <form class="navbar-search navbar-search-dark form-inline mr-3 d-none d-md-flex ml-lg-auto">
          <div class="form-group mb-0">
             <div class="input-group input-group-alternative">
              <div class="input-group-prepend">
                 <span class="input-group-text"><i class="fas fa-search"></i></span>
              </div>
               <input class="form-control" placeholder="Search" type="text">
            </div>
          </div>
        </form > -->
        <!-- User -->
       <!--   <ul class="navbar-nav align-items-center d-none d-md-flex">
          <li class="nav-item dropdown">
            <a class="nav-link pr-0" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <div class="media align-items-center">
             <!--     <span class="avatar avatar-sm rounded-circle">
                <!--    <img alt="Image placeholder" src="https://demos.creative-tim.com/argon-dashboard/assets/img/theme/team-4.jpg">
                </span>
                <div class="media-body ml-2 d-none d-lg-block">
                  <span class="mb-0 text-sm  font-weight-bold">Jessica Jones</span>
                </div>
              </div>
            </a>
            <div class="dropdown-menu dropdown-menu-arrow dropdown-menu-right">
              <div class=" dropdown-header noti-title">
                <h6 class="text-overflow m-0">Welcome!</h6>
              </div>
              <a href="../examples/profile.html" class="dropdown-item">
                <i class="ni ni-single-02"></i>
                <span>My profile</span>
              </a>
              <a href="../examples/profile.html" class="dropdown-item">
                <i class="ni ni-settings-gear-65"></i>
                <span>Settings</span>
              </a>
              <a href="../examples/profile.html" class="dropdown-item">
                <i class="ni ni-calendar-grid-58"></i>
                <span>Activity</span>
              </a>
              <a href="../examples/profile.html" class="dropdown-item">
                <i class="ni ni-support-16"></i>
                <span>Support</span>
              </a>
              <div class="dropdown-divider"></div>
              <a href="#!" class="dropdown-item">
                <i class="ni ni-user-run"></i>
                <span>Logout</span>
              </a>
            </div>
          </li>
        </ul>
      </div>-->
    </nav>
    <!-- Header 
    <!-- <div class="header pb-8 pt-5 pt-lg-8 d-flex align-items-center" style="min-height: 600px; background-image: url(https://raw.githack.com/creativetimofficial/argon-dashboard/master/assets/img/theme/profile-cover.jpg); background-size: cover; background-position: center top;">
      <!-- Mask 
    
      <!-- Header container 
     <div class="container-fluid d-flex align-items-center">
        <div class="row">
            <div class="col-lg-7 col-md-10">
            <h1 class="display-2 text-white">Hello Jesse</h1>
            <p class="text-white mt-0 mb-5">This is your profile page. You can see the progress you've made with your work and manage your projects or assigned tasks</p>
            <a href="#!" class="btn btn-info">Edit profile</a>
          </div>  
        </div>
      </div>
    </div> 
    <!-- Page content -->
   
     <div class="pb-8 pt-5 pt-lg-8 d-flex align-items-center" style="min-height: 600px; background-image: url(https://raw.githack.com/creativetimofficial/argon-dashboard/master/assets/img/theme/profile-cover.jpg); background-size: cover; background-position: center top;">
    
      <span class="mask bg-gradient-default opacity-8"></span>
    <div class="container-fluid mt--7">
      <div class="row">
        <div class="col-xl-4 order-xl-2 mb-5 mb-xl-0">
          <div class="card card-profile shadow">
            <div class="row justify-content-center">
              <div class="col-lg-3 order-lg-2">
                <div class="card-profile-image" >
                  <a href="#">
                    <img src="assets/counsellorPic/WhatsApp Image 2021-07-27 at 1.42.49 AM.jpeg" class="rounded-circle" height="190" width="450">
                  </a>
                </div>
              </div>
            </div>
            <div class="card-header text-center border-0 pt-8 pt-md-4 pb-0 pb-md-4">
              <div class="d-flex justify-content-between">
                <a href="#" class="btn btn-sm btn-info mr-4">Connect</a>
                <a href="CounsellorLogOutServlet" class="btn btn-sm btn-default float-right">Logout</a>
              </div>
            </div>
            <form action="/action_page.php">
  <input type="file" id="myFile" name="filename">
  <input type="submit">
</form>
            <div class="card-body pt-0 pt-md-4">
              <div class="row">
                <div class="col">
                  <div class="card-profile-stats d-flex justify-content-center mt-md-5">
                    <!--  <div>
                      <span class="heading">22</span>
                      <span class="description">Pending Cases</span>
                    </div>
                    <div>
                      <span class="heading">10</span>
                      <span class="description">Photos</span>
                    </div>
                    <div>
                      <span class="heading">89</span>
                      <span class="description"></span>
                    </div>-->
                  </div>
                </div>
              </div>
              <div class="text-center">
                <h3 name="counsellor_name">
                  <%=cb.getCounsellor_name() %><span class="font-weight-light"></span>
                </h3>
               <!--   <div class="h5 font-weight-300">
                  <i class="ni location_pin mr-2"></i>Bucharest, Romania
                </div>-->
                <div class="h5 mt-4" name="qualification">
                   <i class="ni business_briefcase-24 mr-2"></i><%=cb.getQualification().equals("0")?"":cb.getQualification()
                   %>
                </div>
               <!--  <div>
                  <i class="ni education_hat mr-2"></i>University of Computer Science
                </div> -->
               
                
               <hr class="my-4">
                
                <p name="about_me"><%=cb.getAbout_me()==null?"":cb.getAbout_me() %></p>
               <!--  <a href="#">Show more</a> -->
              </div>
            </div>
          </div>
        </div>
        
       
        <div class="col-xl-8 order-xl-1">
          <div class="card bg-secondary shadow">
            <div class="card-header bg-white border-0">
              <div class="row align-items-center">
                <div class="col-8">
                  <h3 class="mb-0">My account</h3>
                </div>
                <div class="col-4 text-right">
                 <button type="submit" class="btn btn-sm btn-primary">Update Profile</button>
                </div>
              </div>
            </div>
            <div class="card-body">
              
                <h6 class="heading-small text-muted mb-4">Personal Info</h6>
                <div class="pl-lg-4">
                  <div class="row">
                    <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-username">Name</label>
                        <input name="counsellor_name" type="text" id="input-username" class="form-control form-control-alternative" value="<%=cb.getCounsellor_name() %>">
                      </div>
                    </div>
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label class="form-control-label" for="input-email">Email address</label>
                        <input name="counsellor_email" type="email" id="input-email" class="form-control form-control-alternative" value="<%=cb.getCounsellor_email() %>">
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-first-name">Field</label>
 						<select name="field_id" id="field" class="form-control" class="form-control">
             			 <%--  <option value="<%=fb.getField_id()?%>"><%=fb.getField_name() %></option> --%>
                 <option value="<%=fb.getField_id()%>" <%=fb.getField_id()==(cb.getField_id())?"selected":""%>><%=fb.getField_name() %></option>
			<% for(FieldBean f:fields)
				{%>
					<option value="<%=f.getField_id() %>"><%=f.getField_name()%></option>
			<% 
				}%>
		            			
            			</select>
                      </div>
                    </div>
                    <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-last-name">Specialization</label>
                       <select name="specialization_id" id="specialization" class="form-control" class="form-control">
              			 <option value="<%=sb.getSpecialization_id() %>"><%=sb.getSpecialization_name() %></option>
             
               
           				 </select>
                      </div>
                    </div>
                    
                    <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-last-name">Mobile No.</label>
                        <input name="counsellor_mobile"type="text" id="input-last-name" class="form-control form-control-alternative" value="<%=cb.getCounsellor_mobile() %>" >
                      </div>
                    </div>
                    
                    
                    <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-last-name">Qualification</label>
                        <input name="qualification" type="text" id="input-last-name" class="form-control form-control-alternative" placeholder="Qualification" value="<%=cb.getQualification().equals("0")?"":cb.getQualification() %>" >
                      </div>
                    </div>
                    
                     <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-last-name">Work Experience</label>
                        <input name="work_experience" type="text" id="input-last-name" class="form-control form-control-alternative" placeholder="Work Experience" value="<%=cb.getWork_experience()==null?"":cb.getWork_experience() %>" >
                      </div>
                    </div>
                  </div>
                </div>
                <hr class="my-4">
                <!--   Address -->
                <h6 class="heading-small text-muted mb-4">Contact information</h6>
                <div class="pl-lg-4">
                  <div class="row">
                    <div class="col-md-12">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-address">Address</label>
                        <input name="address" id="input-address" class="form-control form-control-alternative" placeholder="Home Address" value="<%=cb.getAddress()==null?"":cb.getAddress() %>" type="text">
                      </div>
                    </div>
                  </div>
                  <!--  <div class="row">
                    <div class="col-lg-4">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-city">City</label>
                        <input type="text" id="input-city" class="form-control form-control-alternative" placeholder="City" value="New York">
                      </div>
                    </div>
                    <div class="col-lg-4">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-country">Country</label>
                        <input type="text" id="input-country" class="form-control form-control-alternative" placeholder="Country" value="United States">
                      </div>
                    </div>
                    <div class="col-lg-4">
                      <div class="form-group">
                        <label class="form-control-label" for="input-country">Postal code</label>
                        <input type="number" id="input-postal-code" class="form-control form-control-alternative" placeholder="Postal code">
                      </div>
                    </div> 
                  </div>-->
                                  </div>
                <hr class="my-4">
                <!-- Description -->
               
                <h6 class="heading-small text-muted mb-4">About me</h6>
                <div class="pl-lg-4">
                  <div class="form-group focused">
                    <label>About Me</label>
                    <textarea name="about_me" rows="4" class="form-control form-control-alternative" placeholder="Few words about yourself 
                    ...." ><%=cb.getAbout_me()==null?"":cb.getAbout_me() %></textarea>
                  </div>
                </div>
                 <div class="col-12 text-right">
                   <a  class="btn btn-sm btn-primary" type="button" onclick="goBack()">Cancel</a>
                </div>
            </div>
          </div>
          </div>
           
      </div>
    </div>
  </div>
  </form>
  <footer class="footer">
    <div class="row align-items-center justify-content-xl-between">
      <div class="col-xl-6 m-auto text-center">
        <div class="copyright">
          <p>Made with <a href="https://www.creative-tim.com/product/argon-dashboard" target="_blank">Argon Dashboard</a> by Creative Tim</p>
        </div>
      </div>
    </div>
  </footer>
   <% }
 else{
	 response.sendRedirect(request.getContextPath()+"/clogin.jsp");
 }
 %>
</body>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- <script>
	$(document).ready(function(){	
		
		
		$("#field").click(function(){	
		$.ajax({
				 url:"http://localhost:8080/WiseWords/FieldServlet",
				
				success:function(res)
				{
					$("#field").html(res);
				},
				error:function(e)
				{
					
				} 
				
			});
	});
	});
</script> -->
<script>
$(document).ready(function(){
<%-- 	 $.ajax({
			url:"http://localhost:8080/WiseWords/IndexFieldServlet",
			data:{field_id:<%=cb.getSpecialization_id()%>},
			success:function(res)
			{
				$("#specialization").html(res);
			},
			error:function(e)
			{
				
			}
		}); --%>
		$("#field").change(function(){
		var field = $(this).val();
		console.log("field Id:   "+field);
		$.ajax({
			url:"http://localhost:8080/WiseWords/FieldServlet",
			data:{field_id:field},
			success:function(res)
			{
				
				$("#specialization").html(res);
			},
			error:function(e)
			{
				
			}
		});
	});
	});
</script>
</html>
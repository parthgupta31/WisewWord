<%@page import="java.util.ArrayList"%>
<%@page import="com.entity.SpecializationBean"%>
<%@page import="com.entity.UserBean"%>
<%@page import="com.entity.FieldBean"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<link href="assets/css/viewprofile.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
</head>



<body>
<%FieldBean fb = (FieldBean)session.getAttribute("FieldName"); %>
<%ArrayList<FieldBean> fields = (ArrayList<FieldBean>)session.getAttribute("Field"); %>
<%SpecializationBean sb = (SpecializationBean)session.getAttribute("SpecializationName"); %>
<%UserBean ub =(UserBean)session.getAttribute("loggedInUser"); %>
<%System.out.println(ub+"yeh jo chala he vo userprofile ka chala he"); %>
<%if(ub!=null) 
{%>

<div class="col-md-6 offset-3">
  <div class="main-content">
 
 
    <!-- Top navbar -->
    <nav class="navbar navbar-top navbar-expand-md navbar-dark" id="navbar-main">
      <div class="container-fluid">
      </div>
      </nav>
       <form action="UserProfileServlet" method="post">
        <input type="hidden" value="<%=ub.getUser_id() %>" name="u_id">
 <input type="hidden" value="<%=ub.getUser_password() %>" name="user_password">
        <div class="col-xl-8 order-xl-1">
          <div class="card bg-secondary shadow">
            <div class="card-header bg-white border-0">
              <div class="row align-items-center">
                <div class="col-8">
                  <h3 class="mb-0">My account</h3>
                </div>
                <div class="col-4 text-right">
                 <button type="submit" class="btn btn-sm btn-primary">Update Profile</button>
                 <a href="UserLogOutServlet" class="btn btn-sm btn-primary">Logout</a>
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
                        <input name="user_name" type="text" id="input-username" class="form-control form-control-alternative" value="<%=ub.getUser_name() %>">
                      </div>
                    </div>
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label class="form-control-label" for="input-email">Email address</label>
                        <input name="user_email" type="email" id="input-email" class="form-control form-control-alternative" value="<%=ub.getUser_email() %>">
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-first-name">Field</label>
 						<select name="field_id" id="field" class="form-control" class="form-control">
             			 <%--  <option value="<%=fb.getField_id()?%>"><%=fb.getField_name() %></option> --%>
                 <option value="<%=(fb==null)?"0":ub.getField_id()%>" <%=(fb==null)?"":(fb.getField_id()==(ub.getField_id())?"selected":"")%>><%=(fb==null)?"":fb.getField_name() %></option>
			<%
			if( fields!=null){
			for(FieldBean f:fields)
				{%>
					<option value="<%=(f==null)?"0":f.getField_id() %>"><%=(f==null)?"0":f.getField_name()%></option>
			<% 
				}}%>
		            			
            			</select>
                      </div>
                    </div>
                    <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-last-name">AreaOfConcern</label>
                       <select name="specialization_id" id="specialization" class="form-control" class="form-control">
              			 <option value="<%=(sb==null)?"0":sb.getSpecialization_id()%>"><%=(sb==null)?"":sb.getSpecialization_name() %></option>
             
               
           				 </select>
                      </div>
                    </div>
                    
                    <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-last-name">Mobile No.</label>
                        <input name="user_mobile"type="text" id="input-last-name" class="form-control form-control-alternative" value="<%=ub.getUser_mobile() %>" >
                      </div>
                    </div>
                    
                    
                    <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-last-name">Qualification</label>
                        <input name="user_qualification" type="text" id="input-last-name" class="form-control form-control-alternative" placeholder="Qualification" value="<%=ub.getUser_qualification()==null?"":ub.getUser_qualification() %>" >
                      </div>
                    </div>
                    
                     <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-last-name">Age</label>
                        <input name="user_age" type="text" id="input-last-name" class="form-control form-control-alternative" placeholder="Age" value="<%=ub.getUser_age()==0?"":ub.getUser_age() %>" >
                      </div>
                    </div>
                  </div>
                </div>
                <hr class="my-4">
              
                <hr class="my-4">
                <!-- Description -->
               
                <h6 class="heading-small text-muted mb-4">Description</h6>
                <div class="pl-lg-4">
                  <div class="form-group focused">
                    <label>Description</label>
                    <textarea name="description" rows="4" class="form-control form-control-alternative" placeholder="Few words about yourself 
                    ...." ><%=ub.getDescription()==null?"":ub.getDescription() %></textarea>
                    
                          
                  </div>
                   <div class="col-12 text-right">
                   <a  class="btn btn-sm btn-primary" type="button" onclick="goBack()">Cancel</a>
                </div>
             </div>
            </div>
          </div>
          </div>
    
         </form>   
      </div>
   
    </div>
  
 
  
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
	 response.sendRedirect(request.getContextPath()+"/login.jsp");
 }
 %>
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
			data:{field_id:<%=ub.getSpecialization_id()%>},
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
<script>
function goBack() {
	  window.history.back();
	}

</script>
</html>
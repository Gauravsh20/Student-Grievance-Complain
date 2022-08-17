<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="Style/login.css">
  <script src="js/jquery-3.5.1.js"></script>
<script src="js/bootstrap.js"></script>
<title>Login Page</title>
</head>
<body>
<jsp:include page="msg.jsp"/>
<script>
$(function(){
	$("#category").blur(function(){
		var category=$("#category").val();
		if(category=="Student")
		{
			$("#login").click(function()
				{
					var userid=$("#userid").val();
					var pass=$("#pass").val();
					if(pass!=="" && userid!=="")
					{
						$.post("loginuser",
								{"userid":userid,"pass":pass,},
								function(output){
									window.location ='studentFirst.jsp'
									$(".msg").html("success");
									if(output.trim()=="success"){
								        window.location ='studentFirst.jsp'
								     
									}
								});
					}
					else{
						alert("Not Categary..!!");
						
						$(".msg").html("Warning: This is a warning alert!");
						 $('.alert').addClass("show");
					        $('.alert').removeClass("hide");
					        $('.alert').addClass("showAlert");
					        setTimeout(function(){
					          $('.alert').removeClass("show");
					          $('.alert').addClass("hide");
					        },5000);
					        $('.close-btn').click(function(){
					            $('.alert').removeClass("show");
					            $('.alert').addClass("hide");
					          });
					}
					//$.post(url,data,outputfunction);
				
				});
			
		}
		
		//ADMIN LOGIN
		else if(category=="Admin")
		{
			alert("Admin match..!!");
			$("#login").click(function(){
					var userid=$("#userid").val();
					var pass=$("#pass").val();
					if(pass!=="" && userid!==""){
						$.post("Adminlog",
								{"userid":userid,"pass":pass,},
								function(output){
									window.location ='Adminhome.jsp'
									$(".msg").html("success");
									if(output.trim()=="success")
									{
								        window.location ='Adminhome.jsp'
								     
									}
										});
					}
					else{$(".msg").html("Warning: This is a warning alert!");
						 $('.alert').addClass("show");
					        $('.alert').removeClass("hide");
					        $('.alert').addClass("showAlert");
					        setTimeout(function(){
					          $('.alert').removeClass("show");
					          $('.alert').addClass("hide");
					        },5000);
					        $('.close-btn').click(function(){
					            $('.alert').removeClass("show");
					            $('.alert').addClass("hide");
					          });
					}
					//$.post(url,data,outputfunction);
				
				});
			
			//PRINCIPAL LOGIN
		}
		else if(category=="Principal"){
			alert("Princpal match..!!");
			$("#login").click(function(){
				alert("Princpal Gaurav match..!!");
					var userid=$("#userid").val();
					var pass=$("#pass").val();
					if(pass!=="" && userid!==""){
						$.post("Prnpllog",
								{"userid":userid,"pass":pass,},
								function(output){
									window.location ='Principalhome.jsp'
									$(".msg").html("success");
									if(output.trim()=="success"){
										window.location ='Principalhome.jsp'
								     
									}
								});
					}
					else{$(".msg").html("Warning: This is a warning alert!");
						 $('.alert').addClass("show");
					        $('.alert').removeClass("hide");
					        $('.alert').addClass("showAlert");
					        setTimeout(function(){
					          $('.alert').removeClass("show");
					          $('.alert').addClass("hide");
					        },5000);
					        $('.close-btn').click(function(){
					            $('.alert').removeClass("show");
					            $('.alert').addClass("hide");
					          });
					}
					//$.post(url,data,outputfunction);
				
				});
		}
		//GRIVEANCE LOGIN
		else if (category=="Grievnce")
		{
			$("#login").click(function(){
				alert("Griveance Gaurav match..!!");
					var userid=$("#userid").val();
					var pass=$("#pass").val();
					if(pass!=="" && userid!==""){
						$.post("Grvnml",
								{"userid":userid,"pass":pass,},
								function(output){
									window.location ='Griveancehome.jsp'
									$(".msg").html("success");
									if(output.trim()=="success"){
										window.location ='Griveancehome.jsp'
								     
									}
								});
					}
					else{$(".msg").html("Warning: This is a warning alert!");
						 $('.alert').addClass("show");
					        $('.alert').removeClass("hide");
					        $('.alert').addClass("showAlert");
					        setTimeout(function(){
					          $('.alert').removeClass("show");
					          $('.alert').addClass("hide");
					        },5000);
					        $('.close-btn').click(function(){
					            $('.alert').removeClass("show");
					            $('.alert').addClass("hide");
					          });
					}
					//$.post(url,data,outputfunction);
				
				});
			
			
		}
		else
			{
			
			alert("Not match..!!");
			}

	});
});
</script>
<div class="jumbotron">
	<h1>Student Grievance System</h1>
	<h5>LOGIN PAGE</h5>
	<a href="Registeration.jsp" class="btn" id="btn1">Registration</a> 
</div>	

<div class="container">
	<div class=row>
		<div class="col-sm-5 mx-auto">
				<div class="form-group">
				<label>User ID/Email ID</label>
				<input type="email" name="userid" id="userid" class="form-control" placeholder="User ID" required>
				</div>
				<div class="form-group">
				<label>Select Category</label>
				<select name="category" class="form-control" id="category" required>
					<option value="">--Please choose an option--</option>
  					<option value="Admin">Admin</option>
  					<option value="Student">Student</option>
 					<option value="Grievnce">Grievnce Member</option>
 					<option value="Principal">Principal</option>
				</select>
				</div>
				<div class="form-group">
				<label>Password</label>
				<input type="password" name="pass" id="pass"  class="form-control" placeholder="Password" required>
				</div>
				<input type="button" value ="Submit" name="login" id="login" class="btn">
		</div>
	</div>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <%@page isELIgnored = "false"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%@ include file = "component/css.jsp" %>

<style type="text/css">

:root{
    --bg-color:#1f242d;
    --second-bg-color:#323946;
    --text-color:#fff;
    --main-color:#0ef;
}	


        body {
            background:  linear-gradient(90deg in oklab, blue, pink);
        }
        
        .paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
	background-color: transparent;
	}
	.form-label {
    color: black; /* Change this to the desired color */
}
.fs-4.text-center {
    color: black; /* Change this to the desired color */ 
}
.btn:hover{
  box-shadow: none;
    transform: scale(1.05);
box-shadow: 0 0 10px var(--main-color);
}
	
	.card { 
	margin-right: auto; 
	margin-left: auto; 
	
	box-shadow: 0 15px 25px rgba(129, 124, 124, 0.2); 
	
	border-radius: 5px; 
	backdrop-filter: blur(14px); 
	background-color: rgba(255, 255, 255, 0.2); 
	padding: 10px; 
	 
} 

.card img { 
	height: 60%; 
}
.new:hover {
  box-shadow: none;
  transform: scale(1.15);
  box-shadow: 0 0 10px var(--main-color);
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}	
	.form-control::placeholder {
  color: black; 
}
	
    </style>

</head>
<body>

<%@ include file = "component/navbar.jsp" %>


<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">User Register</p>
						
		  				<c:if test="${not empty sucMsg }">
							<p class="text-center text-success fs-3">${sucMsg}</p>
							<c:remove var="sucMsg" scope="session" />
						</c:if>

						<c:if test="${not empty errorMsg }">
							<p class="text-center text-danger fs-5">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						
						<form action="user_register" method="post">
							<div class="mb-3">
							
							<div class="mb-3">
								<label class="form-label">Full Name</label> <input required style="background: transparent;"
									name="name" type="text" class="form-control" placeholder="Full Name">
							</div>
							
								<label class="form-label">Email address</label> <input required style="background: transparent;"
									name="email" type="email" class="form-control" placeholder="Email address">
							</div>
							<div class="mb-3">
								<label class="form-label">Password</label> <input required style="background: transparent;"
									name="password" type="password" class="form-control" placeholder="Password">
							</div>
							<button type="submit" class="btn bg-success text-white col-md-12">Register</button>
						
							<br> After Created account? <a href="user_login.jsp"
							class="text-decoration-none new" style="color: black;"> Login</a>
						
						</form>
					
					</div>
				</div>
			</div>
		</div>
	</div>









</body>
</html>
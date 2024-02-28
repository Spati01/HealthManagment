<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <%@page isELIgnored = "false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin login page</title>
<%@ include file = "component/css.jsp" %>

<style type="text/css">
        body {
             background: linear-gradient(90deg in oklab, #8D6899, #EFD5F8);
        }
        
        .paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
	background-color: transparent;
	height: 400px;
	width: 400px;
	}
	.form-label {
    color: black;
  
}
.fs-4.text-center {
    color: purple;
    margin-top: 30px;
}

	.btn:hover{
  box-shadow: none;
    transform: scale(1.08);
box-shadow: 0 0 10px var(--main-color);
}
	
	:root{
    --bg-color:#1f242d;
    --second-bg-color:#323946;
    --text-color:#fff;
    --main-color:#0ef;
}	
	
.background { 
	
	display: flex;
	align-items: center;
	justify-content: center;
	

.card { 
	margin-right: auto; 
	margin-left: auto; 
	
	box-shadow: 0 15px 25px rgba(129, 124, 124, 0.2); 
	
	border-radius: 5px; 
	backdrop-filter: blur(14px); 
	background-color: rgba(255, 255, 255, 0.2); 
	 
	
} 

.card img { 
	height: 60%; 
}
	.form-control::placeholder {
  color: black; 
}
    </style>

</head>
<body>
 <%@ include file = "component/navbar.jsp"%>
 
 
<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4 background">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">Admin login</p>
						
					<c:if test="${not empty succMsg }">
							<p class="text-center text-success fs-3">${succMsg}</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<c:if test="${not empty errorMsg }">
							<p class="text-center text-danger fs-5">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						
						<form action="adminLogin" method="post">
							<div class="mb-3" style="margin-top: 30px;">
								<label class="form-label" >Email address</label> <input required
							style="background: transparent;" name="email" type="email" class="form-control" placeholder="Email address">
							</div>
							<div class="mb-3" style="margin-top: 30px;">
								<label class="form-label">Password</label> <input required style="background: transparent;"
									name="password" type="password" class="form-control" placeholder="Password">
							</div>
							<button type="submit" class="btn bg-success text-white col-md-12">Login</button>
						</form>
					
					</div>
				</div>
			</div>
		</div>
	</div>
 
 
 
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <%@page isELIgnored = "false"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Login Page</title>
<%@ include file = "component/css.jsp" %>

<style type="text/css">
        body {
         background:  linear-gradient(90deg in oklab, red,#B17DC2);
    }
        
        .paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
	background-color: transparent;
	}
	.form-label {
    color: #F4FAF4; 
}
.fs-4.text-center {
    color: #97DE8F; 
}
.paint-card .card-body  {
    color:#BFC2BF; 
}
	
:root{
    --bg-color:#1f242d;
    --second-bg-color:#323946;
    --text-color:#fff;
    --main-color:#0ef;
}

.new:hover {
  box-shadow: none;
  transform: scale(1.15);
  box-shadow: 0 0 10px var(--main-color);
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}
.btn:hover{
  box-shadow: none;
    transform: scale(1.05);
box-shadow: 0 0 10px var(--main-color);
}
	
	:root{
    --bg-color:#1f242d;
    --second-bg-color:#323946;
    --text-color:#fff;
    --main-color:#0ef;
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
						<p class="fs-4 text-center">User Login</p>
						
						<c:if test="${not empty succMsg }">
							<p class="text-center text-success fs-3" style="color: #ACDDE5 !important">${succMsg}</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<c:if test="${not empty errorMsg }">
							<p class="text-center text-danger fs-5">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						
						<form action="userLogin" method="post">
							<div class="mb-3">
								<label class="form-label">Email address</label> <input required style="background: transparent;"
									name="email" type="email" class="form-control" placeholder="Email address">
							</div>
							<div class="mb-3">
								<label class="form-label">Password</label> <input required style="background: transparent;"
									name="password" type="password" class="form-control" placeholder="Password">
							</div>
							<button type="submit" class="btn bg-success text-white col-md-12">Login</button>
						
						<br> Don't have an account? <a href="signup.jsp"
							class="text-decoration-none new" style="color: white;"> create one</a>
						
						</form>
					
					</div>
				</div>
			</div>
		</div>
	</div>





</body>
</html>
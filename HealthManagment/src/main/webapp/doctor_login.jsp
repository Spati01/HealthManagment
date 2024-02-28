<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctor login Page</title>
<%@ include file = "component/css.jsp" %>

<style type="text/css">
        body {
           background: linear-gradient(90deg in oklab, purple, #C4B5C9);
        }
        
        .paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
	background-color: transparent;
	}
	.form-label {
    color: black; /* Change this to the desired color */
}
.fs-4.text-center {
    color: purple; /* Change this to the desired color */
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

 .text-success{
    color: #F0E2F1!important;
    }
    .text-danger{
    color: red!important;
    }

	.background { 
	
	padding: 10px; 
	display: flex;
	align-items: center;
	justify-content: center;
} 

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
<body >

 <%@ include file = "component/navbar.jsp" %>

<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">Doctor login</p>
						
		<c:if test="${not empty succMsg }">
							<p class="text-center text-success fs-3">${succMsg}</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<c:if test="${not empty errorMsg }">
							<p class="text-center text-danger fs-5">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						
						<form action="doctorLogin" method="post">
							<div class="mb-3">
								<label class="form-label" >Email address</label> <input required  style="background: transparent;"
									name="email" type="email" class="form-control" placeholder="Email address">
							</div>
							<div class="mb-3">
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
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
 
<style>
   
    .navbar-nav .nav-link {
        color: black; /* Default color */
        transition: color 0.3s; /* Smooth transition */
        position: relative;
        
    }

    /* Navbar links hover effect */
    .navbar-nav .nav-link:hover {
        color: blue; /* Color on hover */
    }

    /* Zooming effect */
    .navbar-nav .nav-link::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0, 0, 0, 0.2); /* Background color of the zooming effect */
        z-index: -1;
        transition: transform 0.3s;
        transform-origin: center;
        transform: scale(0);
    }

    .navbar-nav .nav-link:hover::before {
        transform: scale(1);
    }

    /* Navbar dropdown links */
    .dropdown-menu .dropdown-item {
        color: black; /* Default color */
        transition: color 0.3s; /* Smooth transition */
    }

    .dropdown-menu .dropdown-item:hover {
        color: blue; 
    }

  
    .navbar {
        background-color: transparent; /* Default background color */
        transition: background-color 0.3s; /* Smooth transition */
    }

    /* Navbar background color on hover */
    .navbar:hover {
        background-color: #f8f9fa;
       
          
    }
    
    .btn:hover{
  box-shadow: none;
    transform: scale(1.05);
box-shadow: 0 0 10px var(--main-color);
}
</style>

 
 
<nav class="navbar navbar-expand-lg fixed-top navbar-scroll " style="background: transparent;">  
		<a class="navbar-brand" href="index.jsp" style="color: black;"><i
			class="fas fa-clinic-medical"></i> MEDI HOME</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">

				<c:if test="${empty userObj }">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="admin_login.jsp" style="color: black;font-size: 18px; font-weight: bold;"><i
							class="fas fa-sign-in-alt"></i> ADMIN</a></li>

					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="doctor_login.jsp" style="color: black; font-size: 18px; font-weight: bold;" >DOCTOR</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="user_appointment.jsp" style="color: black;font-size: 18px; font-weight: bold;">APPOINTMENT</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="user_login.jsp" style="color: black;font-size: 18px; font-weight: bold;">USER</a></li>

				</c:if>




				<c:if test="${not empty userObj }">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="user_appointment.jsp" style="color: black;font-size: 16px; font-weight: bold;">APPOINTMENT</a></li>

					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="view_appointment.jsp" style="color: black;font-size: 16px; font-weight: bold;">VIEW APPOINTMENT</a></li>

					<div class="dropdown">
						<button class="btn btn-success dropdown-toggle" type="button"
							id="dropdownMenuButton1" data-bs-toggle="dropdown"
							aria-expanded="false">
							<i class="fa-solid fa-circle-user"></i> ${userObj.fullname }
						</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
							<li><a class="dropdown-item btn" href="change_password.jsp" style="color: black;">Change Password</a></li>
							<li><a class="dropdown-item btn" href="userLogout">Logout</a></li>
							
						</ul>
					</div>


					

				</c:if>





			</ul>
		</div>
	</div>
</nav>
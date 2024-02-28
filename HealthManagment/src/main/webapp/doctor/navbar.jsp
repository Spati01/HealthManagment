
 
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
   .dropdown-item:hover { 
    transform: scale(1.05); 
    }
</style>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<nav class="navbar navbar-expand-lg navbar-dark " style="background-color: transparent;">
	<div class="container-fluid">
		<a class="navbar-brand" href="index.jsp"  style="color: black;"><i
			class="fas fa-clinic-medical"></i> Medi Home</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link" href="index.jsp"  style="color: black;">HOME</a></li>
				<li class="nav-item"><a class="nav-link" href="patient.jsp"  style="color: black;">PATIENT</a></li>
			</ul>

			<form class="d-flex">
				<div class="dropdown">
					<button class="btn btn-light dropdown-toggle" type="button"
						id="dropdownMenuButton1" data-bs-toggle="dropdown"
						aria-expanded="false">
						<i class="fas fa-user-circle"></i> ${doctObj.fullName }
					</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
						<li><a class="dropdown-item" href="edit_profile.jsp">Edit
								Profile</a></li>
						<li><a class="dropdown-item" href="../doctorLogout"  style="color: black;">Logout</a></li>
					</ul>
				</div>
			</form>
		</div>
	</div>
</nav>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index Page</title>
<%@ include file = "component/css.jsp" %>
  
  <style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
	}
	.bg-transparent {
  background-color: transparent;
}

 .blur-effect {
        backdrop-filter: blur(1px);
        background-color: rgba(255, 255, 255, 0.4);
        transition: backdrop-filter 0.3s ease; 
    }

    .blur-effect:hover {
        backdrop-filter: blur(1px); 
    }

    .card {
        transition: transform 0.3s ease; 
    }

    .card:hover {
        transform: scale(1.03); 
    }
</style>
  
</head>


<body background="img/background.png" style="margin-top: 0.5px;">
 <%@ include file = "component/navbar.jsp" %>
 


 <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="img/k.jpg" class="d-block w-100" alt="..." height= 650px>
    </div>
    <div class="carousel-item">
      <img src="img/b.jpg" class="d-block w-100" alt="..." height= 650px>
    </div>
    <div class="carousel-item">
      <img src="img/k.jpg" class="d-block w-100" alt="..." height= 650px>
    </div>
    <div class="carousel-item">
      <img src="img/v.jpg" class="d-block w-100" alt="..." height= 650px>
    </div>
    <div class="carousel-item">
      <img src="img/a.jpg" class="d-block w-100" alt="..." height= 650px>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
 <hr>
 <div class="container p-3">
		<p class="text-center fs-2 ">Key Features of our Hospital</p>

		<div class="row">
			<div class="col-md-8 p-5">
				<div class="row">
					<div class="col-md-6">
						<div class="card paint-card  blur-effect">
							<div class="card-body">
								<p class="fs-5">100% Safety</p>
								<p>In our hospital, safety is our top priority.
								 Every aspect of our operations is meticulously designed and executed with the utmost focus on ensuring the well-being of our patients, staff, and visitors.
								 From rigorous sanitation protocols to state-of-the-art equipment maintenance.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="card paint-card  blur-effect">
							<div class="card-body">
								<p class="fs-5">Clean Environment</p>
								<p>
In our hospital, maintaining a clean environment is paramount to promoting healing and preventing the spread of infections. Our facilities undergo regular, thorough cleaning using hospital-grade disinfectants and protocols. Every surface, from patient rooms to waiting areas. </p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card  blur-effect">
							<div class="card-body">
								<p class="fs-5">Friendly Doctors</p>
								<p>Our staff undergoes continuous training to adhere to best practices in infection control, emergency response, and patient care. We employ advanced technologies for patient monitoring and security measures throughout our facilities. Rest assured, when you entrust us with your health, you're in the safest hands possible.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card  blur-effect">
							<div class="card-body">
								<p class="fs-5">Medical Research</p>
								<p >
Medical research is the cornerstone of our hospital's commitment to advancing healthcare and improving patient outcomes. Our institution actively participates in groundbreaking research initiatives aimed at discovering new treatments, therapies, and medical technologies. We collaborate with renowned researchers, academic institutions.</p>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-4 py-5" align="center">
				<img alt="" src="img/polo.png" height="500px">
			</div>

		</div>
	</div>
 <hr>
 
 <div class="container p-2">
		<p class="text-center fs-2 ">Our Team</p>
		
		<div class="row">
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doc1.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">DR.Poulami Mitra</p>
						<p class="fs-7">(CEO & Chairman)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doc4.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Dr.Arup Maity</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doc3.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Dr.Subhadip Pati</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doc2.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Dr.Susmita Das</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>

		</div>

	</div>
	<%@ include file = "component/footer.jsp" %>
</body>
</html>
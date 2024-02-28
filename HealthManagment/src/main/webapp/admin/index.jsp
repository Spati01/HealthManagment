<%@page import="com.DB.DBConnect"%>
<%@page import="com.dao.DoctorDao"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../component/css.jsp"%>

<style type="text/css">
 body {
        background: linear-gradient(to right,#f4c0a8,#02131d);
    }
.dashboard-heading {
    color: #e1c8da; 
}

.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}

.btn:hover{
  box-shadow: none;
    transform: scale(1.15);
box-shadow: 0 0 10px var(--main-color);
}
	
	:root{
    --bg-color:#1f242d;
    --second-bg-color:#323946;
    --text-color:#fff;
    --main-color:#0ef;
}	
.custom-modal-bg {
        background: rgba(255, 255, 255, 0.3);
        backdrop-filter: blur(1px); 
    }
    .blur-effect {
    backdrop-filter: blur(10px);
    background-color: rgba(255, 255, 255, 0.10); /* Adjust the transparency as needed */
}
	#place::placeholder {
  color: #F1EAEB;
}
	 .blur-effect:hover {
        backdrop-filter: blur(1px); 
    }

    .card {
        transition: transform 0.3s ease; 
    }

    .card:hover {
        transform: scale(1.05); 
    }
    .text-success{
    color: #F0E2F1!important;
    }
    .text-danger{
    color: red!important;
    }
    
</style>



</head>
<body>
<%@include file="navbar.jsp"%>


	<c:if test="${ empty adminObj }">
		<c:redirect url="../admin_login.jsp"></c:redirect>
	</c:if>

	<div class="container p-5">
		<p class="text-center fs-3 dashboard-heading" style="color: black">Admin Dashboard</p>
		<c:if test="${not empty errorMsg}">
			<p class="fs-3 text-center text-danger" >${errorMsg}</p>
			<c:remove var="errorMsg" scope="session" />
		</c:if>
		<c:if test="${not empty succMsg}">
			<div class="fs-3 text-center text-success" role="alert">${succMsg}</div>
			<c:remove var="succMsg" scope="session" />
		</c:if>
		<%
		DoctorDao dao = new DoctorDao(DBConnect.getCon());
		%>
		<div class="row">
			<div class="col-md-4">
				<div class="card paint-card  blur-effect">
					<div class="card-body text-center text-success">
						<i class="fas fa-user-md fa-3x" style="color: black;"></i><br>
						<p class="fs-4 text-center" style="color: black;">
							Doctor <br><%=dao.countDoctor()%>
						</p>
					</div>
				</div>
			</div>



			<div class="col-md-4">
				<div class="card paint-card  blur-effect">
					<div class="card-body text-center text-success">
						<i class="fas fa-user-circle fa-3x" style="color: black;"></i><br>
						<p class="fs-4 text-center" style="color: black;">
							User <br><%=dao.countUSer()%>
						</p>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card paint-card  blur-effect">
					<div class="card-body text-center text-success">
						<i class="far fa-calendar-check fa-3x" style="color: black;"></i><br>
						<p class="fs-4 text-center" style="color: black;">
							Total Appointment <br><%=dao.countAppointment()%>
						</p>
					</div>
				</div>
			</div>

			<div class="col-md-4 mt-2">

				<div class="card paint-card  blur-effect" data-bs-toggle="modal"
					data-bs-target="#exampleModal">
					<div class="card-body text-center text-success">
						<i class="far fa-calendar-check fa-3x" style="color: black;"></i><br>
						<p class="fs-4 text-center" style="color: black;">
							Specialist <br><%=dao.countSpecialist()%>
						</p>
					</div>
				</div>

			</div>

		</div>
	</div>
	
<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-content custom-modal-bg">
				<div class="modal-header text-center">
					<h5 class="modal-title" id="exampleModalLabel">Specialist</h5>
					<button type="button" class="btn-close btn" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form action="../addSpecialist" method="post">

						<div class="form-group">
							<label style="font-size: 15px; color: #F5F1F3" >Enter Specialist Name</label> <input type="text"
								name="specName" class="form-control" placeholder="Enter Specialist Name" id="place" style="background: transparent; color: #F1EAEB">
						</div>
						<div class="text-center mt-3">
							<button type="submit" class="btn btn-primary">Add</button>
						</div>

					</form>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>

				</div>
			</div>
		</div>
	</div>

</body>
</html>
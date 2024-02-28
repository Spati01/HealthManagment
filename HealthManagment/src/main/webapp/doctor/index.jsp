<%@page import="com.DB.DBConnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Doctor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <%@page isELIgnored = "false"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file = "../component/css.jsp" %>

<style type="text/css">
 body {
        background: linear-gradient(to right,#f4c0a8,#A56190);
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

<c:if test="${empty doctObj }">
		<c:redirect url="../doctor_login.jsp"></c:redirect>
	</c:if>


	<%@include file="navbar.jsp"%>

	<p class="text-center fs-3">Doctor Dashboard</p>

	<%
	Doctor d = (Doctor) session.getAttribute("doctObj");
	DoctorDao dao = new DoctorDao(DBConnect.getCon());
	%>
	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-2">
				<div class="card paint-card blur-effect">
					<div class="card-body text-center text-success">
						<i class="fas fa-user-md fa-3x" style="color: black;"></i><br>
						<p class="fs-4 text-center" style="color: black;">
							Doctor <br><%=dao.countDoctor()%>
						</p>
					</div>
				</div>
			</div>


			<div class="col-md-4">
				<div class="card paint-card blur-effect">
					<div class="card-body text-center text-success">
						<i class="far fa-calendar-check fa-3x" style="color: black;"></i><br>
						<p class="fs-4 text-center" style="color: black;">
							Total Appointment <br>
							<%=dao.countAppointmentByDocotrId(d.getId())%>
						</p>
					</div>
				</div>
			</div>

		</div>
	</div>
</body>
</html>
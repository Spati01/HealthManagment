<%@page import="com.entity.Specalist"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.dao.SpecialistDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
	 background-color: transparent !important;
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
.card-body.submit-button{
  display: flex;
  flex-direction: column;
  align-items: center;
}

	.submit-button{
	
    padding: 12px 32px;
    background: var(--main-color);
    border: none;
    outline: none;
    border-radius: 6px;
    box-shadow: 0 0 10px var(--main-color);
    font-size: 12px;
    color: #333;
    letter-spacing: 1px;
    font-weight: 600;
    cursor: pointer;
    margin-top: 20px;

}
:root{
    --bg-color:#1f242d;
    --second-bg-color:#323946;
    --text-color:#fff;
    --main-color:#0ef;
}

.submit-button:hover{
    box-shadow: none;
    transform: scale(1.05);
}
.btn:hover{
  box-shadow: none;
    transform: scale(1.15);
box-shadow: 0 0 10px var(--main-color);
}
</style>
<%@include file="../component/css.jsp"%>
</head>
<body style="background: linear-gradient(to right, #FDFF8B, #FFFFE1);">
	<c:if test="${empty doctObj }">
		<c:redirect url="../doctor_login.jsp"></c:redirect>
	</c:if>


	<%@include file="navbar.jsp"%>

	<div class="container p-4">
		<div class="row">
			<div class="col-md-4">
				<div class="card paint-card">
					<p class="text-center fs-3">Change Password</p>
					<c:if test="${not empty succMsg }">
						<p class="text-center text-success fs-3">${succMsg}</p>
						<c:remove var="succMsg" scope="session" />
					</c:if>

					<c:if test="${not empty errorMsg }">
						<p class="text-center text-danger fs-5">${errorMsg}</p>
						<c:remove var="errorMsg" scope="session" />
					</c:if>
					<div class="card-body">
						<form action="../doctChangePassword" method="post">
							<div class="mb-3">
								<label>Enter New Password</label> <input type="text" style="background: transparent;"
									name="newPassword" class="form-control" required>
							</div>

							<div class="mb-3">
								<label>Enter Old Password</label> <input type="text" style="background: transparent;"
									name="oldPassword" class="form-control" required>
							</div>
							<input type="hidden" value="${doctObj.id }" name="uid">
							<button class="btn btn-success col-md-12">Change
								Password</button>
						</form>
					</div>
				</div>
			</div>

			<div class="col-md-5 offset-md-2">
				<div class="card paint-card">
					<p class="text-center fs-3">Edit Profile</p>
					<c:if test="${not empty succMsgd }">
						<p class="text-center text-success fs-3">${succMsgd}</p>
						<c:remove var="succMsgd" scope="session" />
					</c:if>

					<c:if test="${not empty errorMsgd }">
						<p class="text-center text-danger fs-5">${errorMsgd}</p>
						<c:remove var="errorMsgd" scope="session" />
					</c:if>
					<div class="card-body">
						<form action="../doctorUpdateProfile" method="post">
							<div class="mb-3">
								<label class="form-label">Full Name</label> <input type="text" style="background: transparent;"
									required name="fullname" class="form-control"
									value="${doctObj.fullName }">
							</div>

							<div class="mb-3">
								<label class="form-label">DOB</label> <input type="date" style="background: transparent;"
									required name="dob" class="form-control"
									value="${doctObj.dob }">
							</div>

							<div class="mb-3">
								<label class="form-label">Qualification</label> <input required style="background: transparent;"
									name="qualification" type="text" class="form-control"
									value="${doctObj.qualification }">
							</div>
							<div class="mb-3">
								<label class="form-label">Specialist</label> <select name="spec" style="background: transparent;"
									required class="form-control">
									<option>${doctObj.specialist }</option>

									<%
									SpecialistDao dao = new SpecialistDao(DBConnect.getCon());
									List<Specalist> list = dao.getAllSpecialist();
									for (Specalist s : list) {
									%>
									<option><%=s.getSpecialistName()%></option>
									<%
									}
									%>


								</select>
							</div>

							<div class="mb-3">
								<label class="form-label">Email</label> <input type="text" style="background: transparent;"
									readonly required name="email" class="form-control"
									value="${doctObj.email }">
							</div>

							<div class="mb-3">
								<label class="form-label">Mob No</label> <input type="text" style="background: transparent;"
									required name="mobno" class="form-control"
									value="${doctObj.mobNo }">
							</div>

							<input type="hidden" name="id" value="${doctObj.id }">

							<button type="submit" class="btn btn-primary d-block mx-auto submit-button">Update</button>
						</form>

					</div>
				</div>
			</div>


		</div>
	</div>


</body>
</html>
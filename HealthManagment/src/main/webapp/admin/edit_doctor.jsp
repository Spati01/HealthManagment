<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Specalist"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.dao.SpecialistDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="../component/css.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}

 body {
  background: linear-gradient(90deg in oklab, blue, red);
}
           
              .paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
	background-color: transparent;
	 padding-top: 10px;
  padding-right: 20px;
  padding-bottom: 10px;
  padding-left: 20px;
    
	}
	
	.val{
	
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
	background-color: transparent;
	}
	:root{
    --bg-color:#1f242d;
    --second-bg-color:#323946;
    --text-color:#fff;
    --main-color:#0ef;
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

.submit-button:hover{
    box-shadow: none;
    transform: scale(1.05);
}
.btn:hover{
  box-shadow: none;
    transform: scale(1.15);
box-shadow: 0 0 10px var(--main-color);
}
	#place::placeholder {
  color: #012028;
}
	
</style>



</head>
<body>
	<%@include file="navbar.jsp"%>
	<div class="container-fluid p-3">
		<div class="row">

			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Edit Doctor Details</p>
						<c:if test="${not empty errorMsg}">
							<p class="fs-3 text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<c:if test="${not empty succMsg}">
							<div class="fs-3 text-center text-success" role="alert">${succMsg}</div>
							<c:remove var="succMsg" scope="session" />
						</c:if>
						
						<%
						int id = Integer.parseInt(request.getParameter("id"));
						DoctorDao dao2 = new DoctorDao(DBConnect.getCon());
						Doctor d = dao2.getDoctorById(id);%>
						
						
						
						
						
						<form action="../updateDoctor" method="post">
							<div class="mb-3">
								<label class="form-label">Full Name</label> <input type="text"
									required name="fullname" id="place" class="form-control" placeholder="Full Name"  value="<%=d.getFullName() %>"  style="background: transparent; color: #012028 ">
							</div>

							<div class="mb-3">
								<label class="form-label">DOB</label> <input type="date"
									required name="dob" class="form-control" value="<%=d.getDob() %>"   style="background: transparent; color: #F1EAEB">
							</div>

							<div class="mb-3">
								<label class="form-label">Qualification</label> <input required
									name="qualification" type="text" id="place" class="form-control" placeholder="Qualification" value="<%=d.getQualification()%>"  style="background: transparent; color: #012028">
							</div>
							<div class="mb-3">
								<label class="form-label">Specialist</label> <select name="spec"
									required class="form-control"  style="background-color: transparent; color: black;">
									  <option style="background-color: rgba(255, 255, 255, 0.5); color: black;"><%=d.getSpecialist()%></option>

									<%
									SpecialistDao dao = new SpecialistDao(DBConnect.getCon());
									List<Specalist> list = dao.getAllSpecialist();
									for (Specalist s : list) {
									%>
								 <option style="background-color: rgba(255, 255, 255, 0.5); color: black;"><%=s.getSpecialistName()%></option>
									<%
									}
									%>


								</select>
							</div>

							<div class="mb-3">
								<label class="form-label">Email</label> <input type="text"
									required name="email" class="form-control" id="place" value="<%=d.getEmail() %>"  placeholder="Email" style="background: transparent; color: #012028">
							</div>

							<div class="mb-3">
								<label class="form-label">Mobile Number</label> <input type="text"
									required name="mobno" class="form-control" id="place" value="<%=d.getMobNo()%>"  placeholder="Mobile Number" style="background: transparent; color: #012028" >
							</div>

							<div class="mb-3">
								<label class="form-label">Password</label> <input required
									name="password" type="text" class="form-control" id="place"  value="<%=d.getPassword()%>"   placeholder="password" style="background: transparent; color: #012028">
							</div>
							
							<input type="hidden" name = "id" value="<%=d.getId()%>">
							
							

							<button type="submit" class="btn btn-primary d-block mx-auto submit-button" >Update</button>
						</form>
					</div>
				</div>
			</div>

        
			
		</div>
	</div>
</body>
</html>
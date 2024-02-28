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

body {
  background: linear-gradient(90deg in oklab, #ffccce, #ff99cc);
}

.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
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

	
</style>



</head>
<body >
	<%@include file="navbar.jsp"%>
	<div class="container-fluid p-3">
		<div class="row">

		

          <div class="col-md-12">
          <div class = "card point-card val">
          <div class = "card-body">
          <p class = "fs-3 text-center">Doctor Details</p>
          
          <c:if test="${not empty errorMsg}">
							<p class="fs-3 text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<c:if test="${not empty succMsg}">
							<div class="fs-3 text-center text-success" role="alert">${succMsg}</div>
							<c:remove var="succMsg" scope="session" />
						</c:if>
          <table class = "table">
          <thead>
          <tr>
          <th scope="col">Full Name</th>
           <th scope="col">DOB</th>
           <th scope="col">Qualification</th>
            <th scope="col">Specialist</th>
             <th scope="col">Email</th>
              <th scope="col">Mobile No</th>
               <th scope="col">Action</th>
          
          </tr>
         </thead>
          
          <tbody>
          
          <% 
          DoctorDao dao2 = new DoctorDao(DBConnect.getCon());
          List<Doctor> list1 = dao2.getAllDoctor();
          
           for(Doctor d : list1) { %>
          <tr>
              <td><%= d.getFullName() %></td>
              <td><%= d.getDob() %></td>
              <td><%= d.getQualification() %></td>
              <td><%= d.getSpecialist() %></td>
              <td><%= d.getEmail() %></td>
              <td><%= d.getMobNo() %></td>
              <td>
                
                  <a href="edit_doctor.jsp?id=<%=d.getId()%>" class = "btn btn-sm btn-primary">Edit</a> 
                   <a href="../deleteDoctor?id=<%=d.getId() %>" class = "btn btn-sm btn-danger">Delete</a>
          
          </tr>
      <% } %>
         
       
          
         
          
          
          </tbody>
          </table>
          </div>
          
          </div>
          
          </div>
			
		</div>
	</div>
</body>
</html>
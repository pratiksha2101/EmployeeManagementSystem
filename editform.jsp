<%@page import="com.demo.Employee"%>
<%@page import="com.demo.DAo"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Edit form</h1>

   <%
     
       int  id= Integer.parseInt(request.getParameter("id"));
   
               Employee e=  DAo.getRecordById(id);
               
               
                   
                       
       
       
   %>
   
   
       <div class="container">
       
       <form class="row g-3" action="edituser.jsp"  method="post">
             <div class=" invisible">
			    <label for="inputEmail4" class="form-label invisible">ID</label>
			    <input type="hidden"  name="id" class="form-control" id="inputEmail4" value="<%=e.getId()%>">
			  </div>
			  <div class="col-md-6">
			    <label for="inputEmail4" class="form-label">Name</label>
			    <input type="text"  name="name" class="form-control" id="inputEmail4" value="<%=e.getName() %>>">
			  </div>
			  <div class="col-md-6">
			    <label for="inputPassword4" class="form-label">Password</label>
			    <input type="password" name="password" class="form-control" id="inputPassword4" value="<%=e.getPassword() %>">
			  </div>
			  <div class="col-12">
			    <label for="inputAddress" class="form-label">Email</label>
			    <input type="email" class="form-control" name="email" id="inputAddress"  value="<%=e.getEmail() %>" >
			  </div>
			  <div class="col-12">
			    <label  class="form-label">Gender</label>  <br>
			     <label  class="form-label">male</label>
			    <input type="radio" name="gender" value="male">
			      <label  class="form-label">Female</label>
				    <input type="radio" name="gender" value="female">
			      <label  class="form-label">other</label>
					    <input type="radio" name="gender" value="other">
			  </div>
			
		
			  <div class="col-12">
			    <div class="form-check">
			      
			      <label class="form-check-label" for="Country">
			        Country
			      </label>
			       <select name="country" style="200px">
			            <option>India</option>
			            <option>USA</option>
			            <option>Pakistan</option>
			       </select>
			    </div>
			  </div>
			  <div class="col-12">
			    <button type="submit" class="btn btn-primary"  >Update</button>
			  </div>
</form>
   
       
       
       </div>
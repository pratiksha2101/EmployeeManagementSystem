<%@page import="com.demo.DAo"%>
<%@page import="com.demo.Employee"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<h1>View EMployee</h1>

  
         <%
              List<Employee> list =DAo.getAllrecord();
         
              request.setAttribute("list", list);
         
         %>
  
  
            
            
   <div class="container">
         <table class="table  table table-dark table-striped">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Name</th>
      <th scope="col">Password</th>
      <th scope="col">Email</th>
      <th scope="col">Gender</th>
      <th scope="col">Country</th>
       <th scope="col">Update</th>
        <th scope="col">Delete</th>
    </tr>
  </thead>
  <tbody>
     
          <c:forEach items="${list}" var="e">
          
              <tr>
                 <td scope="col">${e.getId()}</td>  
                 <td scope="col">${e.getName()}</td>
                   <td scope="col">${e.getPassword()}</td>
                     <td scope="col">${e.getEmail()}</td>
                        <td scope="col">${e.getGender()}</td>
                       <td scope="col">${e.getCountry()}</td>
                          <td scope="col">
                           
                           <a  class="btn btn-primary" href="editform.jsp?id=${e.getId()}">Update</a>
                          
                          </td>
                           <td scope="col">
                           
                           <a class="btn btn-primary" href="deleteform.jsp?id=${e.getId()}">Delete</a>
                          
                          </td>
              
              </tr>
                 
          </c:forEach>
    
   
  </tbody>
</table>
  
   </div>
  
  
  
    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html> 
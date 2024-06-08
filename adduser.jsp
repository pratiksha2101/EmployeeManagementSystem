<%@page import="com.demo.DAo"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
       <jsp:useBean id="e"  class="com.demo.Employee"  ></jsp:useBean>
          
          <jsp:setProperty property="*" name="e"/> 
             
         <% 
         int i=DAo.save(e);
         if(i>0)
         {
             
             response.sendRedirect("success.jsp");
         }else
         {
             response.sendRedirect("error.jsp");
         } 
         %>
            

        


</body>
</html>


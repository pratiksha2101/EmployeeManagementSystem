
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.demo.DAo"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <jsp:useBean id="e"  class="com.demo.Employee"  ></jsp:useBean>
          
          <jsp:setProperty property="*" name="e"/> 
                  
  
  <%
      int i = DAo.Update(e);
     
      if(i>0)
      {
    	  response.sendRedirect("viewEMp.jsp");
      }else
      {
    	   out.print("something went wrong");
      }
  
  %>


</body>
</html>
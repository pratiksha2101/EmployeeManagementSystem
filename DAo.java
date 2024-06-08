package com.demo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;





public class DAo {
	
	
	
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.cj.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/demodb","root","root");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	} 
	          public static int save(Employee e) {
	        	  
	        	    int status =0;
	        	       
	        	             Connection con =DAo.getConnection();
	        	             
	        	             try {
								PreparedStatement ps= con.prepareStatement("insert into emp(name,password,email,Gender,country) values(?,?,?,?,?)");
							
	        	                ps.setString(1, e.getName());
	        	                ps.setString(2, e.getPassword());
	        	                ps.setString(3, e.getEmail());
	        	                ps.setString(4, e.getGender());
	        	             
	        	                ps.setString(5, e.getCountry());
	        	             
	        	               
	        	                status = ps.executeUpdate();
	        	             
	        	             
	        	             } catch (SQLException e1) {
								// TODO Auto-generated catch block
								e1.printStackTrace();
							}
	        	             
	        	  
	        	  
	        	  return status;
	          }


	          
	            public static List<Employee>  getAllrecord()
	            {
	            	List<Employee> list = new ArrayList();
	             
	                  try {
	                	     Connection con = DAo.getConnection();
						PreparedStatement ps= con.prepareStatement("select * from emp");
						
						  ResultSet rs =ps.executeQuery();
						  
						  while(rs.next())
						  {
							    Employee e= new Employee();
							      e.setId(rs.getInt(1));
							      e.setName(rs.getString(2));
							      e.setPassword(rs.getString(3));
							      e.setEmail(rs.getString(4));
							      e.setGender(rs.getString(5));
							      e.setCountry(rs.getString(6));
							      
							     list.add(e);
							      
						  }
						  
						  
 						
						
						
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
	            	
	            	return list;
	            }
	            
	            
	            public static Employee getRecordById(int id) {
	            	Employee e= new Employee();
	            	
	            	  try {
	                	     Connection con = DAo.getConnection();
						PreparedStatement ps= con.prepareStatement("select * from emp where id=?");
						
						   ps.setInt(1, id);
						
						
						ResultSet rs =ps.executeQuery();
						  
						  
						 
						  
						  if(rs.next())
						  {
							   
							      e.setId(rs.getInt(1));
							      e.setName(rs.getString(2));
							      e.setPassword(rs.getString(3));
							      e.setEmail(rs.getString(4));
							      e.setGender(rs.getString(5));
							      e.setCountry(rs.getString(6));
							      
							  
							      
						  }
						  
						  
						
						
						
					} catch (SQLException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}
					return e;
	            	
	            	
	            	
	            	
	            	
	            	
	            	 
	            }
	            
	            
	     public static int Update(Employee e)
	     {
	    	  int status=0;
	    	  
	    	
				try {
					  Connection con = DAo.getConnection();
						PreparedStatement ps;
					ps = con.prepareStatement("update  emp set name=?,password=?,email=?,sex=? ,country=? where id=?");
				
					  ps.setString(1, e.getName());
					  ps.setString(2,e.getPassword());
					  ps.setString(3, e.getEmail());
					  ps.setString(4, e.getGender());
					  ps.setString(5, e.getCountry());
					  
					  ps.setInt(6, e.getId());
					  
					 status= ps.executeUpdate();
				
				
				
				
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				
				 
	    	  
	    	  
	    	  
	                 return status;	 
	     }      
	    
	     
	     public static void delete(Employee e) {
	    		
             
             
             Connection con= getConnection();
              try {
					PreparedStatement ps= con.prepareStatement("delete from emp where id=?");
				
                       ps.setInt(1, e.getId());
                    ps.executeUpdate();
              
              } catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			
              
		
}
	            
}
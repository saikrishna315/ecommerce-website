<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<title>JSP Page</title>
</head>
<body>
<% //if ((session.getAttribute("userid") != null)){
    //response.sendRedirect("logout.html");
      //    }  
            String u=request.getParameter("box");
            String p=request.getParameter("box1"); 
try{Class.forName("com.mysql.jdbc.Driver");
                   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/book","root","");
                   Statement stmt=con.createStatement();
                   //Statement stmt2=con.createStatement();
                   String sql="select password from admin where username='"+u+"'";
                  // String sql2="select * from members ";
ResultSetrs=stmt.executeQuery(sql);
                   //ResultSet rs1=stmt2.executeQuery(sql2);
if(rs.next()){
                       String dpwd=rs.getString(1);
if(dpwd.equals(p)){
session.setAttribute("userid", u);
out.println("<h1>LOGIN SUCCESS</h1>");
response.sendRedirect("addbook.jsp");
                       }
else {
out.println("<h3>LOGIN FAILED.......INAVALID PASSWORD</h3>");
response.sendRedirect("loginerror.html");
                       }
                   }
else {
out.println("<h2>LOGIN FAILED.....USER NOT FOUND.</h2>");
response.sendRedirect("loginerror.html");
                               }

           } catch(Exception e){
out.println("ERROR:"+e);
           }
           %>
</body>
</html>

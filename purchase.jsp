<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page  import="java.sql.*" %>
<html>
<head>
<div align="top" style="width:1330px;height:250px;border:solid;border-width:2px;background:skyblue;">
<imgsrc="veg1.jpg" height="250" width="250"/>


<imgsrc="veg.png" height="250" width="1050"/>
</div>
<link href="style.css" rel="stylesheet" />
</head>
<body>
<%   
if ((session.getAttribute("userid") == null)){
response.sendRedirect("account.html");
          }
        %>
<nav>
<ul>
<li><a href="index.html">Home</a></li>	
<li><a href="howtoorder.html">How to order</a></li>	
<li><a href="reg form.html">Registration</a>		
<li><a href="delivery.html">Delivery Process</a></li>
<li><a href="practical.jsp">Products</a></li>
<li><a href="account.html">My Account</a></li>
<li><a href="feedback.html">Feed Back</a></li>
<li><a href="contact.html">Contact us</a></li>
<li><a href="admin.html">Admin</a></li>
</ul>
</nav>
<% 
          String u=request.getParameter("id");
int i=Integer.parseInt(request.getParameter("quant"));
try{Class.forName("com.mysql.jdbc.Driver");

    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/book","root","");

                   Statement stmt=con.createStatement();

                   String sql="select* from addbook;";
                   String sql2="select * from addbook where id='"+u+"'";
ResultSetrs= stmt.executeQuery(sql2); 
if(rs.next() ){
    %>
<table border="1" cellpadding="10" cellspacing="15" align="center" class="table">
<tr>
<th>
<% String d=rs.getString(3);
int s=Integer.parseInt(d);
int cost;
cost=s*i;     %>
<p>THE BOOK  YOU ARE GOING TO BUY:<%=rs.getString(2)%><br>
<br>PRICE YOU HAVE TO PAY:Rs:<%=cost%>/-</p>

</th>

</tr>

</table>
<%  }
}catch(Exception ep){

	out.println("ERROR:"+ep);
                  }
                  %>
<center><imgsrc="home_delivery_reach1.jpg"  style="background-position:bottom;"/></center>
<marquee>
<imgsrc="veg2.jpg" height="200" width="205"/>
<imgsrc="veg3.jpg" height="200" width="205"/>
<imgsrc="veg4.jpg" height="200" width="205"/>
<imgsrc="veg5.jpg" height="200" width="205"/>
<imgsrc="11.jpg" height="200" width="205"/>
<imgsrc="22.jpg" height="200" width="205"/>
<imgsrc="33.jpg" height="200" width="205"/>
<imgsrc="44.jpg" height="200" width="205"/>
<imgsrc="345.jpg" height="200" width="205"/>
<imgsrc="456.jpg" height="200" width="205"/>
<!--<imgsrc="1233.jpg" height="200" width="205"></img>-->
</marquee>
</body>
</html>

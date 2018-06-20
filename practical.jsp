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
<li><a href="account.html">My Account</a></li>
<li><a href="feedback.html">Feed Back</a></li>
<li><a href="contact.html">Contact us</a></li>
<li><a href="admin.html">Admin</a></li>
</ul>
</nav>
<% 
try{Class.forName("com.mysql.jdbc.Driver");

    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/book","root","");

                   Statement stmt=con.createStatement();

                   String sql="select* from addbook;";

ResultSetrs= stmt.executeQuery(sql); 
while(rs.next() ){
    %>
<table border="1" cellpadding="10" cellspacing="15" align="center" class="table">
<tr>
<th>

<a class="aaa" href="<%=rs.getString(1)%>.html" style="text-decoration:none;">
<div align="center">
<imgsrc="<%=rs.getString(1)%>.jpg" height="154" width="154" border="0" alt="Curry Leaves"></div>
<p><%=rs.getString(2)%><br>
<br>Rs:<%=rs.getString(3)%>/-</p>
</a>
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

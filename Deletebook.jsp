<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
function validate(){
				var name=document.myform.bid.value;
				
				if(name.length<=1)
				{
					alert("Please enter valid name");
					document.myform.bid.focus();
					return false;
				}


			}
</script>
<div align="top" style="width:1350px;height:250px;border:solid;border-width:2px;background:yellow;">
<imgsrc="veg1.jpg" height="250" width="250"/>
<imgsrc="veg.png" height="250" width="1040"/>
</div>
<title>DELETE BOOK</title>
<link href="style.css" rel="stylesheet" />
</head>
<body>
<% if ((session.getAttribute("userid") == null)){
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
<form action="dbook.jsp" name="myform"  onsubmit="return validate();">
<table width="659" height="39" border="0" align="center" cellpadding="3" cellspacing="3">
<tr><td colspan="2"  class="box_text" >ADD A BOOK</td></tr>
<tr style="border-bottom: dashed 1px #e2e2e2;"><td colspan="2" height="8px" style="border-bottom: dashed 2px #99cc33;" ></td></tr>
<tr><td width=25%>BOOK-ID:</td><td width=25%><input type="text" name="bid" id="bid" value=""/><br /></td></tr>
<tr> align="center"><td><input type="submit" value="DELETE"/></td></tr>
</table>
</font>
</form><br/><br/><br/><br/>
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

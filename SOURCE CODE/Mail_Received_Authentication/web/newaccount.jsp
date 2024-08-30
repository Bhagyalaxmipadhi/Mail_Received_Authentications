<%-- 
    Document   : newaccount
    Created on : Jun 22, 2017, 10:38:47 AM
    Author     : VENKAT
--%>
<%String msg=request.getParameter("msg");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../../docs-assets/ico/favicon.png">

    <title>Mail Received Authentication System</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">


    <!-- Custom styles for this template -->
    <link href="assets/css/main.css" rel="stylesheet">

    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="assets/js/hover.zoom.js"></script>
    <script src="assets/js/hover.zoom.conf.js"></script>

    <script type="text/javascript">
        
        function validate()
        {
            
            var c=document.reg.email.value;
            var d=document.reg.password.value;
            var e=document.reg.cpassword.value;
            var f=document.reg.birthday.value;
            var i=document.reg.gender.value;
            var g=document.reg.mobile.value;
            var h=document.reg.location.value;
            
          
        
        if (c.indexOf("@gmail", 0) < 0)
{
alert("Please enter a valid e-mail address. Like @gmail");
document.reg.email.focus();
return false;
}
if (c.indexOf(".", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.reg.email.focus();
return false;
}
if(d.length<6)
	{
		alert("Password Must contains 6 to 20 characters");
		document.reg.password.focus();
		return false;
	}
        if(d!=e)
        {
            alert("Password and Conform Password Mis Match");
            document.reg.cpassword.focus();
            return false;
        }
        if(isNaN(g))
        {
            alert("Mobile Number Should Be Numaric");
            document.reg.mobile.focus();
            return false;
        }
        if(g.length!=10)
        {
            alert("Mobile Number Should be 10 Digits");
            document.reg.mobile.focus();
            return false;
        }
        if(i==0)
        {
            alert("Please select gender");
            document.reg.gender.focus();
            return false;
        }
        
            return true;
        }
        </script>
  </head>

  <body>

    <!-- Static navbar -->
    <div class="navbar navbar-inverse navbar-static-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.html">Mail Received Authentication System</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="index.html">HOME</a></li>
            <li><a href="newaccount.jsp">CREATE ACCOUNT</a></li>
            <li><a href="accountlogin.jsp">LOGIN</a></li>
            <li><a href="adminaccount.jsp">ADMIN</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>

	<!-- +++++ Welcome Section +++++ -->
	<div id="ww">
	    <div class="container">
                
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 centered">
                                    <%if(msg!=null){%>
			<h1><font color="green"><%=msg%></font></h1>
			<%}%>
                                    <h2>New Account Creation  </h2>
                                    <form name="reg" action="createaccount.jsp" method="post" onsubmit="return validate()">
                                        <br>
                                        <table align="center" cellpadding="10" border="10"  >
                                            <tr><td>First Name</td><td><input type="text" name="fname" required="" placeholder="Enter First Name"></td></tr>
                                      <tr><td>Last Name</td><td><input type="text" name="lname" required="" placeholder="Enter Last Name"></td></tr>
                                     
                                      <tr><td>Email-ID</td><td><input type="text" name="email"  required="" placeholder="Choose  Mail Id "></td></tr>
                                      <tr><td>Choose Password</td><td><input type="password" name="password" required="" placeholder="Choose Password"></td></tr>
                                      <tr><td>Conform Password</td><td><input type="password" name="cpassword"  required placeholder="Enter Conform Password"></td></tr>
                                     
                                      <tr><td>Birthday</td><td><input type="date" name="birthday" required="" placeholder="Enster Date Of Birth "></td></tr>
                                      <tr><td>Gender&nbsp;&nbsp;&nbsp;:</td>
                                       <td ><select name="gender">
                                               <option value="0">----------Select----------</option>
                                               <option value="Male">Male</option>
                                               <option value="Female">Female</option>
                                               <option value="Others">Others</option>
                                           </select></td></tr>
   
                                      <tr><td>Mobile Number</td><td><input type="text" name="mobile" required="" placeholder="Enter Mobile  Number"></td></tr>
                                      <tr><td>Location</td><td><input type="text" name="location"   required placeholder="Enter Location Name"></td></tr>
                                      <tr><td><input type="Submit" value="Create Acount"></td><td><input type="Reset" value="Reset"></td></tr>
                                      
                                      
                                      
                                        </table>
                                    </form>
				</div><!-- /col-lg-8 -->
			</div><!-- /row -->
	    </div> <!-- /container -->
	</div><!-- /ww -->
	
	
	
	
	
	
	

     <script src="assets/js/bootstrap.min.js"></script>
  </body>
</html>

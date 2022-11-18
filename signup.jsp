<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>About Us | Corlate</title>
	
	<!-- core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
	
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->

<body>

       <header id="header">
        <div class="top-bar">
            <div class="container">
                <div class="row">
                    <%--<div class="col-sm-6 col-xs-4">
                        <div class="top-number"><p><i class="fa fa-phone-square"></i>  +0123 456 70 90</p></div>
                    </div>--%>
                    <%--<div class="col-sm-6 col-xs-8">
                       <div class="social">
                            <ul class="social-share">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li> 
                                <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                <li><a href="#"><i class="fa fa-skype"></i></a></li>
                            </ul>
                            <div class="search">
                                <form role="form">
                                    <input type="text" class="search-form" autocomplete="off" placeholder="Search">
                                    <i class="fa fa-search"></i>
                                </form>
                           </div>
                       </div>
                    </div>--%>
                </div>
            </div><!--/.container-->
        </div><!--/.top-bar-->

     <nav class="navbar navbar-inverse" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <%--<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>--%>
                    <a class="navbar-brand" href="index.jsp">Chemical Supply</a>
                </div> <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li><a href="aboutus.jsp">About</a></li>
                        <li><a href="contact.jsp">contact</a></li>
                        <li><a href="signin.jsp">Sign in</a></li>
                           <li><a href="adminsignin.jsp">Admin Sign in</a></li>
                          <li><a href="signup.jsp">Sign up</a></li>
                       
                        <%--<li><a href="portfolio.html"></a></li>--%>
                        
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Shop<i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="SulfuricAcid.jsp">Sulfuric Acid</a></li>
                                <li><a href="Zinc.jsp">Zinc</a></li>
                               <li><a href="SodiunHydroxide.jsp">Sodiun Hydroxide</a></li>
                                <li><a href="NitricAcid.jsp">Nitric Acid</a></li>
								<li><a href="AceticAcid.jsp">Acetic Acid</a></li>
                          </ul>
                        </li>
                        <%--<li><a href="blog.html">Blog</a></li> 
                        <li><a href="contact-us.html">Contact</a></li>    --%>                    
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
	</header><!--/header-->

    <section id="about-us">
        <div class="container">
			<div class="center wow fadeInDown">
				<h2>User Signup</h2>
				<p class="lead">
<form name="form1" method="post" action="">
         <table width="35%" border="0px" align="center" bgcolor="#FFFFFF">
           <tr>
             <td width="90"><div align="right"><span class="style1">Email-ID </span></div></td>
             <td width="16">&nbsp;</td>
             <td width="151"><label>
               <div align="left">
                 <input name="t1" type="email" id="t1" required="required" />
                 </div>
             </label></td>
             <td width="181" rowspan="7"><img src="images/login3.jpg" width="225" height="225" /></td>
           </tr>
           <tr>
             <td><div align="right"><span class="style1">Password</span></div></td>
             <td>&nbsp;</td>
             <td><label>
               <div align="left">
                 <input type="password" name="t2"   placeholder="Password:" required="required" id="t10" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"/>
                 </div>
             </label></td>
           </tr>
           <tr>
             <td><div align="right"><span class="style1">Name</span></div></td>
             <td>&nbsp;</td>
             <td><label>
               <div align="left">
                 <input name="t3" type="text" id="t3" title="letters only" pattern="[A-Za-z]+" required="required" />
                 </div>
             </label></td>
           </tr>
           <tr>
             <td><div align="right"><span class="style1">Gender</span></div></td>
             <td>&nbsp;</td>
             <td><label>

               <select name="t4" id="t4">
                 <option value="Male">Male</option>
                 <option value="Female">Female</option>
               </select>
             </label></td>
           </tr>
           <tr>
             <td><div align="right"><span class="style1">Date of birth </span></div></td>
             <td>&nbsp;</td>
             <td><label>
               <div align="left">
                 <input name="t5" type="date" id="t5" required="required"/>
                 </div>
             </label></td>
           </tr>
           <tr>
             <td><div align="right"><span class="style1">Address</span></div></td>
             <td>&nbsp;</td>
             <td><label>
               <div align="left">
                 <textarea name="t6" id="t6"></textarea>
                 </div>
             </label></td>
           </tr>
           <tr>
             <td height="28"><div align="right"><span class="style1">Phone</span></div></td>
             <td>&nbsp;</td>
             <td><label>
               <div align="left">
                 <input name="t7" id="t7" title="only nos should be 10 digits" maxlength="10" placeholder="Phone or Mobile no"  pattern="^\d{10}$" required="required"/>
                 </div>
             </label></td>
           </tr>
           <tr>
             <td height="47" colspan="4"><label>
                 <div align="center">
                   <input type="submit" name="Submit" value="Submit" />
                   <input type="reset" name="Submit2" value="Reset" />
                 </div>
               </label></td>
           </tr>
      </table>
       </form>
       <%@page import ="java.sql.*"%>
	   <%@page import="java.util.*,java.io.*,javax.servlet.http.Cookie"%>
      <%
   

try
{
if(request.getParameter("Submit")!= null)
	
   	{
   		Class.forName("com.mysql.jdbc.Driver");
	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nursery2020","root","mysql");  
       	 String t1=request.getParameter("t1").trim();
		 String t2=request.getParameter("t2").trim();
		 String t3=request.getParameter("t3").trim();
	     String t4=request.getParameter("t4").trim();
         String t5=request.getParameter("t5").trim();
         String t6=request.getParameter("t6").trim();
         String t7=request.getParameter("t7").trim();
        
        Statement stmt=con.createStatement();
		       int count=0;
	        ResultSet rs,rs1;
			 rs=stmt.executeQuery("select * from signup where emailid="+"'"+t1+"'");

      int found=0;
      while(rs.next())
      {
			count++;
		}

			 if(count==0)
	  {
       

		
       
        PreparedStatement pstmt=con.prepareStatement("insert into signup values(?,?,?,?,?,?,?)");   
        	pstmt.setString(1,t1);
            pstmt.setString(2,t2);
            pstmt.setString(3,t3);
            pstmt.setString(4,t4);
            pstmt.setString(5,t5);
            pstmt.setString(6,t6);
            pstmt.setString(7,t7);
           
            
             pstmt.executeUpdate(); 
                    
            
            pstmt.close();  
            con.close(); 
			out.println("<h1 style='color:red'>SUCCESFULLY REGISTERED</h1>");
            //response.sendRedirect("http://localhost:8084/Quickmail/succsignup.html");
    }
	
	else
		{
			out.println("<h1 style='color:red'>User already Registrered with us ....</h1>");
		}
		}
}
    catch(Exception e)
    {
      out.println("Exception occured" +e);
    }
%>                   </p>
                        </p>
                        <p>&nbsp;</p>
                        <p>&nbsp;</p>
                        <p>&nbsp;            </p>
       </div>
			
<!-- about us slider -->
		
    </section><!--/#bottom-->

    <footer id="footer" class="midnight-blue">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    &copy; 2020 All Rights Reserved.
                </div>
               
            </div>
        </div>
    </footer><!--/#footer-->
    

    <script src="js/jquery.js"></script>
    <script type="text/javascript">
        $('.carousel').carousel()
    </script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/wow.min.js"></script>
</body>
</html>
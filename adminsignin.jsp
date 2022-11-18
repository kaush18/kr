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
				<h2>Admin Sign in</h2>
				<p class="lead">
<form name="form1" method="post" action="">
    <table width="293" border="0" align="center">
      <caption>&nbsp;
      </caption>
      <tr>
        <td width="68" scope="col"><span class="style1">Username</span></td>
        <td width="205" scope="col"><label>
          <input type="text" name="textfield" required="required" />
        </label></td>
        <td width="205" rowspan="3" scope="col"><table width="100%" border="0">
          <tr>
            <td><img src="images/signin.png" width="168" height="118" /></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="44" rowspan="2" valign="top"><span class="style1">Password</span></td>
    <td><input type="password" name="textfield2" required="required"/>
      <label><br />
        <a href="forgotpass.jsp"></a></label></td>
      </tr>
      <tr>
        <td height="24">&nbsp;</td>
      </tr>
      <tr>
        <td colspan="3"><label>
            <div align="center">
              <input type="submit" name="Submit" value="Submit" />
              <input type="reset" name="Submit2" value="Reset" />
            </div>
          </label></td>
      </tr>
    </table>
</form>
       <div align="center">
        
    
                        <p>
                          <%@page import ="java.sql.*"%>
                                  <%@page import="java.util.*,java.io.*,javax.servlet.http.Cookie"%>
                                  <%
				  if(request.getParameter("Submit")!= null)
   	{
try
{

   Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nursery2020","root","mysql"); 
      Statement stmt=con.createStatement();
      ResultSet rs,rs1;
     
     // String type=request.getParameter("select").trim();
   
       
      String u=request.getParameter("textfield").trim();
      String p=request.getParameter("textfield2").trim();
      
	  
	 
	  rs=stmt.executeQuery("select * from admin where u="+"'"+u+"'"+" and p="+"'"+p+"'");
	 /// rs=stmt.executeQuery("select * from adminlogin");
  
      int found=0;
      while(rs.next())
      {
	 
			found++;
		}
	 if(found==1)
		 {
				 
			 
				 ///Cookie cook1 = new Cookie("Admin",u);
		 ///cook1.setMaxAge(1200);
		/// response.addCookie(cook1);
		session.setAttribute("user",u);
		                 response.sendRedirect("adminpage.jsp"); 
		}
		  else
		 {
	out.println("<h1 align=center style='color:red'>Invalid Login... </h1>");


			}
                  rs.close();
		
			stmt.close();
			con.close();
                 
	
}

 catch(Exception e)
    {
     
     out.println("Exception occured" +e);
    }
	}
%>
                          </p>
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
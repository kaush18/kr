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
                    <a class="navbar-brand" href="index.jsp">OnlineNursery</a>
                </div>
				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li ><a href="uepw.jsp">Edit Password</a></li>
                        <li ><a href="viewcart.jsp">View Cart</a></li>
                        <li ><a href="track.jsp">Track Order </a></li>
                        <li  class="active"><a href="feedback.jsp"> Feedback </a></li>
                        <li><a href="index.jsp">signout</a></li>                
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
	</header><!--/header-->

    <section id="about-us">
        <div class="container">
			<div class="center wow fadeInDown">
				<form id="form1" name="form1" method="post" action="">
				  <table width="42%" border="0">
                    <tr>
                      <td width="19%"><div align="right">Full Name</div></td>
                      <td width="3%">&nbsp;</td>
                      <td width="78%"><div align="left">
                        <input type="text" name="t1" id="t1" />
                      </div></td>
                    </tr>
                    <tr>
                      <td><div align="right">Feed Back</div></td>
                      <td>&nbsp;</td>
                      <td><div align="left">
                        <textarea name="t2" id="t2"></textarea>
                      </div></td>
                    </tr>
                    <tr>
                      <td><div align="right">Mobile</div></td>
                      <td>&nbsp;</td>
                      <td><div align="left">
                        <input name="t3" type="text" id="t3" maxlength="10" />
                      </div></td>
                    </tr>
                    <tr>
                      <td><div align="right">Email</div></td>
                      <td>&nbsp;</td>
                      <td><div align="left">
                        <input type="text" name="t4" id="t4" />
                      </div></td>
                    </tr>
                    <tr>
                      <td><div align="right">Rate</div></td>
                      <td>&nbsp;</td>
                      <td><div align="left">
                        <input type="text" name="t5" id="t5" />
                      </div></td>
                    </tr>
                    <tr>
                      <td><div align="right"></div></td>
                      <td>&nbsp;</td>
                      <td><div align="left">
                        <input type="submit" name="Submit" id="button" value="Submit" />
                        <input type="reset" name="button2" id="button2" value="Reset" />
                      </div></td>
                    </tr>
                  </table>
              </form>
				<h2>
				  <%@page import ="java.sql.*"%>
                  <%@page import="java.util.*,java.io.*,javax.servlet.http.Cookie"%>
                  <%
   if(request.getParameter("Submit")!= null)
	
   	{

try
{

   		Class.forName("com.mysql.jdbc.Driver");
	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nursery2020","root","mysql");  
       	 String t1=request.getParameter("t1").trim();
		 String t2=request.getParameter("t2").trim();
		 String t3=request.getParameter("t3").trim();
	     String t4=request.getParameter("t4").trim();
         String t5=request.getParameter("t5").trim();
      
        PreparedStatement pstmt=con.prepareStatement("insert into fback values(?,?,?,?,?)");   
        	pstmt.setString(1,t1);
            pstmt.setString(2,t2);
            pstmt.setString(3,t3);
            pstmt.setString(4,t4);
            pstmt.setString(5,t5);
         
           
            
             pstmt.executeUpdate(); 
                    
            
            pstmt.close();  
            con.close(); 
			out.println("<h1 style='color:red'>Added Feedback Successfully</h1>");
            //response.sendRedirect("http://localhost:8084/Quickmail/succsignup.html");
    }
	
	

    catch(Exception e)
    {
      out.println("Exception occured" +e);
    }
	
	}
%>
                  </p>
                  </p>
</h2>
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
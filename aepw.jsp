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
                </div> <ul class="nav navbar-nav">
                        <li class="active"><a href="aepw.jsp">Edit Password</a></li>
                        <li><a href="aproduct.jsp">Add Product</a></li>
                         <li ><a href="eproduct.jsp">Edit Product</a></li>
                        <li><a href="history.jsp">Payment History</a></li>
                        <li><a href="dispatch.jsp">Dispatch Order View</a></li>
                         <li><a href="feedview.jsp">Feedback View</a></li>
                        <li><a href="index.jsp">signout</a></li>
                                     
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
	</header><!--/header-->

    <section id="about-us">
        <div class="container">
			<div class="center wow fadeInDown">
				<h2>Edit Password</h2>
				<p class="lead"><form id="form1" name="form1" method="post" action="#">
      <table width="38%" border="0" align="center" cellpadding="0" cellspacing="5">
        
        <tr>
          <td colspan="5">&nbsp;</td>
        </tr>
        <tr>
          <td width="27%">Old Password :</td>
          <td width="3%">&nbsp;</td>
          <td colspan="2"><input type="text" name="textfield" id="textfield" required="required" /></td>
          <td width="34%" rowspan="4"><img src="images/pwdchage.jpg" width="145" height="102" /></td>
        </tr>
        <tr>
          <td>New Password :</td>
          <td>&nbsp;</td>
          <td colspan="2"><input type="text" name="textfield2" id="textfield2" required="required" /></td>
        </tr>
        <tr>
          <td>Confirm Password :</td>
          <td>&nbsp;</td>
          <td colspan="2"><input type="text" name="textfield3" id="textfield3"  required="required"/></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td width="16%" valign="top"><input type="submit" name="Login" id="Login" value="Submit" /></td>
          <td width="20%" valign="top"><input type="reset" name="Login2" id="Login2" value="Reset" /></td>
        </tr>
      </table>
    </form>
    <%@page import ="java.sql.*"%>
	<%@page import="java.util.*,java.io.*,javax.servlet.http.Cookie"%>
	<%
	  try
	  {
	  
	   String b=request.getParameter("Login");
	if(request.getParameter("Login")!= null)
	  {
	      Class.forName("com.mysql.jdbc.Driver");
		  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nursery2020","root","mysql");
		  Statement stmt=con.createStatement();
		  ResultSet rs,rs1,rs2;
		  
		  String s=request.getParameter("textfield").trim();//old
		  String s1=request.getParameter("textfield2").trim();//new
		  String s3=request.getParameter("textfield3").trim();//confirm
		  String email= (String)session.getAttribute("user");
		   

	rs=stmt.executeQuery("select * from admin where u="+"'"+email+"'");
		//String v1="",v2="";
		int found=0;
		while (rs.next())
		{ 
			
				 found=1;
			  break;
			
		 	}
		 
		  if(found==1)
		  {
		  
		  String str="Update admin set p=? where u=?";
		  ///out.println(str);
		  		PreparedStatement psmt =con.prepareStatement(str);
				psmt.setString(1,s1);
				psmt.setString(2,email);
				psmt.executeUpdate();
		//out.println(s1+","+s3);
				psmt.close();
				rs.close();
				//response.sendRedirect("adepwsaveack.jsp");
		   
				con.close();
				
		out.println("<h1 align=center ><b style='color:red'>Updated successfully</b></h1>");
         //   response.sendRedirect("donerregsaveack.jsp");
		 }
	
	else
		{
		
				out.println("<h1 align=center  style='color:red'>Some thing has gone wrong ...Pls chk</h1>");
//		   response.sendRedirect("donerregsaveinvalid.jsp");
		
		}
		}
    
	}
    catch(Exception e)
    {
     out.println("Exception occured" +e);
    }
	
%></p>
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
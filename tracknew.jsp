<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>About Us | Corlate</title>
	<link rel="stylesheet" href="style1.css" />

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
                        <li><a href="index.jsp">signout</a></li>
                               
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
	</header><!--/header-->

    <section id="about-us">
        <div class="container">
			<div class="center wow fadeInDown">
				<h2>Welcome To User Page</h2>
				<p class="lead"><%  
  String e=(String)  session.getAttribute("emailid");
	String n=(String)  session.getAttribute("fname");
		String a=(String)  session.getAttribute("addr");
			String m=(String) session.getAttribute("mobile");
  
  %>
    <div class="container">
        <div class="row"><!-- Content End -->
        <div style="width:600px; alignment:center">
        <h1 align="center">Welcome  To Shopper Page</h1>
        <p> <form id="form1" method="post" action="">
        <table width="332" border="0">
          <tr>
            <td width="155"><span class="style7">Full Name </span></td>
            <td width="161"><label>
              <input type="text" name="textfield" value="<%out.println(n);%>"/>
              </label>            </td>
          </tr>
          <tr>
            <td height="28"><span class="style7">Feedback</span></td>
            <td><label>
              <input type="text" name="textfield2" required />
            </label></td>
          </tr>

          <tr>
            <td><span class="style7">Phone No </span></td>
            <td><label>
              <input name="textfield3" type="text" maxlength="10"  value="<%out.println(m);%>"/>
            </label></td>
          </tr>
          
          
          <tr>
            <td><span class="style7">E-Mail</span></td>
            <td><input type="email" name="textfield4"  value="<%out.println(e);%>"/></td>
          </tr>
          <tr><td colspan="2">		Rate This 
    <div class="stars">
         <input name="star" type="radio" class="star-1" id="star-1" value="1" />
		<label class="star-1" for="star-1">1</label>
		<input name="star" type="radio" class="star-2" id="star-2" value="2" />
		<label class="star-2" for="star-2">2</label>
		<input name="star" type="radio" class="star-3" id="star-3" value="3" />
		<label class="star-3" for="star-3">3</label>
		<input name="star" type="radio" class="star-4" id="star-4" value="4" />
		<label class="star-4" for="star-4">4</label>
		<input name="star" type="radio" class="star-5" id="star-5" value="5" />
		<label class="star-5" for="star-5">5</label>
		<span></span>	</div>
 </td>
          </tr>
      <tr>
            <td><input type="submit" name="Submit" value="Submit" /></td>
            <td><input type="reset" name="Submit2" value="Reset" /></td>
          </tr>
        </table>
      </form>
	  
      <div align="center">
        <%@ page import ="java.io.*,java.sql.*,java.util.*"%>
        <%


if (request.getParameter("Submit")!=null)
{

try
{

	String fname=request.getParameter("textfield");
	String feedback=request.getParameter("textfield2");
	String email=request.getParameter("textfield3");
	String phno=request.getParameter("textfield4");
	String rating=request.getParameter("star");


 Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection(  "jdbc:mysql://localhost:3306/nursery2020","root","mysql"); 
	
		Statement st=conn.createStatement();
		PreparedStatement pstmt;
			 
			pstmt=conn.prepareStatement("insert into feedback values(?,?,?,?,?)");
				
			pstmt.setString(1,fname);
			pstmt.setString(2,feedback);
			pstmt.setString(3,email);
			pstmt.setString(4,phno);
			pstmt.setString(5,rating);
			pstmt.executeUpdate();
			
			out.println("Submitted successfully ");
		}

       catch(Exception ex)
             {
             		out.print(ex);
             	
             }
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
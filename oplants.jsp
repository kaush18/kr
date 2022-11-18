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
                        <li class="active" ><a href="oplants.jsp">Ornamental Plants</a></li>
                        <li ><a href="seeds.jsp">Seeds</a></li>
                        <li><a href="pots.jsp">Pots</a></li>
                        <li><a href="gaccesories.jsp">Gardan Accesories </a></li>
                        <li><a href="adminpage.jsp">Home</a></li>
                        <%--<li><a href="portfolio.html"></a></li>--%>
                       <%-- <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Ornamentals<i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Plants</a></li>
                                <li><a href="#">Gardan</a></li>
                                <li><a href="#">Seeds</a></li>
                                <li><a href="shortcodes.html">Shortcodes</a></li>
                            </ul>
                        </li>--%>
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
				<h2>Add Ornamental Plants</h2>
				<table width="290" height="223" align="center">
                  <tr>
                    <td width="80">Photo</td>
                    <%@page import ="java.sql.*"%>
                    <%
	  try
	  {
	  Cookie cook1=new Cookie("type","books");
                  cook1.setMaxAge(1200);
                  response.addCookie(cook1);
	  }
	  catch(Exception e)
    {
      out.println("Exception occured" +e);
    }
	  
	  
	  
	  %>
                    <td width="168"><a href="uploadphoto.jsp">
                      <input type="file" name="file" required="required"/>
                    </a></td>
                    <td width="168" rowspan="5"><img src="images/sports.jpg" width="276" height="183" /></td>
                  </tr>
                  <tr>
                    <td>Product ID </td>
                    <td><label>
                      <input type="textfield" name="id" id="textfield4" value="<%	  	  Class.forName("com.mysql.jdbc.Driver");
	  Connection cons=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion2019","root","mysql");  
	      Statement stmt=cons.createStatement();
         ResultSet rs;
         String s5="";
			 int cnt=1;
			           rs=stmt.executeQuery("select * from  sportswear");
        
            while(rs.next())
        {
		cnt++;
         }
        rs.close();
		String s="";
		s=s.valueOf(cnt);
		s="SP-"+s;
 Cookie cook1=new Cookie("id",s);
                  cook1.setMaxAge(1200);
                response.addCookie(cook1);

	    
	   out.println(s); %>" />
                    </label></td>
                  </tr>
                  <tr>
                    <td>Description</td>
                    <td><label>
                      <textarea name="textarea"></textarea>
                    </label></td>
                  </tr>
                  <tr>
                    <td>Rate</td>
                    <td><label>
                      <input type="number" name="textfield2" required="required"/>
                    </label></td>
                  </tr>
                  <tr>
                    <td>Category</td>
                    <td><label>
                      <input type="number" name="textfield3" required="required"/>
                    </label></td>
                  </tr>
                  <tr>
                    <td>GST % </td>
                    <td><input type="number" name="textfield32" required="required"/></td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td colspan="3"><label> </label>
                        <label> </label>
                        <div align="center">
                          <label>
                          <input type="submit" name="Submit" value="Submit" />
                          </label>
                          <label>
                          <input type="reset" name="Submit2" value="Reset" />
                          </label>
                      </div></td>
                  </tr>
                </table>
				<p class="lead">&nbsp;</p>
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
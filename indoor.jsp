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
                </div> <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li><a href="aboutus.jsp">About</a></li>
                        <li><a href="contact.jsp">contact</a></li>
                        <li><a href="signin.jsp">Signin</a></li>
                           <li><a href="adminsignin.jsp">Admin Signin</a></li>
                          <li><a href="signup.jsp">Signup</a></li>
                       
                        <%--<li><a href="portfolio.html"></a></li>--%>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Servieces<i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="rentp.jsp">Rent a Plant</a></li>
                                <li><a href="gardenm.jsp">Garden Maintainance</a></li>
                                <li><a href="vehgar.jsp">Vericle Gardens</a></li>
                                <li><a href="irrig.jsp">Irrigation Services</a></li>
                                <li><a href="artif.jsp">Artificial Lawns</a></li>
                                 <li><a href="artificial.jsp">Artificial Vertical Lawns</a></li>
                               </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Shop<i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="indoor.jsp">Indoor Plants</a></li>
                                <li><a href="mplants.jsp">Medicinal Plants</a></li>
                                <li><a href="floral.jsp">Floral Plants</a></li>
                                <li><a href="fruit.jsp">Fruit Plants</a></li>
                                <li><a href="vrplants.jsp">Vastu and Regional Plants</a></li>
                                 <li><a href="bt.jsp">Bonsai Tree</a></li>
                                 <li><a href="pots.jsp">Pots </a></li>
                                 <li><a href="soils.jsp">Soil </a></li>
                                 <li><a href="seeds.jsp">Seeds </a></li>
                                 <li><a href="fert.jsp">Fertilizers </a></li>
                                
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
				<h2>Indoor Plants</h2>
				<p class="lead"><%@page import ="java.sql.*"%>
<%@page import="java.util.*,java.io.*"%>

<%   
                                          
try
{
    Class.forName("com.mysql.jdbc.Driver");
	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nursery2020","root","mysql");
      Statement stmt=con.createStatement();
      ResultSet rs;
      ResultSetMetaData rmd;
	 
       
 
	 
	   String s1="select pid,pic,pdesc,rate,gst from product where Category='Indoor Plants'";
	
     rs = stmt.executeQuery(s1);
      
		out.println("<body><h1><div align=center><strong><span class=style1>DETAILS</span></strong></div></h1></body>");
      
        out.println("<table border=2 align=center width=50% bordercolor=silver ><tr>");
        
        rmd =rs.getMetaData();
        int n=rmd.getColumnCount();
        for(int i=1;i<=n+1;i++)
        {
		    if(i<=n)
            out.println("<td><b><font size=5>"+rmd.getColumnName(i)+"</font></b></td>");
			else
			out.println("<td><b><font size=5>BUY</font></b></td>");
        }
        String id="",cat="",gst="",rate="",s="";
        while (rs.next())
        {
            out.println("<tr>");
            
                for(int x=1;x<=n;x++)
                {
        	         s=rs.getString(x);
					  if(x==1)
					 {
       // out.println("<td><b><img src="+s+" width=100 height=100></img></b></td>");
	   id=s;
	     out.println("<td><b>"+id+"</b></td>");
	//	 gst=s;
					 }
					else if(x==2)
					 {
					// cat=s;
        out.println("<td><b><img src="+s+" width=100 height=100></img></b></td>");
					
					 }
					 	 	else if(x==4)
					 {
					 rate=s;
            out.println("<td><b>"+s+"</b></td>");
					 }
					 	else if(x==5)
					 {
					 gst=s;
              out.println("<td><b>"+s+"</b></td>");
					 }
					  else
					  {
					                 out.println("<td><b>"+s+"</b></td>");
					  }
					 
					  
                 }   
                     out.println("<td><b><a href=addcart.jsp?d="+id+"&c=IndoorPlants"+"&gst="+gst+"&rate="+rate+"></img></b><img src='addtocart.png'></img><a/></td>");
                
            
         
                
            
          out.println("</tr>");
        }
		out.println("</table><br></body></html>");
        rs.close();
		stmt.close();
		con.close();
		
    
}
  catch(Exception e)
    {
        
      out.println(e);
    }
%>

<div align="center">
        
    
                        <p>&nbsp;</p>
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
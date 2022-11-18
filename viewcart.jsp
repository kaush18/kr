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
				<h2>View Cart</h2>
                 <p> <%
	  			if(session.getAttribute("emailid").equals(""))
				{
						response.sendRedirect("index.jsp");
				}
				
	  %></p>
				<p class="lead">
				  <%@page import ="java.sql.*"%>
                  <%@page import="java.util.*,java.io.*,javax.servlet.http.Cookie"%>
                  <%
                                          
try
{
    	Class.forName("com.mysql.jdbc.Driver");
	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nursery2020","root","mysql");  
      Statement stmt=con.createStatement();
      ResultSet rs;
      ResultSetMetaData rmd;
	 
       
 	   String s1="select pid as ProductId,pdesc as ProductDescription,rate as Rate,pic as Photo  from carttemp";
	 
//   String s1="select billno as InvoiceNo,emailid as Email,fullname as Fullname,addr as Address,ph as Mobile,status as Status from payment2";

	
     rs = stmt.executeQuery(s1);
      
		out.println("<body><div align=center><strong><span class=style1>CART DETAILS</span></strong></div></body>");
      
        out.println("<table border=2 align=center width=50% bordercolor=blue ><tr>");
        
        rmd =rs.getMetaData();
        int n=rmd.getColumnCount();
        for(int i=1;i<=n;i++)
        {
		
            out.println("<td><b><font size=5>"+rmd.getColumnName(i)+"</font></b></td>");
			
        }
        String s="",s5="",s6="",s111="";
		int count=0;
		double sum=0;
		double temp=0;
		double mgst=0,mgsttemp=0;
		String pid="";
        while (rs.next())
        {
            out.println("<tr>");
            count++;
			
                for(int x=1;x<=n;x++)
                {
				/*	if(x==1)
					{
					 s=rs.getString(x);
					  out.println("<td><b>"+s+"</td>");
					  mgsttemp=mgsttemp+Float.parseFloat(s);
        	         } */
					 
					 	if(x==1)
					{
					 	s=rs.getString(x);
						pid=s;
					 out.println("<td><b>"+s+"</b></td>");
        	         } 
					else if(x==5)
					{
					 	s=rs.getString(x);
					  out.println("<td><b><img src="+s+" width=100 height=100></img></b></td>");
        	         } 
					else if(x==3)
					{
					 s111=rs.getString(x);
					temp=temp+Float.parseFloat(s111);
				 //  sum=sum+temp;
				  out.println("<td><b>"+s111+"</b></td>");
				  }
					
					  else 
					  {
					   s=rs.getString(x);
					                 out.println("<td><b>"+s+"</b></td>");
									 }
						
					}
					  
                   
	           out.println("<td><b><a href=delete.jsp?d="+pid+"><p style='color:black'>Delete from cart</p></b><a/></td>");
                
            
                
            
          out.println("</tr>");
        }
		session.setAttribute("gst",mgsttemp);
		out.println("</table><br>");
		out.println("<a href=payment.jsp?total="+temp+"&no="+count+"&gst="+mgsttemp+"><p style='color:black'>Proceed to Payment</p></a>");
		out.println("<a href=deleteall.jsp><p style='color:black'>Delete all from cart</p<a>");
		out.println("<h3  align=center ><p style='color:black'> Total items="+count+" Total Cart Value="+temp+"</p></h3>");
//		out.println("<h3  align=center > Total items="+count+" Total Cart Value GST="+mgsttemp+"%</h3>");
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
</p>
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
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
    <style type="text/css">
<!--
.style2 {font-size: 14px; }
-->
    </style>
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
                    <a class="navbar-brand" href="index.jsp">Chemical supply</a>
                </div>
				
                 <ul class="nav navbar-nav">
                        <li><a href="aepw.jsp">Edit Password</a></li>
                        <li><a href="aproduct.jsp">Add Product</a></li>
                         <li class="active" ><a href="eproduct.jsp">Edit Product</a></li>
                        <li><a href="history.jsp">Payment History</a></li>
                        <li><a href="dispatch.jsp">Dispatch Order View</a></li>
                          <li><a href="feedbackv.jsp">Feedback </a></li>
                        <li><a href="index.jsp">signout</a></li>
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
				
         <form name="form1" method="post" action="">
          <table width="391" height="456" border="0px" align="center">
            <tr>
              <td width="80"><div align="left" class="style1">Product ID </div></td>
              <td width="168"><label>
              
          <%
			    String s2="",s3="",s4="",s5="",s6="",s="";
			  
			  %>
                  <div align="left">
                    <input type="textfield" name="t1" id="textfield4" value="<%	 try
					
					{
							String id=request.getParameter("d");
							out.println(id);
							
							  Class.forName("com.mysql.jdbc.Driver");
	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nursery2020","root","mysql");
	      Statement stmt=con.createStatement();
         ResultSet rs;
    

	 
	   String s1="select * from product where pid="+"'"+id+"'";
	   //out.println(s1);
	   rs = stmt.executeQuery(s1);
	 
	 while(rs.next())
		{
	
		s2=rs.getString("pdesc");
		s3=rs.getString("rate");
		s4=rs.getString("pic");
		s5=rs.getString("Category");
		s6=rs.getString("gst");
		
		
		}
					}
					
					 catch(Exception e)
    {
        
      out.println(e);
    }
					 %>" />
                  </div>
              </label></td>
              <td width="17" rowspan="5">&nbsp;</td>
            </tr>
            <tr>
              <td><div align="left" class="style2">Description</div></td>
  <td><label>
                  <div align="left">
                    <input name="t2" type="text" id="t2" value="<% out.println(s2); %>"/>
                  </div>
                </label></td>
            </tr>
            <tr>
              <td><div align="left" class="style2">Rate</div></td>
  <td><label>
                  <div align="left">
                    <input name="t3" type="text" id="t3" value="<% out.println(s3); %>"/>
                  </div>
                </label></td>
            </tr>
            <tr>
              <td><div align="left" class="style2">Photo</div></td>
    <td><div align="left">
                  <input name="t4" id="t4" required="required" type="file"/>
              </div></td>
            </tr>
            <tr>
              <td><div align="left" class="style2">Category</div></td>
  <td><label>
                  <div align="left">
                    <select name="t5" id="t5">
                      <option value="sulfuric acid">sulfuric acid</option>
                      <option value="Zinc">Zinc</option>
                      <option value="Sodiun Hydroxide">Sodiun Hydroxide</option>
                      <option value="Nitric Acid">Nitric Acid</option>
                      <option value="Acetic Acid">Acetic Acid</option>
                    
                    </select>
                  </div>
                </label></td>
            </tr>
            <tr>
              <td><div align="left" class="style2">GST % </div></td>
    <td><div align="left">
                  <input name="t6" type="text" id="t6" value="<% out.println(s6); %>"/>
              </div></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td colspan="3"><label>
                  
                <div align="center">
                  <input type="submit" name="Submit" value="Submit" />
                  <input type="reset" name="Submit2" value="Reset" />
                  </div>
                </label>
                  <label>
                  <div align="left"></div>
                </label>              </td>
            </tr>
          </table>
          </form>
        <p align="center"> <%@page import ="java.sql.*"%>
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
         //String t7=request.getParameter("t7").trim();
        
        Statement stmt=con.createStatement();
		       
   String ss="Update product set pdesc="+"'"+t2+"'"+",rate="+"'"+t3+"'"+",pic="+"'"+t4+"'"+",gst="+"'"+t6+"'"+" where pid="+"'"+t1+"'";
	 out.println(ss);
	 stmt.executeUpdate(ss);
      
            con.close(); 
			out.println("<h1 style='color:red'>SUCCESFULLY Added</h1>");
            //response.sendRedirect("http://localhost:8084/Quickmail/succsignup.html");
    }
	
	/*else
	{
	out.println("<h1 style='color:red'>Something Wrong</h1>");
	
	}*/
		
}
    catch(Exception e)
    {
      out.println("Exception occured" +e);
    
	}
%></h2>
</div>
			
<p>
			  <!-- about us slider -->
			  
			  </section>
</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p>
			  <!--/#bottom-->
			  
                                            </p>
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
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html class="not-ie" lang="en"> <!--<![endif]-->
<!--
	ucorpora by freshdesignweb.com
	Twitter: https://twitter.com/freshdesignweb
	https://www.freshdesignweb.com/ucorpora/
-->
<head>
	<!-- Basic Meta Tags -->
  <meta charset="utf-8">
<title>Ucorpora Blog Detail</title>
	<meta name="description" content="ucorpora blog detail - Free Business Corporate HTML Template">
	<meta name="keywords" content="ucorpora, ucorpora blog detail, theme, template, corporate, clean, modern, bootstrap, creative, design">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!--[if (gte IE 9)|!(IE)]>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
  <![endif]--> 

  <!-- Favicon -->
  <link href="file:///D|/JavaProjects-2020/Fashionhub/web/img/favicon.ico" rel="icon" type="image/png">

  <!-- Styles -->
  <link href="file:///D|/JavaProjects-2020/Fashionhub/web/css/styles.css" rel="stylesheet">
  <link href="file:///D|/JavaProjects-2020/Fashionhub/web/css/bootstrap-override.css" rel="stylesheet">

  <!-- Font Avesome Styles -->
  <link href="file:///D|/JavaProjects-2020/Fashionhub/web/css/font-awesome/font-awesome.css" rel="stylesheet">
	<!--[if IE 7]>
		<link href="css/font-awesome/font-awesome-ie7.min.css" rel="stylesheet">
	<![endif]-->

  <!-- FlexSlider Style -->
  <link rel="stylesheet" href="file:///D|/JavaProjects-2020/Fashionhub/web/css/flexslider.css" type="text/css" media="screen">

	<!-- Internet Explorer condition - HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->   

    <style type="text/css">
<!--
.style1 {color: #000000}
-->
    </style>
</head>       
<body>
  <!-- Header -->
  <header id="header">
    <div class="container">
      <div class="row t-container">

        <!-- Logo -->
         <div class="span3">
          <div class="logo">
            <a href="file:///D|/JavaProjects-2020/Fashionhub/web/index.jsp"><<h3>Aishwarya Hi-Tech.Com</h3></a>
          </div>            
        </div>

        <div class="span9">
          <div class="row space60"></div>
             <nav id="nav" role="navigation">
               	
	            <ul class="clearfix"> 
              	  <li><a href="file:///D|/JavaProjects-2020/Fashionhub/web/aproduct.jsp">Add Product</a></li>
                   <li><a href="file:///D|/JavaProjects-2020/Fashionhub/web/eproduct.jsp">Edit Product</a></li>
                  <li><a href="file:///D|/JavaProjects-2020/Fashionhub/web/history.jsp">Payment History</a></li>
                  <li><a href="file:///D|/JavaProjects-2020/Fashionhub/web/dispatch.jsp">Dispatch Order </a></li>            
                <li><a href="file:///D|/JavaProjects-2020/Fashionhub/web/index.jsp" >Signout</a></li>
               <%-- <li><a href="components.jsp">Products</a>
  			      <ul> <!-- Submenu -->
                      <li><a href="components.htm" title="">Belts</a></li>
                      <li><a href="blog.htm" title="">Buckles</a></li>
                    <li><a href="blog-detail.htm" title="">Buttons</a></li>
  		         </ul> <!-- End Submenu -->      
               </li>--%>
	           </ul>
          </nav>
        </div> 
      </div>
       <div class="row space40"></div>
       
    </div> 
</header><!-- Header End -->

<!-- Titlebar
================================================== -->
<section id="titlebar">
	<!-- Container -->
	<div class="container">

	 
	  <div class="eight columns">
			<h3 class="left">Admin Page</h3>
           
		
		

	</div>
	<!-- Container / End -->
</section>

  <!-- Content -->
  <div id="content">
  
    <div class="container">
        <div class="row"><!-- Content End -->
        <div style="width:500px; alignment:center">
        <h1 align="center">Delete Product</h1>
        <p align="center">
          <%@page import ="java.sql.*"%>
          <%
try
{
    
    
      String s=request.getParameter("d").trim();
	        //String t=request.getParameter("c").trim();

    
       Class.forName("com.mysql.jdbc.Driver");
	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nursery2020","root","mysql"); 
      Statement stmt=con.createStatement();
      //ResultSet rs;
      String s1="delete from product where pid="+"'"+s+"'";
      out.println(s1);
      
      stmt.executeUpdate(s1);
     
     // rs.close();
     
      stmt.close();
    
      con.close();
		out.println("<script> alert('Item Deleted Successfully..'); </script>");
		//out.println("<a href=eproduct.jsp>Return to Edit Page</a>");
	response.sendRedirect("http://localhost:8080/onlinenursery2020/eproduct.jsp");

		
  
    
    
}
  catch(Exception e)
    {
      
      out.println(e);
    }
%>
        </p>
        <p>&nbsp;</p>
        </div>
 <!-- Footer -->
  <footer id="footer">
          
         
        <div class="span6 right">
          &copy; 2020. All rights reserved.
        </div>
      </div>

    </div>
  </footer>
  <!-- Footer End -->

  <!-- JavaScripts -->
  <script type="text/javascript" src="file:///D|/JavaProjects-2020/Fashionhub/web/js/jquery-1.8.3.min.js"></script> 
<script type="text/javascript" src="file:///D|/JavaProjects-2020/Fashionhub/web/js/bootstrap.min.js"></script>  
<script type="text/javascript" src="file:///D|/JavaProjects-2020/Fashionhub/web/js/functions.js"></script>
<script type="text/javascript" defer src="file:///D|/JavaProjects-2020/Fashionhub/web/js/jquery.flexslider.js"></script>

</body>
</html>
  

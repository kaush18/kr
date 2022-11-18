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
                    <a class="navbar-brand" href="index.jsp">Chemical supply</a>
                </div>
				
               <ul class="nav navbar-nav"> <li><a href="aepw.jsp">Edit Password</a></li>
                       
                        <li class="active"><a href="aproduct.jsp">Add Product</a></li>
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
				<h2>Add Product</h2>
				<form id="form1" name="form1" method="post" action="">
				  <table width="391" height="456" align="center">
                    <tr>
                      <td width="80"><div align="left">Product ID </div></td>
                      <td width="168"><label>
                          <div align="left">
                            <input type="textfield" name="t1" id="textfield4" value="<%	  	  Class.forName("com.mysql.jdbc.Driver");
	  Connection cons=DriverManager.getConnection("jdbc:mysql://localhost:3306/nursery2020","root","mysql");  
	      Statement stmt=cons.createStatement();
         ResultSet rs;
         String s5="";
			 int cnt=1;
			           rs=stmt.executeQuery("select * from  product");
        
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
                          </div>
                        </label></td>
                      <td width="168" rowspan="5"><div align="center"><img src="images/blog/girl.png" width="85" height="85" /></div></td>
                    </tr>
                    <tr>
                      <td><div align="left">Description</div></td>
                      <td><label>
                          <div align="left">
                            <textarea name="t2" id="t2"></textarea>
                          </div>
                        </label></td>
                    </tr>
                    <tr>
                      <td><div align="left">Rate</div></td>
                      <td><label>
                          <div align="left">
                            <input name="t3" type="number" id="t3" required="required"/>
                          </div>
                        </label></td>
                    </tr>
                    <tr>
                      <td><div align="left">Photo</div></td>
                      <td><div align="left">
                          <input name="t4" id="t4" required="required" type="file"/>
                      </div></td>
                    </tr>
                    <tr>
                      <td><div align="left">Category</div></td>
                      <td><label>
                          <div align="left">
                            <select name="t5" id="t5">
                              <option value="Sulfuric Acid">Sulfuric Acid</option>
                              <option value="Zinc">Zinc</option>
                              <option value="Sodiun Hydroxide">Sodiun Hydroxide</option>
							  <option value="Nitric Acid">Nitric Acid</option>
							  <option value="Acetic Acid">Acetic Acid</option>
							  
                            </select>
                          </div>
                        </label></td>
                    </tr>
                    <tr>
                      <td><div align="left">GST % </div></td>
                      <td><div align="left">
                          <input name="t6" type="number" id="t6" required="required"/>
                      </div></td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td colspan="3"><label>
                          <div align="left">
                            <input type="submit" name="Submit" value="Submit" />
                          </div>
                        </label>
                          <label>
                          <div align="left">
                            <input type="reset" name="Submit2" value="Reset" />
                          </div>
                        </label>                      </td>
                    </tr>
                  </table>
              </form>
				<p class="lead"> <%@page import ="java.sql.*"%>
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
        
        //Statement stmt=con.createStatement();
		       
       
        PreparedStatement pstmt=con.prepareStatement("insert into product values(?,?,?,?,?,?)");   
        	pstmt.setString(1,t1);
            pstmt.setString(2,t2);
            pstmt.setString(3,t3);
            pstmt.setString(4,t4);
            pstmt.setString(5,t5);
            pstmt.setString(6,t6);
           
            
             pstmt.executeUpdate(); 
                    
            
            pstmt.close();  
            con.close(); 
			out.println("<h1 style='color:red'>SUCCESFULLY Added</h1>");
            //response.sendRedirect("http://localhost:8084/Quickmail/succsignup.html");
    }
	
	else
	{
	out.println("<h1 style='color:red'>Something Wrong</h1>");
	
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
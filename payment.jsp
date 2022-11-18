<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.util.*" errorPage="" %>
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
                        <li ><a href="feedback.jsp"> Feedback </a></li>
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
				<p> <%
	  			if(session.getAttribute("emailid").equals(""))
				{
						response.sendRedirect("index.jsp");
				}
				
	  %></p>
        <p align="center"><form id="form1" name="form1" method="post" action="">
  <p align="center"><strong>ORDER SUMMARY </strong></p>
  <p>&nbsp;</p>
  <table width="424" border="1" align="center">
    <tr>
      <td width="169">Invoice No. </td>
      <td width="239"><%
	  
	   Class.forName("com.mysql.jdbc.Driver");
	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nursery2020","root","mysql");
	      Statement stmt=con.createStatement();
         ResultSet rs;
         String s5="";
			 int cnt=1000;
			           rs=stmt.executeQuery("select * from payment2");
        
        
        while(rs.next())
        {
		cnt++;
         }
        rs.close();
		String s="";
		s=s.valueOf(cnt);
 Cookie cook1=new Cookie("invno",s);
                  cook1.setMaxAge(1200);
                response.addCookie(cook1);

	    
	   out.println(s);
		%>&nbsp;
      <input type="text" name="textfield3" value="<% out.println(s);%>" hidden/></td>
    </tr>
    <tr>
      <td>No. of Items </td>
      <td><%
	  String s1=request.getParameter("no");
	  out.println(s1);
	  Cookie cook2=new Cookie("noofitems",s1);
                  cook2.setMaxAge(1200);
                response.addCookie(cook2);
	  %>&nbsp;</td>
    </tr>
    <tr>
      <td>Total</td>
      <td><%String s2=request.getParameter("total");
	  out.println(s2);
	  Cookie cook3=new Cookie("totalbill",s2);
                  cook3.setMaxAge(1200);
                response.addCookie(cook3);%>&nbsp;</td>
    </tr>
    <tr>
      <td>GST value @ 12% </td>
      <td><% float mgst=0,gst=0;
	  		mgst=Float.parseFloat(s2);
			gst=mgst*.12f;
			out.println(gst);	
			
	   %>&nbsp;</td>
    </tr>
    <tr>
      <td>Total value with GST </td>
      <td>   <%  
	  				String ggst="";
					ggst=ggst.valueOf(gst);
					
					double total=Float.parseFloat(s2);
					double tgst=Float.parseFloat(ggst);
					double famt=total+gst;
					String ffamt="";
					ffamt=ffamt.valueOf(famt);
					out.println(famt);
					session.setAttribute("famt",ffamt);
	  
	     %>&nbsp;</td>
    </tr>
    <tr>
      <td>Mode</td>
      <td><label>
        <select name="select">
          <option value="Cash on delivery">Cash on delivery</option>
          <option value="By Card">By Card</option>
        </select>
      </label></td>
    </tr>
    <tr>
      <td>Date of delivery </td>
      <td><label>
        <input type="text" name="textfield2" value="<%Calendar  calendar = null;
	    calendar = Calendar.getInstance();
	    java.util.Date trialTime = new java.util.Date();
	    calendar.setTime(trialTime);	


	    int year = calendar.get(Calendar.YEAR);
	    int month = 1 + calendar.get(Calendar.MONTH);
	    
	    int dayofmonth = calendar.get(Calendar.DAY_OF_MONTH)+5;

	    String date = month + "/" + dayofmonth + "/" +  year;

 	    int hour = calendar.get(Calendar.HOUR_OF_DAY);
	    int min = calendar.get(Calendar.MINUTE);
	    int sec = calendar.get(Calendar.SECOND);
	    String dot1 = date +" "+ hour + ":" + min  ; 

	out.println(dot1); 
	session.setAttribute("dt",dot1); %>"/>
      </label></td>
    </tr>
    <tr>
      <td>Card No </td>
      <td><input name="textfield" type="text" maxlength="16" /></td>
    </tr>
    <tr>
      <td colspan="2"><div align="center">
        <label>
        <input name="Submit" type="submit" id="Submit" value="Place Order" />
        </label>
        <label>
        <input type="reset" name="Submit2" value="Reset" />
        </label>
      </div></td>
    </tr>
  </table>
  <p align="center">&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</form>

<%@page import ="java.sql.*"%>
<%
   
 if(request.getParameter("Submit")!= null)
	
   	{
try
{
     //    Class.forName("com.mysql.jdbc.Driver");
	 // Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion2019","root","mysql");
       	 String t1=" ",t2="",t3="",t4="",t5="";
		
		 Cookie cookies1[]=request.getCookies();
       Cookie cookie1;
      
      for(int i=0;i<cookies1.length;i++)
      {
          cookie1=cookies1[i];
		    if(cookie1.getName().equals("invno"))
              t1=cookies1[i].getValue();
			if(cookie1.getName().equals("noofitems"))
              t2=cookies1[i].getValue();  
            if(cookie1.getName().equals("totalbill"))
              t3=cookies1[i].getValue();      
      }
       
	     String t43=request.getParameter("textfield3").trim();
  t4=request.getParameter("select").trim();
	 t5=request.getParameter("textfield2").trim();
       
	   	 /* session.setAttribute("email",u);
				  session.setAttribute("fname",n);
				  session.setAttribute("addr",addr);
				  session.setAttribute("ph",mob);*/
	   
	   
	   
//        out.println(t1+","+t2+","+t3+","+t4+","+t5);
			String e=(String)  session.getAttribute("emailid");
	String n=(String)  session.getAttribute("fname");
		String a=(String)  session.getAttribute("addr");
			String m=(String) session.getAttribute("mobile");
			String dt=(String)  session.getAttribute("dt");
			

		
		PreparedStatement pstmt=con.prepareStatement("insert into payment2 values(?,?,?,?,?,?,?,?)");   
		
        	pstmt.setString(1,t43);
            pstmt.setString(2,dt);
            pstmt.setString(3,t3);
			
            pstmt.setString(4,e);
            pstmt.setString(5,n);
            pstmt.setString(6,a);
            pstmt.setString(7,m);
            pstmt.setString(8,"Ordered");
           
           
            
             pstmt.executeUpdate(); 
                    
            
            pstmt.close();  

		PreparedStatement pstmt1=con.prepareStatement("delete from carttemp");   
		
           
            
             pstmt1.executeUpdate(); 
                    
            
            pstmt1.close();  

            con.close(); 
		
out.println("<h1 style='color:red'>Order Placed Succcessfully...<br>Please Take a printout of this Page for future Reference</h1>");
    }
    catch(Exception e)
    {
      out.println("Exception occured" +e);
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
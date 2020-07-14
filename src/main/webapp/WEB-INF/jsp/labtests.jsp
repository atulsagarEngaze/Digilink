<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Appointments</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@100;200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@200;300;400;600;700;900&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/jsp/patient/css/app.css">
</head>

<body>
    <jsp:include page="header_p.jsp" />
   <jsp:include page="navbar_p.jsp" /> 
   <section class="dataContainer">
        <div class="pageHeader">
            <h1>Lab Tests</h1>
        </div>
        <div class="dataSection">
         
           <!-- <div class="filterSection mb-10" id="filter">
               
                <button class="btn btn-primary ml-auto mr-10 ">
                    Today
                </button>
                <button class="btn btn-default mr-10 ">
                    Upcoming
                </button>
             
            </div>-->
            <div id="scrollTable">
                <table class="themeTable" style="min-width: 100%;">
                    <tr>
						<th width="8%">ID</th>
                        <th width="24%">Lab Test Package</th>
                        <th width="15%">Type</th>
                        <th width="20%">Date &Time</th>
                        <th width="10%">Amount</th>
                        <th width="10%">Status</th>
						 <th>Action</th>
                    </tr>
                    <tr>
                       <td>
					   <a href="#">DK12345</a>
					   </td>
                        <td>
                            <div class="profileSec">
                                
                               Thyroid Profile Total Blood
                            </div>
                        </td>
                        <td>Home smaple Pickup</td>
                        
                        <td>
                            May 10, 2020<br />
                            11.00 AM - 11.15 AM
                        </td>
                        <td>
                            700
                        </td>
                      
                        <td>
                            <span class="completed">Ongoing</div>
                        </td>
						
						  <td>
						  <button class="btn btn-primary" onclick="location.href='labtest-confirmed.html';">Track Status</button>
                        </td>
                    </tr>
                    <tr>
                       <td>
					   <a href="#">DK123245</a>
					   </td>
                        <td>
                            <div class="profileSec">
                                
                               Women's Skincare Checkup
                            </div>
                        </td>
                        <td>Home smaple Pickup</td>
                        
                        <td>
                            May 10, 2020<br />
                            11.00 AM - 11.15 AM
                        </td>
                        <td>
                            3000
                        </td>
                      
                        <td>
                            <span class="cancelled">Cancelled</div>
                        </td>
						
						  <td>
						  <button class="btn btn-primary">Book Again</button>
                        </td>
                    </tr>
					<tr>
                       <td>
					   <a href="#">DK123451</a>
					   </td>
                        <td>
                            <div class="profileSec">
                                
                                Women's Skincare Checkup
                            </div>
                        </td>
                        <td>Home smaple Pickup</td>
                        
                        <td>
                            May 10, 2020<br />
                            11.00 AM - 11.15 AM
                        </td>
                        <td>
                            3000
                        </td>
                      
                        <td>
                            <span class="cancelled">Cancelled</div>
                        </td>
						
						  <td>
						  <button class="btn btn-primary">Book Again</button>
                        </td>
                    </tr>
                    
                </table>
            </div>
        </div>
    </section>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/jsp/patient/js/jquery.nicescroll.min.js"></script>
    <script src="${pageContext.request.contextPath}/jsp/patient/js/app.js"></script>
      <script>
        $(function () {
            $('#filter button').click(function () {
                $('.btn-primary').removeClass('btn-primary');
                $(this).removeClass('btn-default').addClass('btn-primary');
            })
        });
    </script>
</body>

</html>
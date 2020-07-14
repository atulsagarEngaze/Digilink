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
            <h1>Medical Records</h1>
			<button type="button" class="btn btn-primary ml-auto" data-toggle="modal" data-target="#myModal">Upload Records</button>
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
                     
                        <th width="25%">Title</th>
                        <th width="16%">Created by</th>
                        <th width="20%">Created Date</th>
                        <th width="14%">Type</th>
						 <th></th>
                    </tr>
                    <tr>
                       
                        <td>
                             Lab Reports
                        </td>
						
                        <td>Jacob</td>
                        
                        <td>
                            May 10, 2020<br />
                            11.00 AM - 11.15 AM
                        </td>
                        <td>
                            Reports
                        </td>
                      
                       
						  <td>
                          
							<button type="button" class="btn btn-default ml-auto" data-toggle="modal" data-target="#myModal">Edit</button>
							<button class="btn btn-default" onclick="location.href='';">Share</button>
							<button class="btn btn-default" onclick="location.href='';">Delete</button>
                        </td>
                    </tr>
					
					 <tr>
                       
                        <td>
                             Lab Reports
                        </td>
						
                        <td>Jacob</td>
                        
                        <td>
                            May 10, 2020<br />
                            11.00 AM - 11.15 AM
                        </td>
                      
                        <td>
                           Priscription
                        </td>
						
						  <td>
                          
							<button type="button" class="btn btn-default ml-auto" data-toggle="modal" data-target="#myModal">Edit</button>
							<button class="btn btn-default" onclick="location.href='';">Share</button>
							<button class="btn btn-default" onclick="location.href='';">Delete</button>
                        </td>
                    </tr>
                   
                  
                    
                </table>
            </div>
			
			 <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-md">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Medical Records</h4>
        </div>
        <div class="modal-body">
		<div class="row">
		
			<div class="col-md-12">
			<label>Title</label>
			<input type="text" class="form-control" value="" placeholder="Title">
			</div>
			
			<div class="col-md-6">
			<label>Record For</label>
			<input type="text" class="form-control" value="" placeholder="Record For">
			</div>
			
			<div class="col-md-6">
			<label>Record Type</label>
			<select name="Select Record Type" class="form-control">
			  <option value="volvo">Reports</option>
			  <option value="volvo">Priscription</option>
			  <option value="saab">Other</option>
			</select>
			</div>
			
			<div class="col-md-6">
			<label>Date</label>
			<input type="text" class="form-control date" value="" placeholder="Date">
			</div>
			
			<div class="col-md-12 mt-10">
			<span style="font-size:16px; font-weight:bold;">Documents</span>
			<button class="btn btn-primary ml-auto" style="float:right">Add File</button>

			<div id="">
                <table class="themeTable" style="width:100%;">
                    <tr>
                     
                        <th width="80%">File Name</th>
						<th></th>
                    </tr>
                    <tr>
                       
                        <td>

                             <a href="#">Blood Reports.pdf</a>
                           
                        </td>
						
						
						
						<td width="10%">

                                <a href="#"><img src="images/deleteIcon.png"></a>
                           
                        </td>
                        
                    </tr>
					
					 <tr>
                       
                        <td>

                               <a href="#"> Reprots.jpg</a>
                           
                        </td>
						
						<td>

                               <a href="#"><img src="images/deleteIcon.png"></a>
                           
                        </td>
                        
                    </tr>
					
					 <tr>
                       
                        <td>

                              <a href="#">  Priscription.pdf</a>
                           
                        </td>
						
						<td>

                               <a href="doctor.html"><img src="images/deleteIcon.png"></a>
                           
                        </td>
                        
                    </tr>
                    
                </table>
            </div>
		
			
			
			
			</div>
		</div>
        </div>
        <div class="modal-footer">
			<button type="button" class="btn btn-primary" data-dismiss="modal">Submit</button>
			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
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
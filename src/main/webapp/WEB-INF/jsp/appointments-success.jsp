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
  <%--  <jsp:include page="navbar_p.jsp" /> --%>
 
    <section class="dataContainer" style="margin: 53px 0px 0px 0px;">
       <!-- <div class="pageHeader">
            <h1>Appointments Details</h1>
			
        </div>-->
		
		<div class="appointmentSeciton" style="max-width:1000px;margin:0 auto;">
		<div class="dataSection pt-50">
		
			
			
			<div class="col-md-6">
			<div class="row">
			<div class="ptdetails">
				<div class="col-md-6">
				<h4><img src="${pageContext.request.contextPath}/jsp/patient/images/calendar-icon.jpg"><b> On Jun 05, 2020</b></h4>
				<a href="#">Change Date & Time</a></p>
				</div>
				
				<div class="col-md-6">
				<h4><img src="${pageContext.request.contextPath}/jsp/patient/images/time-icon.jpg"><b> At 05:30 PM</b></h4>
				</div>
				<div class="col-md-12 border-bottom plr" >
				&nbsp;
				</div>
				</div>
			</div>
				
			
			<div class="appointmentSeciton">
	
			<h3>Doctor Details</h3>
			<h3><a href="#">Dr. M. R. Maria Lupin James</a></h3>
			<p>BDS, MDS - Oral Medicine and Radiology
Dentist, Dental Surgeon, Cosmetic/Aesthetic Dentist, Implantologist, Oral Medicine and Radiology</p>
<h3 class="mt-10">Consulting Fee: 300</h3>
<p class="mt-50"><a href="dashboardp.html">Go back to my results</a></p>


		
			</div>
			</div>
			
			<div class="col-md-6">
			<h1 class="successheading">Appointment Confirmed</h1>
			<h4 style="line-height:28px;">Your appointment ID is <b>DIGI01</b>, We have sent you an email and SMS with the details.</h4>
			<!-- <button class="btn btn-primary mt-10">Change Date & Time</button> -->
			<br>
			<h2>Patient Details</h2>
			<span>Patient Name</span>
			<p><a href="#">James</a></p>
			<span> Email</span>
			<p class="mtb-0">james@digiklinik.com</p>
			<span>Mobile</span>
			<p>+91 98988 98688</p>
			<button class="btn btn-primary mr-10">Reschedule Appointment</button>
			<button class="btn btn-primary">Cancel Appointment</button>
			</div>

		<div class="row">
			<div class="col-md-12">
				<!--<button class="btn btn-primary mt-10 mr-10">Reschedule</button> <button class="btn btn-primary mt-10"  data-toggle="modal" data-target="#cancelappointment">Cancel Appointment</button>-->
				
				<div class="modal fade" id="cancelappointment" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Cancel Appointment</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="row">
                <div class="col-md-12 col-sm-12">
                    <input type="text" class="form-control mb-10 searchBox" placeholder="Search">
                </div>

				   <div class="col-md-1 col-sm-3">
                    
                </div>
            </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Submit</button>
      </div>
    </div>
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
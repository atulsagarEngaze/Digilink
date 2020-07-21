<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Doctors List</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@100;200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@200;300;400;600;700;900&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/jsp/patient/css/site.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/jsp/patient/css/app.css">
    
     <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- http://code.jquery.com/jquery-1.7.1.min.js -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/jsp/admin/js/moment.min.js"></script>
    <script src="${pageContext.request.contextPath}/jsp/admin/js/bootstrap-datepicker.min.js"></script>
     <script src="${pageContext.request.contextPath}/jsp/admin/js/jquery.nicescroll.min.js"></script>
    <script src="${pageContext.request.contextPath}/jsp/admin/js/app.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    
	<style type="text/css">
	.nav-tabs>li.active>a, .nav-tabs>li.active>a:focus, .nav-tabs>li.active>a:hover {
    color: #555;
    cursor: default;
    background-color: #fff;
    border-bottom: 3px solid #3282ea !important;
    border-bottom-color: solid;
	}

	.nav-tabs>li.active>a, .nav-tabs>li.active>a:focus, .nav-tabs>li.active>a:hover {
		color: #555;
		cursor: default;
		background-color: #fff;
		border: 0px solid #ddd;
		border-bottom-color: transparent;
	}

	.timings li{
		display:inline-block;
		list-style:none;
		margin-right:10px;
		margin-top:4px;
		border-radius:5px;
		border:1px solid #ccc;
		padding:4px 15px;
	}

	.timings li:hover{
		background:#1a73e8;
		color:#fff;
		cursor:pointer
	}
	.timecontainer{
		padding:10px;
	}

	.nav-link {
		font-weight: !important;
		color:#333;
		text-align:center;
	}
	.nav-tabs .nav-item .active{
		color:#000 !important;
		font-weight:bold;
		border-bottom:3px solid #000;
	}
	
	.nav-tabs .nav-item .nav-link:hover{
		background:transparent;
		border:0px solid #ccc;
		border-bottom:3px solid #3282ea;
	}
	.nav-tabs{
		margin-left:55px;
	}
	
	.nav-item{
		margin-right:30px;
	}
</style>
<script type="text/javascript">
$(document).ready(function(){
	$('#selectCity').change(function(){
		var city = $(this).val();	
		$.ajax({
			type: 'GET',
			url: '${pageContext.request.contextPath}/patient/getDoctorList/' + city,
			success: function(result){
				var result = JSON.parse(result);
				var s ='<option value="------">------</option>';
				for(var i=0; i < result.length; i++){
					s +='<option value="'+result[i].address+'">'+result[i].address+'</option>'
				}
				$('#doctorSpecialities').html(s);
			}
		});
	});
	
	    $( "#searchBydocSpecialities" ).autocomplete({
	    	source : function(request, response) {
				$.ajax({
					url : "${pageContext.request.contextPath}/patient/searchBySpeciality/",
					dataType : "json",
					data : {
						q : request.term
					},
					success : function(data) {
						//alert(data);
						console.log(data);
						response(data);
					}
				});
			},
			minLength : 2,
			change: function(event, ui) {
				var city = $("#selectCity").val();
				var doctorSpecialities = $("#searchBydocSpecialities").val();
				var citySpecialist=city + "&" +doctorSpecialities;
				$.ajax({
					type: 'GET',
					url: '${pageContext.request.contextPath}/patient/getDoctorsData/' + citySpecialist,
					success: function(response){
						var response = JSON.parse(response);
						var trHTML = '';
				        $.each(response, function (i, item) {
				        	
				        	     trHTML +='<table style="width:900px;"><tr><td><div class="col-sm-2"><div class="doctorProfile"><img src="../images/doctor1.jpg" class="profileImg"><img src="../images/verified.png" class="verified"></div></div></td>&nbsp;';
								 trHTML +='<td><div class="col-sm-4"><div class="doctorsDetails"><h1>'+ item.firstname+ '</h1><p>'
									+ item.address+ '</p><p>₹350 Consultation fee at clinic</p><!--<span>477 feedback</span>--></div></div></td>&nbsp;&nbsp;&nbsp;';
								 trHTML += '<td><div class="col-sm-6"><div class="appionment"><a href="#">Available Today</a><button class="btn btn-primary">Book Appointment</button><button class="btn btn-default">Video consultation</button></div></div></td></tr></table>';
										});
									   $('#tableDataDisplay').html(trHTML);
										}
									});
								}
							});
					});
</script>
</head>

<body>
    <nav class="menuList">
        <div class="wrapper">
            <a href="index.html">
                My Hospitals
            </a>
            <ul>
                <li>
                    <a href="#">Doctor Appointments</a>
                </li>
                <li>
                    <a href="#">Lab Tests</a>
                </li>
                <li>
                    <a href="#">For Doctors</a>
                </li>
                <li>
                    <a href="#">Login/Signup</a>
                </li>
            </ul>
            <div class="lines">
                <div></div>
                <div></div>
                <div></div>
            </div>
        </div>
    </nav>
    <section class="serach">
        <div class="wrapper">
            <div class="row">
                <div class="col-sm-4">
                    <!-- <input type="text" class="form-control locationInput" placeholder="Bangalore"> -->
                    <select id="selectCity" class="form-control locationInput">
           			<option value="Select City">----Select City----</option>
			    		<c:forEach items="${cityList}" var="city">
			        		<option value="${city.cityName}">${city.cityName}</option>
			    		</c:forEach>
		  			</select>
                </div>
                <div class="col-sm-4">
                     <input type="text" class="form-control searchInput" placeholder="Search Doctor, Speciality, etc.." id="searchBydocSpecialities" name="searchBydocSpecialities">
                   <!--  <select id="searchBydocSpecialities" class="form-control searchInput">
		   
		   			</select> -->
                </div>
            </div>
        </div>
    </section>
    <section class="filter">
        <div class="wrapper">
            <div class="row">
                <div class="col-sm-3">
                    <select class="form-control">
                        <option value="Availably">Availably</option>
                    </select>
                </div>
                <div class="col-sm-2">
                    <select class="form-control" placeholder="Gender">
                        <option value="Gender">Gender</option>
                        <option value="male">male</option>
                        <option value="female">female</option>
                    </select>
                </div>
                <div class="col-sm-3">
                    <select class="form-control">
                        <option value="Consulttation Fee">Consulttation Fee</option>
                        <option value="500-1000">500-100</option>
                    </select>
                </div>
                <div class="col-sm-4">
                    <div class="row">
                        <div class="col-sm-3"><span>Sort By</span></div>
                        <div class="col-sm-8">
                            <select class="form-control">
                                <option value="Relevance">Relevance</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

   <!--  <div class="wrapper">
        <section class="doctorsList">
            <div class="row">
                <div class="col-sm-2">
                    <div class="doctorProfile">
                        <img src="images/doctor1.jpg" class="profileImg">
                        <img src="images/verified.png" class="verified">
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="doctorsDetails">
                        <h1>Dr. Darren Elder</h1>
                        <p>23 years experience overall
                        </p>
                        <p> Bellandur,Bangalore Smile Elements Dental</p>
                        <p> ₹350 Consultation fee at clinic</p>
                        <span>98%</span>
                        <a href="#">477 feedback</a>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="appionment">
                        <a href="#">Available Today</a>
                        <a href="#" class="btn btn-primary">Book Appointment</a>
                        <a href="#" class="btn btn-default">Video consultation</a>
                    </div>
                </div>
            </div>
			<div class="timeschedule" style="border-top:1px solid #efefef">
				 <div class="row">
					
					<div class="col-sm-8">
					
					<img src="images/arrow-left.png" class="pull-left" style="margin-bottom: -10px; position: relative; bottom: -12px;"><img src="images/arrow-right.png" class="pull-right" style="margin-bottom: -10px; position: relative; bottom: -12px;">
						<ul class="nav nav-tabs" id="myTab" role="tablist">
						  <li class="nav-item">
							<a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Today, 31 May<br>
No Slot Available</a>
						  </li>
						  <li class="nav-item">
							<a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Tomorrow, 01Jun<br>10 slots Available</a>
						  </li>
						  <li class="nav-item">
							<a class="nav-link" id="messages-tab" data-toggle="tab" href="#messages" role="tab" aria-controls="messages" aria-selected="false">Tues, 02 Jun<br>
10 slots Available</a>
						  </li>
						  <li class="nav-item">
							<a class="nav-link" id="settings-tab" data-toggle="tab" href="#settings" role="tab" aria-controls="settings" aria-selected="false">Tues, 03 June<br>
10 slots Available</a>
						  </li>
						  
						  
						  
						</ul>

						<div class="tab-content">
						  <div class="tab-pane active" id="home" role="tabpanel" aria-labelledby="home-tab">
							<div class="timecontainer">
								<div class="row">
									<div class="col-sm-2">Morning</div>
									<div class="col-sm-10"> <ul class="timings"><li>10:00 AM</li><li>10:20 AM</li><li>10:40 AM</li> <li>11:20 AM</li><li>11:40 AM</li><li>12:00 AM</li></ul></div>
								</div>
								<div class="row">
								<div class="col-sm-2">Afternoon</div>
									<div class="col-sm-10"> <ul class="timings"><li>01:00 PM</li><li>01:20 PM</li><li>01:40 PM</li><li>01:20 PM</li><li>01:40 PM</li></ul></div>
								</div>
								
								
								<div class="row">
									<div class="col-sm-2">Evening</div>
									<div class="col-sm-10"> <ul class="timings"><li>04:00 PM</li><li>04:20 PM</li><li>04:40 PM</li></ul></div>
								</div>
								
								<div class="row">
									<div class="col-sm-2">Night</div>
									<div class="col-sm-10"> <ul class="timings"><li>08:00 PM</li><li>08:20 PM</li><li>08:40 PM</li></ul></div>
								</div>
							</div>
						  </div>
						
						  <div class="tab-pane" id="profile" role="tabpanel" aria-labelledby="profile-tab">
						  
						  <div class="timecontainer">
								<div class="row">
									<div class="col-sm-2">Morning</div>
									<div class="col-sm-10"> <ul class="timings"><li>10:00 AM</li><li>10:20 AM</li><li>10:40 AM</li> <li>11:20 AM</li><li>11:40 AM</li><li>12:00 AM</li></ul></div>
								</div>
								
								
								<div class="row">
									<div class="col-sm-2">Evening</div>
									<div class="col-sm-10"> <ul class="timings"><li>04:00 PM</li><li>04:20 PM</li><li>04:40 PM</li></ul></div>
								</div>
								
								<div class="row">
									<div class="col-sm-2">Night</div>
									<div class="col-sm-10"> <ul class="timings"><li>08:00 PM</li><li>08:20 PM</li><li>08:40 PM</li></ul></div>
								</div>
							</div>
						  
						  
						  </div>
						  <div class="tab-pane" id="messages" role="tabpanel" aria-labelledby="messages-tab">
							<div class="timecontainer">
								<div class="row">
									<div class="col-sm-2">Morning</div>
									<div class="col-sm-10"> <ul class="timings"><li>10:00 AM</li><li>10:20 AM</li><li>10:40 AM</li> <li>11:20 AM</li><li>11:40 AM</li><li>12:00 AM</li></ul></div>
								</div>
								<div class="row">
								<div class="col-sm-2">Afternoon</div>
									<div class="col-sm-10"> <ul class="timings"><li>01:00 PM</li><li>01:20 PM</li><li>01:40 PM</li><li>01:20 PM</li><li>01:40 PM</li></ul></div>
								</div>
								
								
								<div class="row">
									<div class="col-sm-2">Evening</div>
									<div class="col-sm-10"> <ul class="timings"><li>04:00 PM</li><li>04:20 PM</li><li>04:40 PM</li></ul></div>
								</div>
								
								
							</div>
						  </div>
						  <div class="tab-pane" id="settings" role="tabpanel" aria-labelledby="settings-tab">
							<div class="timecontainer">
								<div class="row">
									<div class="col-sm-2">Morning</div>
									<div class="col-sm-10"> <ul class="timings"><li>10:00 AM</li><li>10:20 AM</li><li>10:40 AM</li> <li>11:20 AM</li><li>11:40 AM</li><li>12:00 AM</li></ul></div>
								</div>
								<div class="row">
								<div class="col-sm-2">Afternoon</div>
									<div class="col-sm-10"> <ul class="timings"><li>01:00 PM</li><li>01:20 PM</li><li>01:40 PM</li><li>01:20 PM</li><li>01:40 PM</li></ul></div>
								</div>
								
								
								
								
								<div class="row">
									<div class="col-sm-2">Night</div>
									<div class="col-sm-10"> <ul class="timings"><li>08:00 PM</li><li>08:20 PM</li><li>08:40 PM</li></ul></div>
								</div>
							</div>
						
							</div>
						</div>

						<script>
						  $(function () {
							$('#myTab li:last-child a').tab('show')
						  })
						</script>
					</div>
			
				</div>
			</div>
        </section>
		
    </div> -->
	
	
    <div class="wrapper">
        <section class="doctorsList">
            <div class="row">
                <div id="tableDataDisplay">
                <!-- <div class="col-sm-2">
                    <div class="doctorProfile">
                        <img src="images/doctor1.jpg" class="profileImg">
                        <img src="images/verified.png" class="verified">
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="doctorsDetails">
                     <h1>Dr. Darren Elder</h1>
                        <p>23 years experience overall
                        </p>
                        <p> Bellandur,Bangalore Smile Elements Dental</p>
                        <p> ₹350 Consultation fee at clinic</p>
                        <span>98%</span>
                        <a href="#">477 feedback</a>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="appionment">
                        <a href="#">Available Today</a>
                        <a href="#" class="btn btn-primary">Book Appointment</a>
                        <a href="#" class="btn btn-default">Video consultation</a>
                    </div>
                </div> -->
                </div>
            </div>
        </section>
    </div>
   <!--  <div class="wrapper">
        <section class="doctorsList">
            <div class="row">
                <div class="col-sm-2">
                    <div class="doctorProfile">
                        <img src="images/doctor1.jpg" class="profileImg">
                        <img src="images/verified.png" class="verified">
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="doctorsDetails">
                        <h1>Dr. Darren Elder</h1>
                        <p>23 years experience overall
                        </p>
                        <p> Bellandur,Bangalore Smile Elements Dental</p>
                        <p> ₹350 Consultation fee at clinic</p>
                        <span>98%</span>
                        <a href="#">477 feedback</a>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="appionment">
                        <a href="#">Available Today</a>
                        <a href="#" class="btn btn-primary">Book Appointment</a>
                        <a href="#" class="btn btn-default">Video consultation</a>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <div class="wrapper">
        <section class="doctorsList">
            <div class="row">
                <div class="col-sm-2">
                    <div class="doctorProfile">
                        <img src="images/doctor1.jpg" class="profileImg">
                        <img src="images/verified.png" class="verified">
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="doctorsDetails">
                        <h1>Dr. Darren Elder</h1>
                        <p>23 years experience overall
                        </p>
                        <p> Bellandur,Bangalore Smile Elements Dental</p>
                        <p> ₹350 Consultation fee at clinic</p>
                        <span>98%</span>
                        <a href="#">477 feedback</a>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="appionment">
                        <a href="#">Available Today</a>
                        <a href="#" class="btn btn-primary">Book Appointment</a>
                        <a href="#" class="btn btn-default">Video consultation</a>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <div class="wrapper">
        <section class="doctorsList">
            <div class="row">
                <div class="col-sm-2">
                    <div class="doctorProfile">
                        <img src="images/doctor1.jpg" class="profileImg">
                        <img src="images/verified.png" class="verified">
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="doctorsDetails">
                        <h1>Dr. Darren Elder</h1>
                        <p>23 years experience overall
                        </p>
                        <p> Bellandur,Bangalore Smile Elements Dental</p>
                        <p> ₹350 Consultation fee at clinic</p>
                        <span>98%</span>
                        <a href="#">477 feedback</a>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="appionment">
                        <a href="#">Available Today</a>
                        <a href="#" class="btn btn-primary">Book Appointment</a>
                        <a href="#" class="btn btn-default">Video consultation</a>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <div class="wrapper">
        <section class="doctorsList">
            <div class="row">
                <div class="col-sm-2">
                    <div class="doctorProfile">
                        <img src="images/doctor1.jpg" class="profileImg">
                        <img src="images/verified.png" class="verified">
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="doctorsDetails">
                        <h1>Dr. Darren Elder</h1>
                        <p>23 years experience overall
                        </p>
                        <p> Bellandur,Bangalore Smile Elements Dental</p>
                        <p> ₹350 Consultation fee at clinic</p>
                        <span>98%</span>
                        <a href="#">477 feedback</a>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="appionment">
                        <a href="#">Available Today</a>
                        <a href="#" class="btn btn-primary">Book Appointment</a>
                        <a href="#" class="btn btn-default">Video consultation</a>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <div class="wrapper">
        <section class="doctorsList">
            <div class="row">
                <div class="col-sm-2">
                    <div class="doctorProfile">
                        <img src="images/doctor1.jpg" class="profileImg">
                        <img src="images/verified.png" class="verified">
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="doctorsDetails">
                        <h1>Dr. Darren Elder</h1>
                        <p>23 years experience overall
                        </p>
                        <p> Bellandur,Bangalore Smile Elements Dental</p>
                        <p> ₹350 Consultation fee at clinic</p>
                        <span>98%</span>
                        <a href="#">477 feedback</a>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="appionment">
                        <a href="#">Available Today</a>
                        <a href="#" class="btn btn-primary">Book Appointment</a>
                        <a href="#" class="btn btn-default">Video consultation</a>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <div class="wrapper">
        <section class="doctorsList">
            <div class="row">
                <div class="col-sm-2">
                    <div class="doctorProfile">
                        <img src="images/doctor1.jpg" class="profileImg">
                        <img src="images/verified.png" class="verified">
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="doctorsDetails">
                        <h1>Dr. Darren Elder</h1>
                        <p>23 years experience overall
                        </p>
                        <p> Bellandur,Bangalore Smile Elements Dental</p>
                        <p> ₹350 Consultation fee at clinic</p>
                        <span>98%</span>
                        <a href="#">477 feedback</a>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="appionment">
                        <a href="#">Available Today</a>
                        <a href="#" class="btn btn-primary">Book Appointment</a>
                        <a href="#" class="btn btn-default">Video consultation</a>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <div class="wrapper">
        <section class="doctorsList">
            <div class="row">
                <div class="col-sm-2">
                    <div class="doctorProfile">
                        <img src="images/doctor1.jpg" class="profileImg">
                        <img src="images/verified.png" class="verified">
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="doctorsDetails">
                        <h1>Dr. Darren Elder</h1>
                        <p>23 years experience overall
                        </p>
                        <p> Bellandur,Bangalore Smile Elements Dental</p>
                        <p> ₹350 Consultation fee at clinic</p>
                        <span>98%</span>
                        <a href="#">477 feedback</a>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="appionment">
                        <a href="#">Available Today</a>
                        <a href="#" class="btn btn-primary">Book Appointment</a>
                        <a href="#" class="btn btn-default">Video consultation</a>
                    </div>
                </div>
            </div>
        </section>
    </div> -->

    <footer>
        <div class="wrapper">
            <div class="row">
                <p>Copyright © 2020, MyHospitals. All rights reserved.</p>
            </div>
        </div>
    </footer>
</body>
</html>
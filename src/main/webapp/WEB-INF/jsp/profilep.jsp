<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@100;200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@200;300;400;600;700;900&display=swap"
        rel="stylesheet">
         <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/jsp/patient/css/bootstrap-datepicker.min.css">
     
    <link rel="stylesheet" href="${pageContext.request.contextPath}/jsp/patient/css/app.css">
    <style type="text/css">
	.upload-btn-wrapper {
		position: relative;
		overflow: hidden;
		display: inline-flex;
	}


	.upload-btn-wrapper input[type=file] {
		position: absolute;
		left: 0;
		top: 0;
		opacity: 0;
	}
</style>
</head>

<body>
     <jsp:include page="header_p.jsp" />
   <jsp:include page="navbar_p.jsp" />
  
     <section class="dataContainer">
        <div class="pageHeader">
            <h1>Profile</h1>
        </div>
        <div class="dataSection">

	
            <div>
            
            <div class="col-sm-8">
            <form:form action="savePatient" modelAttribute="patient" method="POST" class="form-horizontal" encType='multipart/form-data'>
				<form:hidden path="patientId"  />
              

                <div class="patientFormGroup">
                    <div class="row">
                     
                    <div class="col-sm-6">
                        <label>Name</label>
                        <form:input type="text" path="name" class="form-control" placeholder="" />
                    </div>
                        <div class="col-sm-6">
                            <div class="inputGroup">
                                <label>Mobile</label>
                                <div class="row">
                                    <div class="col-sm-5">
                                        <select name="" id="" class="form-control">
                                            
                                            <option value="">+90(TUR)</option>
                                            <option value="">+91(IND)</option>
                                        </select>
                                    </div>
                                    <div class="col-sm-7">
                                        <form:input type="number" maxlength="3" path="mobile"  class="form-control" placeholder=""/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="inputGroup">
                                <label>Email Address</label>
                                <form:input type="text" path="email" class="form-control" placeholder="Enter Email Address"/>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="inputGroup">
                                <label>Gender</label>
                                <form:select path="gender" id="gender" class="form-control">
                                    <!-- <option value="male">Male</option>
                                    <option value="male">female</option> -->
                                    <form:options items="${genders}" />
                                </form:select>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="inputGroup">
                                <label>Date Of Birth</label>
                                <form:input type="text" path="dob"  class="form-control date" placeholder=""/>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="inputGroup">
                                <label>Blood Group*</label>
                                <form:select path="bloodGroup"  id="bloodGroup" class="form-control">
                                   <!--  <option value="male">A1+</option> -->
									 <form:options items="${bloodgrp}" />
                                </form:select>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="inputGroup">
                                <label>TimeZone</label>
                               <%--  <form:select path="timeZone" name="" id="" class="form-control">
                                    <option value="male">(UTC+05:30) Asia/Kolkata</option>

                                </form:select> --%>
                                
                                <form:select path="timeZone" name="" id="timeZone" class="form-control">
                                     <form:options items="${timezone}" />
                                </form:select>
                            </div>
                        </div>
                    </div>
                </div>

                <h1 class="form-title">
                    Address
                </h1>
                <div class="patientFormGroup">
                <form:hidden path="address.id" />
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="inputGroup">
                                <label>House No./ Street Name/ Area</label>
                                <form:input path="address.houseNo" type="text" class="form-control"/>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="inputGroup">
                                <label>Colony / Street / Locality</label>
                                <form:input path="address.colony" type="text" class="form-control"/>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="inputGroup">
                                <label>City</label>
                               <%--  <form:input path="address.city" type="text" class="form-control" placeholder="Enter City"/>
                               --%>   <form:select path="address.city" name=""  class="form-control">
                                     <form:options items="${city}" />
                                </form:select>
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <div class="inputGroup">
                                <label>State</label>
                                <form:input path="address.state" type="text" class="form-control" placeholder="Enter State"/>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="inputGroup">
                                <label>PinCode</label>
                                <form:input path="address.pincode" type="text" class="form-control" placeholder="Enter PinCode"/>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="inputGroup">
                                <label>Country</label>
                                <form:input path="address.country" type="text" class="form-control" placeholder="Enter Country"/>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="inputGroup">
                                <label>Landmark</label>
                                <form:input path="address.landmark" type="text" class="form-control" placeholder="Enter Landmark"/>
                            </div>
                        </div>
                    </div>
                </div>
                <h1 class="form-title">
                    Other Information
                </h1>
                <div class="patientFormGroup">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="inputGroup">
                                <label>Extra phone numbers</label>
                                <form:input path="extraPhone" type="text" class="form-control"/>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="inputGroup">
                                <label>Language</label>
                                <form:select path="language" name="" id="language" class="form-control">
                                     <form:options items="${lang}" />
                                </form:select>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="text-center mb-10">
                   <!--  <a href="#" class="btn btn-primary ml-auto mr-10"><span>Save Changes</span> </a>
                    -->
                     <button type="submit" class="btn btn-primary ml-auto mr-10" id="btn-submit" name="submit">Save Changes</button>
          			
                
                </div>
                </form:form>
            </div>
            
            <div class="col-sm-4">
				            <div class="row">
								<div class="col-sm-12">
				                   <form action="/doUploadPatient" method="post" enctype="multipart/form-data" onsubmit="imageCheck();">
				                     <div class="patientprofile mb-20">
				                        <img src="${pageContext.request.contextPath}/images/${userPatient.imagePath}">
				                    </div> 
				                    
				                     <div class="upload-btn-wrapper mt-10" >
											<button class="btn btn-primary mr-10">Browse</button>
											<input id="imageFile" type="file" name="file" />
											
									</div>
									 <button type="submit" id="uploadimage" class="btn btn-primary mr-10">Upload</button>
				                    </form>
				                </div>
				</div>
            </div>
            
                
                
                
            </div>
           
        </div>
    </section>
   <!--   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> 
     <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 
    <script src="${pageContext.request.contextPath}/jsp/doctor/js/jquery.nicescroll.min.js"></script>
   <%--  <script src="${pageContext.request.contextPath}/jsp/doctor/js/bootstrap-datepicker.min.js"></script>
   --%>  <script src="${pageContext.request.contextPath}/jsp/patient/js/app.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#filter button').click(function () {
                $('.btn-primary').removeClass('btn-primary');
                $(this).removeClass('btn-default').addClass('btn-primary');
            });
            
         
        });
    </script>
</body>

</html>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/jsp/doctor/css/bootstrap-datepicker.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/jsp/doctor/css/app.css">
</head>

<body>
     <jsp:include page="header_d.jsp" />
   <jsp:include page="navbar_d.jsp" />
  
 <section class="dataContainer">
        <div class="pageHeader">
            <h1>Schedule Timings</h1>
            
        </div>
        <div class="dataSection">
            <div class="row">
                <div class="col-sm-3">
                    <div class="calender" id="calender"></div>
                </div>
                <div class="col-sm-9">
                    <div class="row">
                        <div class="col-sm-3">
                            <div class="inputGroup">
                                <label>Timing Slot Duration </label>
                                <select name="time" id="time" class="form-control">
									<option value="30Mins">20 Mins</option>
                                    <option value="30Mins">30 Mins</option>
                                </select>
                            </div>
                        </div>
						  <div class="col-sm-3">
						  <input type="checkbox" value="one" /> <label> Same for the next 7 Days</label>
						  </div>
                    </div>
                    <hr class="mt-0 mb-20">
					<div class="row">
					<div class="col-md-12"> <label>Tuesday, July 08, 2020</label></div>
					</div>
					<hr class="mt-0 mb-3">
                    <div class="row">
                        <div class="col-sm-3">
                            <div class="inputGroup">
                               
                                <input type="checkbox" value="one" checked class="mr-4" />  Morning
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="inputGroup">
                              
                                <input placeholder="Start Time" type="text" class="form-control">
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="inputGroup">
                                
                                <input placeholder="End Time" type="text" class="form-control">
                            </div>
                        </div>
                        <div class="col-sm-3 ">
                            <button class="btn btn-primary mr-10">Add</button>
                            <button class="btn btn-primary">Delete All</button>
                        </div>
                    </div>
                    <hr class="mt-0 mb-20">
                    <div class="row">
                        <div class="col-sm-12">
                            <button type="button" class="btn btn-success mr-10">10.00 AM <span
                                    class="i-b ml-10">X</span></button>
                            <button type="button" class="btn btn-success mr-10">10.00 AM <span
                                    class="i-b ml-10">X</span></button>
                            <button type="button" class="btn btn-success mr-10">10.00 AM <span
                                    class="i-b ml-10">X</span></button>
                            <button type="button" class="btn btn-success mr-10">10.00 AM <span
                                    class="i-b ml-10">X</span></button>
                            <button type="button" class="btn btn-success">10.00 AM <span
                                    class="i-b ml-10">X</span></button>
                        </div>
                    </div>
                    <hr class="mtb-20">

                 
              <div class="row">
                        <div class="col-sm-3">
                            <div class="inputGroup">
                               
                                <input type="checkbox" value="one" checked class="mr-4" />  Afternoon
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="inputGroup">
                                
                                <input placeholder="Start Time" type="text" class="form-control">
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="inputGroup">
                                
                                <input placeholder="End Time" type="text" class="form-control">
                            </div>
                        </div>
                        <div class="col-sm-3 ">
                            <button class="btn btn-primary mr-10">Add</button>
                            <button class="btn btn-primary">Delete All</button>
                        </div>
                    </div>
                    <hr class="mt-0 mb-20">
                    <div class="row">
                        <div class="col-sm-12">
                            <button type="button" class="btn btn-success mr-10">10.00 AM <span
                                    class="i-b ml-10">X</span></button>
                            <button type="button" class="btn btn-success mr-10">10.00 AM <span
                                    class="i-b ml-10">X</span></button>
                            <button type="button" class="btn btn-success mr-10">10.00 AM <span
                                    class="i-b ml-10">X</span></button>
                            <button type="button" class="btn btn-success mr-10">10.00 AM <span
                                    class="i-b ml-10">X</span></button>
                            <button type="button" class="btn btn-success">10.00 AM <span
                                    class="i-b ml-10">X</span></button>
                        </div>
                    </div>
                    <hr class="mtb-20">
					
					 <div class="row">
                        <div class="col-sm-3">
                            <div class="inputGroup">
                               
                                <input type="checkbox" value="one" checked class="mr-4" />  Evening
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="inputGroup">
                               
                                <input placeholder="Start Time" type="text" class="form-control">
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="inputGroup">
                                
                                <input placeholder="End Time" type="text" class="form-control">
                            </div>
                        </div>
                        <div class="col-sm-3 ">
                            <button class="btn btn-primary mr-10">Add</button>
                            <button class="btn btn-primary">Delete All</button>
                        </div>
                    </div>
                    <hr class="mt-0 mb-20">
                    <div class="row">
                        <div class="col-sm-12">
                            <button type="button" class="btn btn-success mr-10">10.00 AM <span
                                    class="i-b ml-10">X</span></button>
                            <button type="button" class="btn btn-success mr-10">10.00 AM <span
                                    class="i-b ml-10">X</span></button>
                            <button type="button" class="btn btn-success mr-10">10.00 AM <span
                                    class="i-b ml-10">X</span></button>
                            <button type="button" class="btn btn-success mr-10">10.00 AM <span
                                    class="i-b ml-10">X</span></button>
                            <button type="button" class="btn btn-success">10.00 AM <span
                                    class="i-b ml-10">X</span></button>
                        </div>
                    </div>
					
					
					
				  <hr class="mtb-20">
				  
				   <div class="row">
                        <div class="col-sm-3">
                            <div class="inputGroup">
                                <input type="checkbox" value="one" checked class="mr-4" />  Night
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="inputGroup">
                               
                                <input placeholder="Start Time" type="text" class="form-control">
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="inputGroup">
                               
                                <input placeholder="End Time" type="text" class="form-control">
                            </div>
                        </div>
                        <div class="col-sm-3 ">
                            <button class="btn btn-primary mr-10">Add</button>
                            <button class="btn btn-primary">Delete All</button>
                        </div>
                    </div>
                    <hr class="mt-0 mb-20">
                    <div class="row">
                        <div class="col-sm-12">
                            <button type="button" class="btn btn-success mr-10">10.00 AM <span
                                    class="i-b ml-10">X</span></button>
                            <button type="button" class="btn btn-success mr-10">10.00 AM <span
                                    class="i-b ml-10">X</span></button>
                            <button type="button" class="btn btn-success mr-10">10.00 AM <span
                                    class="i-b ml-10">X</span></button>
                            <button type="button" class="btn btn-success mr-10">10.00 AM <span
                                    class="i-b ml-10">X</span></button>
                            <button type="button" class="btn btn-success">10.00 AM <span
                                    class="i-b ml-10">X</span></button>
                        </div>
                    </div>
					
					
					
					
					 <hr class="mtb-20">
					
					
                    <div class="text-center">
                        <button class="btn btn-primary mr-10">Save</button>
                        <button class="btn btn-primary">Reset</button>
                    </div>
					
                </div>
            </div>
        </div>
    </section>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
     <script src="${pageContext.request.contextPath}/jsp/doctor/js/jquery.nicescroll.min.js"></script>
    <script src="${pageContext.request.contextPath}/jsp/doctor/js/bootstrap-datepicker.min.js"></script>
    <script src="${pageContext.request.contextPath}/jsp/doctor/js/app.js"></script>
    <script>
        $(function () {
            $('#filter button').click(function () {
                $('.btn-primary').removeClass('btn-primary');
                $(this).removeClass('btn-default').addClass('btn-primary');
            })
        });
        
        $input = $("#calender");
        $input.datepicker({
            format: 'dd MM yyyy'
        });
        $input.data('datepicker').hide = function () { };
        $input.datepicker('show');

    </script>
</body>

</html>
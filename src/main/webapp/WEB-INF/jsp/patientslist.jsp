<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patients List</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@100;200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@200;300;400;600;700;900&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/jsp/admin/css/bootstrap-datepicker.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/jsp/admin/css/app.css">
</head>

<body>
    <jsp:include page="header_dashboard.jsp" />
   <jsp:include page="navbar_dashboard.jsp" />

    <section class="dataContainer">
        <div class="pageHeader">
            <h1>Patients</h1>
            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Show or hide filter section"
                id="filterIcon" class="btn btn-primary ml-auto mr-10"><img src="${pageContext.request.contextPath}/jsp/admin/images/filterIcon.png"
                    class="mr-10" /><span>Filter</span> </a>
            <a href="createpatients" class="btn btn-primary"><img src="${pageContext.request.contextPath}/jsp/admin/images/addICon.png"
                    class="mr-10" /><span>Create</span> </a>
        </div>
        <section class="filters" id="filterSec">
            <div class="row">
                <div class="col-md-2 col-sm-3">
                    <input type="text" class="form-control mb-10 searchBox" placeholder="Search Patient ID">
                </div>
                <div class="col-md-2 col-sm-3">
                    <input type="text" class="form-control mb-10 searchBox" placeholder="Search Patient Name">
                </div>
                <div class="col-md-2 col-sm-3">
                    <input type="text" class="form-control mb-10 searchBox" placeholder="Location">
                </div>
                <div class="col-md-2 col-sm-3">
                    <input type="text" class="form-control mb-10 date" placeholder="Created Date">
                </div>
                <div class="col-md-2 col-sm-3">
                    <select class="form-control mb-10">
                        <option value="Select Status">Select Status</option>
                        <option value="Select Status">Select Status</option>
                        <option value="Select Status">Select Status</option>
                    </select>
                </div>
                <div class="col-md-2 col-sm-3">
                    <button class="btn btn-primary mb-10">Go</button>
                </div>
            </div>
        </section>
        <div class="dataSection">

           <!--  <section class="paginationSec">

                <p>Total Records: <span>200</span></p>
                <select class="form-control ml-auto" style="max-width: 200px;">
                    <option>10 Records Per Page</option>
                    <option>20 Records Per Page</option>
                    <option>50 Records Per Page</option>
                    <option>100 Records Per Page</option>
                    <option>All Records</option>
                </select>
                <a href="#" class="navPagination"><img src="images/prevIcon.png" alt=""></a>
                <span class="navPagination">1 To 10</span>
                <a href="#" class="navPagination">
                    <img src="images/nextIcon.png" alt="">
                </a>

            </section> -->
            <div id="scrollTable" style="max-height:300px;">
                <table class="themeTable" style="min-width: 1203px;">
                    <tr>
                        <th width="10%">Patient Id</th>
                        <th width="20%">Patient Name</th>
                      <!--   <th width="5%">Age</th> -->
                        <th width="10%">Location</th>
                        <th width="15%">Phone</th>
                        <th width="20%">Email</th>
                   <!--      <th width="10%">Created Date</th>
                        <th width="10%">Action</th> -->

                    </tr>
                      <c:forEach var="patient" items="${patientList}">
                        
                        <c:url var="deleteLink" value="">
					  </c:url>
					   <tr>
                        <td>MYD${patient.patientId}</td>
                        <td>
                            <div class="profileSec">
                                <div class="tableProfile">
                                    <img src="${pageContext.request.contextPath}/images/${patient.imagePath}">
                                </div>
                                <a href="">${patient.name}</a>
                            </div>
                        </td>
                        
                       
                        <td>${patient.address.houseNo}</td>
                        <td>${patient.mobile}</td>
                        <td><a href="#">${patient.email}</a></td>
                        
                    </tr>
					  
					  
                   </c:forEach>
                   <%--  <tr>
                        <td>MYD01</td>
                        <td>
                            <div class="profileSec">
                                <div class="tableProfile">
                                    <img src="${pageContext.request.contextPath}/jsp/admin/images/profile.jpg">
                                </div>
                                <a href="patient">Maria Lupin James</a>
                            </div>
                        </td>
                        <td>27 Yrs</td>
                       
                        <td>Bangalore</td>
                        <td>+91-9742225501</td>
                        <td><a href="#">yogeshwaranworld@gmail.com</a></td>
                        <td>May 10, 2020</td>
                       

                        <td>
                            <a href="#">
                                <img src="${pageContext.request.contextPath}/jsp/admin/images/activeIcon.png" class="mr-5" alt="">
                            </a>
                            <a href="#">
                                <img src="${pageContext.request.contextPath}/jsp/admin/images/deleteIcon.png" alt="">
                            </a>
                        </td>
                    </tr>

                   --%>


                </table>
            </div>
        </div>

    </section>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/jsp/admin/js/moment.min.js"></script>
    <script src="${pageContext.request.contextPath}/jsp/admin/js/bootstrap-datepicker.min.js"></script>
     <script src="${pageContext.request.contextPath}/jsp/admin/js/jquery.nicescroll.min.js"></script>
    <script src="${pageContext.request.contextPath}/jsp/admin/js/app.js"></script>
   

</body>

</html>
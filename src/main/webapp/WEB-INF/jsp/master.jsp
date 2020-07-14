<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Doctor Master</title>
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
            <h1> Master Table</h1>
        </div>
        <div class="addSpeciality">
        	<div class="col-sm-5">
        		<select id="category" class="form-control">
                   <option value="Category">Category</option>
                   <option value="Category List">Category List</option>
            </select>
        	</div>
        	<div class="col-sm-5">
        </div>
            
        	<button id="Search" class="btn btn-primary" id="addCategory">Search</button>
        </div>
         <div class="dataSection">
            <div id="scrollTable" style="max-height: 300px; overflow: hidden; outline: none;" tabindex="5000">
                <table class="themeTable" style="min-width: 1203px;">
              
                    <tr>
                        <th width="80%">Category Name</th>
                        <th></th>
                    </tr>
                        <c:forEach var="categoryType" items="${categoryTypeList}">
                        
                        <%-- <c:url var="deleteLink" value="/admin/delete/speciality">
						<c:param name="selectId" value="${master.selectId}" />
					  </c:url> --%>
                    <tr>
                        <td>${categoryType.category}</td>

                       <%--  <td class="text-right">
                            <a href="#">
                                <img src="${pageContext.request.contextPath}/jsp/admin/images/editIcon.png" class="mr-5" alt="">
                            </a>
                            <a href="#">
                                <img src="${pageContext.request.contextPath}/jsp/admin/images/activeIcon.png" class="mr-5" alt="">
                            </a>
                            <a href="${deleteLink}" onclick="if (!(confirm('Are you sure you want to delete this speciality?'))) return false">
                                <img src="${pageContext.request.contextPath}/jsp/admin/images/deleteIcon.png" alt="">
                            </a>
                        </td> --%>
                    </tr>
                     </c:forEach>
                 <%--   <tr>
                        <td>Dentist</td>

                        <td class="text-right">
                            <a href="#">
                                <img src="${pageContext.request.contextPath}/jsp/admin/images/editIcon.png" class="mr-5" alt="">
                            </a>
                            <a href="#">
                                <img src="${pageContext.request.contextPath}/jsp/admin/images/activeIcon.png" class="mr-5" alt="">
                            </a>
                            <a href="#">
                                <img src="${pageContext.request.contextPath}/jsp/admin/images/deleteIcon.png" alt="">
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>Cardiologist</td>

                        <td class="text-right">
                            <a href="#">
                                <img src="${pageContext.request.contextPath}/jsp/admin/images/editIcon.png" class="mr-5" alt="">
                            </a>
                            <a href="#">
                                <img src="${pageContext.request.contextPath}/jsp/admin/images/activeIcon.png" class="mr-5" alt="">
                            </a>
                            <a href="#">
                                <img src="${pageContext.request.contextPath}/jsp/admin/images/deleteIcon.png" alt="">
                            </a>
                        </td>
                    </tr>
                     <tr>
                        <td>Radiologist</td>

                        <td class="text-right">
                            <a href="#">
                                <img src="${pageContext.request.contextPath}/jsp/admin/images/editIcon.png" class="mr-5" alt="">
                            </a>
                            <a href="#">
                                <img src="${pageContext.request.contextPath}/jsp/admin/images/activeIcon.png" class="mr-5" alt="">
                            </a>
                            <a href="#">
                                <img src="${pageContext.request.contextPath}/jsp/admin/images/deleteIcon.png" alt="">
                            </a>
                        </td>
                    </tr> --%>




                </table>
            </div>
        </div>
     </section>

    <script src=" https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js">
    </script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/jsp/admin/js/moment.min.js"></script>
    <script src="${pageContext.request.contextPath}/jsp/admin/js/bootstrap-datepicker.min.js"></script>
     <script src="${pageContext.request.contextPath}/jsp/admin/js/jquery.nicescroll.min.js"></script>
    <script src="${pageContext.request.contextPath}/jsp/admin/js/app.js"></script>
    <script src="${pageContext.request.contextPath}/jsp/admin/js/master.js"></script>
   
</body>

</html>
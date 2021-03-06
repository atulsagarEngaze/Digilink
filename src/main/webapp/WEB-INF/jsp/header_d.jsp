<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <header class="primaryHeader">
        <div class="digilogo" ><img src="${pageContext.request.contextPath}/jsp/patient/images/digiklinik.png"/></div>
        <a href="#" class="navIcon" data-toggle="tooltip" title="Show and hide menu" data-placement="bottom">
            <img src="${pageContext.request.contextPath}/jsp/doctor/images/nav.png">
        </a>
        <a href="#" class="notificationIcon">
            <img src="${pageContext.request.contextPath}/jsp/doctor/images/bell.png">
        </a>
        <p>Welcome
            <span>${userDoctor.firstname}</span>
        </p>
        <div class="profileImage">
            <img style="width: 100%;height:40px" src="${pageContext.request.contextPath}/images/${doctor.profile}">
        </div>
    </header>
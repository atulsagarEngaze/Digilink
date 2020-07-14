<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

   <header class="primaryHeader">
       <div class="digilogo" ><img src="${pageContext.request.contextPath}/jsp/patient/images/digiklinik.png"/></div>
        <a href="#" class="navIcon" data-toggle="tooltip" title="Show and hide menu" data-placement="bottom">
            <img src="${pageContext.request.contextPath}/jsp/patient/images/nav.png">
        </a>
        
					<ul style="margin-left:auto"><li><a href="/patient/">
                        Doctor Appointments
                    </a>
					</li>
					
					<li>
					 <a href="#">Book Lab Tests</a>
					 </li>
				</ul>
       
        <p>Welcome
            <span>${userPatient.name}</span>
        </p>
        <div class="profileImage">
            <img src="${pageContext.request.contextPath}/images/${userPatient.imagePath}">
        </div>
    </header>
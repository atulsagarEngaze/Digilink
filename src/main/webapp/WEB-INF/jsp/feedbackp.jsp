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
            <h1>Feedback</h1>
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
                       
                        <td width="60%">
                           
							<p style="font-size:16px; font-weight:bold; padding:0px; margin:0px;">14 Nov 2019</p>
                             Feedback for Dr. M. R. Pujari
                        </td>
                       
						<td width="15%"><span class="cancelled">NOT PUBLISHED</span></td>
						  <td align="right">
							<button class="btn btn-default" onclick="location.href='#';">Edit</button>
							<button class="btn btn-default" onclick="location.href='#';">Delete</button>
							<button class="btn btn-default" onclick="location.href='#';">Upload Proof</button>
                        </td>
                    </tr>
					<tr>
					<td colspan="3" class="feedbackdata">
					<p><span class="recomend"><img src="${pageContext.request.contextPath}/jsp/patient/images/like-icon.png"> I recommend the doctor</span></p>
					I was having throbbing pain in my lower first molar teeth. I got it extracted due to extreme pain. I am feeling completely no pain now. After extraction of tooth and surgery. Thank you so much for your time Doctor. It is only because of you I am able to speak now and survive life smoothly. Still recovering just got surgery done yesterday. I'm strictly abiding your prescription and measures. I hope to see good results also waiting for tooth replacement. As suggested by you to wait for 4 weeks to get it healed. I am for that moment. Kudos to your exertion. I highly recommend this Dentist.
</td>
</tr>

<tr><td colspan="3">&nbsp;</td></tr>


    <tr>
                       
                        <td width="60%">
                           
							<p style="font-size:16px; font-weight:bold; padding:0px; margin:0px;">14 Nov 2019</p>
                             Feedback for Dr. M. R. Pujari
                        </td>
                       
						<td width="15%"><span class="cancelled">NOT PUBLISHED</span></td>
						  <td align="right">
							<button class="btn btn-default" onclick="location.href='#';">Edit</button>
							<button class="btn btn-default" onclick="location.href='#';">Delete</button>
							<button class="btn btn-default" onclick="location.href='#';">Upload Proof</button>
                        </td>
                    </tr>
					<tr>
					<td colspan="3" class="feedbackdata">
					<p><span class="recomend"><img src="${pageContext.request.contextPath}/jsp/patient/images/like-icon.png"> I recommend the doctor</span></p>
					I was having throbbing pain in my lower first molar teeth. I got it extracted due to extreme pain. I am feeling completely no pain now. After extraction of tooth and surgery. Thank you so much for your time Doctor. It is only because of you I am able to speak now and survive life smoothly. Still recovering just got surgery done yesterday. I'm strictly abiding your prescription and measures. I hope to see good results also waiting for tooth replacement. As suggested by you to wait for 4 weeks to get it healed. I am for that moment. Kudos to your exertion. I highly recommend this Dentist.
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
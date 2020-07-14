$(function () {
            $('.loginTab a').click(function () {
                $('#verifyOtp').hide();
                $('.loginTab a').removeClass('loginTabActive')
                $(this).addClass('loginTabActive');
                $('.tabSec').hide();
                $(`#${$(this).attr('data-show')}`).show();
            });
            $('#sendOtp').click(function (e) {
                e.preventDefault();
            //    alert(validate_register_form());
           var register_formvalidate =     validate_register_form();
           if(!register_formvalidate)
        	   return false;
                $.post( 
                        "/rest/patientRegistration",
                        {"name": $("#name").val(),"mobile":$("#mobile").val(),"password":$("#password").val() },
                        function(data) {
                        	if(data.name==="exist"){
                        		alert("user already exists")
                        	}else{
                        	 $('#registerUser').hide();
             				if (data.mobile.length == 0){
             					$("#emailVerify").text(data.email);
             					$('.loginTab').hide();
             					$('#emailConfirm').show();
             					}
             				else{
             					$("#otpMob").text(data.mobile);
             					$('#verifyOtp').show();}
                        	}
                        }
                     );
            });
            
            $('#verifyOtpBtn').click(function(e){
            	$.post( 
                        "/rest/otpVerify",
                        {"otp": $("#otp").val(),"mobile":$("#mobile").val()},
                        function(data) {
                        	 if(data){
                        		 //alert(data);
								 $(location).attr('href',"/patient/dashboard");
							 }else{
								 alert("Invalid Otp");
							 }
                        }
                     );
            });
           
            
        });

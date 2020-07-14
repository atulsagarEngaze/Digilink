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
                $('#registerUser').hide();
                $('#verifyOtp').show();
            })
            
            $('#changePassword').click(function(e) {
            	var email_mobile = $('#newpass').val();
            	var pwd = $('#newpassconfirm').val();
            	if(email_mobile==''){
            		 alert("New Password Field should not be empty !");
            		    return false;
            	}
            	if(pwd==''){
            		 alert("New Confirm Password must be filled out");
            		    return false;
            	}
            	return true;
            });
        });

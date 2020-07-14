$(function(){
    $('[data-toggle="tooltip"]').tooltip();   
    $('.hasChild').click(function(){
        $(this).next('.childMenu').slideToggle();
    })
    $('.navIcon').click(function(){
        $('.navigation').toggleClass('navigationClose')
        $('.dataContainer').toggleClass('dataContainerOpen')
    })
    $("#scrollTable").getNiceScroll().resize();
    $("#scrollTable").niceScroll({
        cursorcolor: "#333",
        cursorborder: "0px",
        cursorwidth: "8px",
        zindex: "9999"
    });
    $('#filterIcon').click(function(){
        $('#filterSec').slideToggle()
    });
    
  
   // $('.date').datepicker();
    $("#dob").datepicker({
        changeMonth: true,
        changeYear: true,
        maxDate: new Date()
     
      });
   
})
function imageCheck(){
	if($("#imageFile").val()==''){
	 alert("Please browse file to upload");	
	 return false;
	}
	else {return true;}
		//alert($("#imageFile").val());
}
$(function(){
    
	 $('#addspeciality').click(function(e){
     	$.post("/rest/addSpeciality",
                 {"speciality": $("#speciality").val()},
                 function(data) {
                 	 if(data){
                 		 alert("Record added !");
							 $(location).attr('href',"/admin/doctersmaster");
						 }else{
							 alert("Invalid Operation");
						 }
                 }
              );
     });
	 $('#addSpecialization').click(function(e){
	     	$.post("/rest/addSpecialization",
	                 {"specialization": $("#specialization").val()},
	                 function(data) {
	                 	 if(data){
	                 		 alert("Record added !");
								 $(location).attr('href',"/admin/specializationmaster");
							 }else{
								 alert("Invalid Operation");
							 }
	                 }
	              );
	     });
	 $('#addService').click(function(e){
	     	$.post("/rest/addService",
	                 {"service": $("#service").val()},
	                 function(data) {
	                 	 if(data){
	                 		 alert("Record added !");
								 $(location).attr('href',"/admin/servicemaster");
							 }else{
								 alert("Invalid Operation");
							 }
	                 }
	              );
	     });
	 $("select.form-control").change(function(){
	        var selectedCountry = $(this).children("option:selected").val();
	        alert("You have selected the country - " + selectedCountry);
	        $.post("/rest/getCategory",
	                 {"service": selectedCountry},
	                 function(data) {
	                 	 if(data){
	                 		 alert("Record added !");
								 $(location).attr('href',"/admin/servicemaster");
							 }else{
								 alert("Invalid Operation");
							 }
	                 }
	              );
			 
	    });
	 $('#Search').click(function(e){
		 $.post("/rest/getCategory",
                 {"service": $("#category").val()},
                 function(data) {
                 	 if(data){
                 		 alert("Record added !");
							 $(location).attr('href',"/admin/servicemaster");
						 }else{
							 alert("Invalid Operation");
						 }
                 }
              );
		 
		 alert("hello");
	 });
});
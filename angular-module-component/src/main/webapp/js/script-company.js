function readyFormAndInsertDatePickers(idInputDate) {
	$(document).ready(function() {
		insertDatePicker(idInputDate);		   
	});
}

function insertDatePicker(idInputDate){
	var pickerOpts = {
	        changeMonth: true,
	        changeYear: true,
	        showButtonPanel: false,
	        showOn: 'both',
	        buttonImage: "/imgs/calendar.gif",
	        buttonImageOnly: true
	    };
	
	 $(function() {
	        //create the date picker
	        $("#"+idInputDate).mask("99/99/9999");
	        $("#"+idInputDate).datepicker(pickerOpts);       
	    });  
}


function handleExceptionsInForm(data){
	var indice =0;
	var divMsgsErro = $("#divMsgsErro");
	var tagUl = divMsgsErro.find("ul");		
	tagUl.empty();
	
	if(data.error.length > 0){		
		divMsgsErro.removeAttr("style");		
		for(indice; indice < data.error.length; indice++){
			var tagLi = document.createElement("li");
			tagLi.appendChild(document.createTextNode(data.error[indice]));			
			tagUl.append(tagLi);  
		}
	}
};

function clearMsgsErrorForm(){
	var divMsgsErro = $("#formPrincipal").find("div#divMsgsErro");
	divMsgsErro.css("display","none");
	divMsgsErro.find("ul").empty();	
};

function showMsgSucesso(){
	document.getElementById("divMsgsSucesso").removeAttribute("style");
	var tagSpan = $("#divMsgsSucesso").find("span")[1];		
	//tagSpan.empty();
	tagSpan.append(document.createTextNode("Inclusão realizada com sucesso."));  	
};
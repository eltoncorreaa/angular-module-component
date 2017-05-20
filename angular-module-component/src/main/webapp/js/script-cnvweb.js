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

function readyFormEmpresa() {
	$(document).ready(function() {
		insertPagination();
	});
};

function insertPagination() {
	$('#tableEmpresa').footable();

	$('.clear-filter').click(function(e) {
		e.preventDefault();
		$('table.table-bordered').trigger('footable_clear_filter');
		$('.filter-status').val('');
	});

	$('.filter-status').change(function(e) {
		e.preventDefault();
		var filter = $(this).val();
		$('#filter').val($(this).text());
		$('table.table-bordered').trigger('footable_filter', {
			filter : filter
		});
	});
};

function handleExceptionsInForm(data){
	var indice =0;
	data.error = [ "O período inicial não pode ser maior que o período final" ];
	var errors = data.error || data.listError;

	if(errors.length > 0){
		var divMsgsErro = $("#formPrincipal").find("div#divMsgsErro");
		divMsgsErro.removeAttr("style");
	
		var tagUl = divMsgsErro.find("ul");		
		tagUl.empty();
		
		for(indice; indice < errors.length; indice++){
			var tagLi = document.createElement("li");
			tagLi.appendChild(document.createTextNode(errors[indice]));			
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
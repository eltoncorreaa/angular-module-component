angular.module('cnv-web').component('integracaoStarSec', {
	templateUrl : 'views/integracao-star-sec/integracao-star-sec.html',	
	controller : function IntegracaoStarSecController($http, $scope, $location) {
		
	var SERVER = "http://localhost:9090";		
	 this.filtro = {};
	 this.selected = -1;
	 this.solicitacaoRecuperada;
	 this.idRadioRecuperado;
	
	 this.showMessage = function(mensagem, index) {
	  	$("#idMensagemDestinoPara").val(mensagem);
	  	this.selected = index;
	  };
		
	  this.openModalConfirm = function(objetoRecuperado, idRadio) {
		$('#idModalConfirm').modal('show');
		this.solicitacaoRecuperada = objetoRecuperado;
		this.idRadioRecuperado = idRadio;
	   };
		  	
	  this.closeModalConfirm = function() {
		$('#idModalConfirm').modal('toggle');
		$('#'+ this.idRadioRecuperado).prop('checked', false);
	  };
		  	
	   this.efetuarBaixa = function() {
			var that = this;
			$('#idModalConfirm').modal('toggle');
			$http.put(SERVER + '/erroSocilitacao/updateStatus', this.solicitacaoRecuperada).then(function(data){
				$("#idMensagemDestinoPara").val('');
		    	that.onFormLoad();
		    });
		};

		this.onFormLoad = function() {
			var that = this;
			that.listSolicitation = [];
			that.listTypeSolicitation = [];
			that.statusSolicitation = [{id:"01", nome: "Pendente"},{id:"02", nome: "Erro"}];
			this.selected = -1;
				 
			$http.get(SERVER + '/erroSocilitacao/findAllError').then(function(data) {
			      that.listSolicitation = data.data.paginatedList;
			});
				 
			$http.get(SERVER + '/erroSocilitacao/findAllTypeSolicitation').then(function(data2) {
			      that.listTypeSolicitation = data2.data;
			});
		};
		this.onFormLoad();

		this.filtrar = function() {
		  	var that = this;
			that.listSolicitation = [];
			this.selected = -1;
			var filter = $.extend({}, this.filtro);
					  				  				  		
			$http.post(SERVER + '/erroSocilitacao/findByFilter', filter).then(function(data) {
			 	clearMsgsErrorForm();
				that.listSolicitation = data.data.paginatedList;
			}, function(data) {
				handleExceptionsInForm(data.data);
			});		  			  		
		};				
	}
});
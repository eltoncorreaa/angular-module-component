<%@ page language="java" contentType="text/html;"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags/templates"%>
<%@ taglib prefix="h" tagdir="/WEB-INF/tags/html"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>

<c:set var="title" scope="request">
	<s:message code="label.title.application" />
</c:set>

<c:set var="breadcrumb" scope="request">
</c:set>

<c:set var="exibirBarraFerramentas" scope="request" value="false" />
<c:set var="urlExportacao" scope="request" value="" />

<t:layout>	
	<div ng-app="ConvivenciaApp" ng-controller="EmpresaController as empresa" novalidate>
	<h:script src="/web/app/components/convivencia/convivencia/script-cnvweb.js" />	
	<script src="/web/app/app.js"></script>
	
		<t:filterForm ngclickFilter="empresa.filtrar();">
			<jsp:include page="form.jsp" />
		</t:filterForm>		
	
			<table id="tableEmpresa" class="table table-bordered" data-page-size="5">
				<tr>
					<th><s:message code="label.table.number.cliente"/></th>
					<th><s:message code="label.table.data"/></th>
					<th><s:message code="label.combobox.status"/></th>
					<th><s:message code="label.table.code.error"/></th>
					<th><s:message code="label.table.message.error"/> </th>					
					<th><s:message code="label.table.type.solicitation"/></th>
					<th><s:message code="label.table.last.update"/></th>
					<th><s:message code="label.table.user"/> </th>
					<th><s:message code="label.table.download"/></th>
				</tr>		
				<tr ng-repeat="e in empresa.listEmpresa" ng-click="empresa.showMessage(e.destinationMessageType, $index)" ng-class="{'rowSelected': empresa.selected == $index}">
					<td>{{e.customerNumber}}</td>
					<td>{{e.pendingDate | date:'dd/MM/yyyy HH:mm'}}</td>
					<td>{{e.status}}</td>
					<td>{{e.errorCode}}</td>
					<td>{{e.errorMessage}}</td>
					<td>{{e.sourceMessageType}}</td>
					<td>{{e.lastUpdate | date:'dd/MM/yyyy HH:mm'}}</td>
					<td>{{e.user}}</td>
					<td style="text-align:center;">					
					<input type="radio" name="gender" value="{{e.user}}" ng-disabled="e.status != 'Erro'" ng-click="empresa.openModalConfirm($index)" id="{{'idRadio'+$index}}"> 
					<jsp:include page="modalConfirm.jsp"/>					  					
					</td>					
				</tr>
					<tr>
						<td colspan="9">
							<div class="pagination pagination-centered"></div>
						</td>
					</tr>
			</table>		
		
		<div class="row-fluid">
			<div class="span12">
				<h:textArea showLabel="true" id="idMensagemDestinoPara" code="label.text.area.mensagem.destino.para"/>
			</div>
		</div>
				
			<script type="text/javascript" charset="utf-8">
		      readyFormEmpresa();	
			</script>	
		</div>		
</t:layout>
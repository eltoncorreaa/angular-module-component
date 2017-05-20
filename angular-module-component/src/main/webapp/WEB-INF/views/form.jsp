<%@ page language="java" contentType="text/html"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="h" tagdir="/WEB-INF/tags/html" %>

<div class="row-fluid">
	<div class="span3">
		<h:input id="nome" code="label.input.number.cliente" showLabel="true" ngmodel="empresa.filtro.customerNumber"/>
	</div>

 	<div class="span3">
			<h:combobox code="label.table.type.solicitation" showLabel="true"
				ngmodel="empresa.filtro.requestType" ngoptions="item.idSourceMessageType as item.descMessageType for item in empresa.listTypeSolicitation"
				id="comboTypeSolicitation"/>
	</div>
	
	<div class="span3">
		<label><spring:message code="label.input.period.start" /></label>
        <span class="input-group">
          <input type="text" class="form-control" style="min-height: 30px" uib-datepicker-popup="{{format}}" name="from" id="from" ng-model="empresa.filtro.initialDate" is-open="popup1.opened" datepicker-options="dateOptions" ng-required="false" close-text="Fechar" /> <!-- alt-input-formats="altInputFormats" /> -->
          <span class="input-group-btn">
            <button type="button" class="btn btn-default" ng-click="open1()"><i class="glyphicon glyphicon-calendar"></i></button>
          </span>
        </span>
    </div>
	
	<div class="span3">
		<label><spring:message code="label.input.period.end" /></label>
        <span class="input-group">
          <input type="text" class="form-control" style="min-height: 30px" name="to" id="to" uib-datepicker-popup="{{format}}" ng-model="empresa.filtro.finalDate" is-open="popup2.opened" datepicker-options="dateOptions" ng-required="false" close-text="Fechar" /> <!-- alt-input-formats="altInputFormats" /> -->
          <span class="input-group-btn">
            <button type="button" class="btn btn-default" ng-click="open2()"><i class="glyphicon glyphicon-calendar"></i></button>
          </span>
        </span>
	</div>
</div>

<div class="row-fluid">
	<div class="span3">
	<h:combobox code="label.combobox.status" showLabel="true"
				ngmodel="empresa.filtro.status" ngoptions="item.nome as item.nome for item in empresa.statusSolicitation" id="comboStatus"/>
	</div>
</div>
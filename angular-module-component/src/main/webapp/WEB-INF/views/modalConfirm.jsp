<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="h" tagdir="/WEB-INF/tags/html"%>

<div id="{{'idModalConfirm'+$index}}" class="modal fade" role="dialog"
	style="display: none;">
	<div class="modal-dialog modal-sm">
		<!-- Modal content -->
		<div class="row-fluid" align="center">
			<fieldset>
				<legend>
					<s:message code="label.modal.confirm.operation" />
				</legend>

				<button id="btnConfirmModalBaixa" type="button"
					class="btn btn-primary" title="<s:message code="botao.sim" />"
					ng-click="empresa.efetuarBaixa(e, $index)">
					<s:message code="botao.sim" />
				</button>
				<button id="btnNao" class="btn" type="button" ng-click="empresa.closeModalConfirm($index)"
					title="<s:message code='botao.nao' />">
					<s:message code='botao.nao' />
				</button>
				<br/>
			</fieldset>
		</div>
	</div>
</div>

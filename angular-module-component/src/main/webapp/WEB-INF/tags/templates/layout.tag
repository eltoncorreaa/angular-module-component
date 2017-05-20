<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="h" tagdir="/WEB-INF/tags/html" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="IE=6, IE=7, IE=8, IE=9, IE=10" />
    <title><s:message code="tituloJanela"/></title>

    <h:link type="image/x-icon" rel="icon" href="/web/assets/imagens/favicon.ico"/>
    <h:link type="image/x-icon" rel="shortcut icon" href="/web/assets/imagens/favicon.ico" />

	<h:link type="text/css" rel="stylesheet" href="/web/assets/css/libs/bootstrap.css" />
    <h:link type="text/css" rel="stylesheet" href="/web/assets/css/libs/bootstrap-responsive.css" />
    <h:link type="text/css" rel="stylesheet" href="/web/assets/css/libs/font-awesome.css" />
    <h:link type="text/css" rel="stylesheet" href="/web/assets/css/style.css" />
    <h:link type="text/css" rel="stylesheet" href="/web/assets/css/style-customizado.css" />
    <h:link type="text/css" rel="stylesheet" href="/web/assets/css/libs/jquery-ui-1.8.21.custom.css" />
	
    <!-- Biblioteca JQuery  -->
    <h:script type="text/javascript" src="/web/app/components/convivencia/libs/jquery-1.7.2.min.js" />
    <h:script type="text/javascript" src="/web/app/components/convivencia/libs/bootstrap.js" />
    <h:script type="text/javascript" src="/web/app/components/convivencia/script-extras.js" />
    <h:script type="text/javascript" src="/web/app/components/convivencia/libs/jquery-ui-1.8.21.custom.min.js" />
    <h:script type="text/javascript" src="/web/app/components/convivencia/libs/jquery.maskedinput-1.3.min.js" />
    <h:script type="text/javascript" src="/web/app/components/convivencia/libs/grid.locale.js" />
    <h:script type="text/javascript" src="/web/app/components/convivencia/libs/jquery.jqGrid.min.js" />
    <h:script type="text/javascript" src="/web/app/components/convivencia/libs/menu.js" />
    <h:script type="text/javascript" src="/web/app/components/convivencia/libs/jquery.ui.datepicker-BR.js"/>
    <h:script type="text/javascript" src="/web/app/components/convivencia/libs/jquery.textareaCounter.plugin.js"/>
    <h:script type="text/javascript" src="/web/app/components/convivencia/script.js"/>
    
    <!-- Biblioteca Angular  -->
    <h:script src="/web/assets/js/angular.min.js"></h:script>	
    <h:script src="/web/app/components/convivencia/convivencia/controller-cnvweb.js"></h:script>
	
	<!-- Biblioteca Paginacao  -->
   	<h:script type="text/javascript" src="/web/app/components/convivencia/libs/footable.js" />
   	<h:script type="text/javascript" src="/web/app/components/convivencia/libs/footable.paginate.js" />
    
    <!-- Redimensionador de texto -->
    <h:script type="text/javascript" src="/web/app/components/convivencia/libs/jquery.jfontsize-1.0.js"/>
    <h:script type="text/javascript" src="/web/app/components/convivencia/libs/jquery-extras.js"/>
    
</head>
<body>
   <%@include file="/WEB-INF/templates/cabecalho.jsp" %>
   <%@include file="/WEB-INF/templates/menu.jsp" %>
    
   <!-- inicio: conteudo da aplicacao -->
    <div class="container-fluid">
		<%@include file="/WEB-INF/templates/breadcrumb.jsp" %>
		<%@include file="/WEB-INF/templates/titulo.jsp" %>
		
		<jsp:doBody />
    </div>  
    <!-- fim: conteudo da aplicacao -->
</body>
</html>
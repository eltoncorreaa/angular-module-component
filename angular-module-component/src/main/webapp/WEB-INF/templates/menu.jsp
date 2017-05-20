<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>

<!-- inicio: menu da aplicacao-->
<div class="container-fluid">
<div class="yamm navbar" role="navigation">
	<div class="navbar-inner">
		<div class="row-fluid">

			<!-- .btn-navbar e usado como alternador para conteudo de barra de navegacao colapsavel -->
			<a class="btn btn-navbar" data-toggle="collapse"
				data-target=".nav-collapse"> <span class="icon-bar"></span> <span
				class="icon-bar"></span> <span class="icon-bar"></span>
			</a>

			<!-- Tenha certeza de deixar a marca do lado de fora se voce quiser que ela seja mostrada -->
			<h4><s:message code="menu.aplicacao"/> </h4>

			<!-- Tudo que voce queira escondido em 940px ou menos, coloque aqui dentro -->
			<div class="nav-collapse">
				<!-- .nav, .navbar-search, .navbar-form, etc -->
				
				<ul class="nav pull-left">
				<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">
						<i class="fa fa-home fa-1.5x"></i>
				</a>
				</li>
				<li class="dropdown">
					<a data-toggle="dropdown" class="dropdown-toggle" role="button" href="#" id="drop1">
						<s:message code="label.menu.relatorios" /> <b class="caret"></b>
					</a>
					</li>						
				</ul>

				<ul class="nav pull-right">
					<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
					<i class="fa fa-user"></i> 
					<s:message code="label.menu.ola.usuario"/></a>
					</li>
					
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#"><i class="fa fa-cog"></i></a>
						<ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
							<!-- Sair -->
							<li><a href="#"><s:message code="label.menu.sair"/></a></li>
						</ul></li>
				</ul>

			</div>

		</div>
	</div>
</div>
</div>
<!-- fim: menu da aplicacao-->

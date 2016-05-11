{% extends "layouts/_login.volt" %}

{% block content %}

<div class="login-box">
	<div class="login-logo">
		DIMTEC
		<small>Digital Media Technologies</small>		
	</div>
	<div class="login-box-body">
		<p class="login-box-msg">Iniciar sesi&oacute;n</p>
		{{ form('login', 'role': 'form', 'name': 'loginForm', 'ng-submit': 'submitForm(loginForm.$valid)', 'novalidate': '') }}
			<div class="form-group has-feedback" ng-class="{ 'has-error' : loginForm.email.$invalid && !loginForm.email.$pristine && submitted }">
				<input type="email" name="email" class="form-control" placeholder="Correo electr&oacute;nico" ng-model="email" ng-required="true">
				<i class="fa fa-envelope form-control-feedback"></i>
				<p ng-show="loginForm.email.$invalid && !loginForm.email.$pristine && submitted" class="help-block">Capture un correo electr&oacute;nico v&aacute;lido.</p>
			</div>
			
			<div class="form-group has-feedback" ng-class="{ 'has-error' : loginForm.password.$invalid && !loginForm.password.$pristine && submitted }">
				<input type="password" name="password" class="form-control" placeholder="Contrase&ntilde;a" ng-model="password" ng-required="true" ng-blur="submitted = true;">
				<i class="fa fa-key form-control-feedback"></i>
				<p ng-show="loginForm.password.$invalid && !loginForm.password.$pristine && submitted" class="help-block">Por favor capture su contrase&ntilde;a.</p>
			</div>
			
			<div class="row">
				<div class="col-xs-12">
					<button type="submit" class="btn btn-primary btn-block btn-flat" ng-click="submitted = true;" ng-disabled="loginForm.$invalid">Entrar</button>
				</div>
			</div>
		</form>
	</div>
</div>

<div class="container">
	<div class="row">
		<div class="col-sm-4 col-sm-offset-4">
			{{ content() }}
		</div>
	</div>
</div>

{% endblock %}
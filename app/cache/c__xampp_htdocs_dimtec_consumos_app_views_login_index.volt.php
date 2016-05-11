<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Dimtec</title>
        <!-- css -->
        <!-- css -->
<?php echo $this->tag->stylesheetLink('css/font-awesome.min.css'); ?>        
<?php echo $this->tag->stylesheetLink('css/bootstrap.min.css'); ?>
<?php echo $this->tag->stylesheetLink('css/AdminLTE.min.css'); ?>
<?php echo $this->tag->stylesheetLink('css/skins/skin-blue.min.css'); ?>
<?php echo $this->tag->stylesheetLink('css/style.css'); ?>


<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->      
        
        <!-- js -->
        <!-- js -->
<?php echo $this->tag->javascriptInclude('js/jQuery-2.1.4.min.js'); ?>
<?php echo $this->tag->javascriptInclude('js/bootstrap.min.js'); ?>
<?php echo $this->tag->javascriptInclude('js/angular.min.js'); ?>
<?php echo $this->tag->javascriptInclude('js/app.min.js'); ?>
        <?php echo $this->tag->javascriptInclude('js/login/app.js'); ?>  
    </head>
    <body class="hold-transition login-page" ng-app="validationApp" ng-controller="mainController">
        

<div class="login-box">
	<div class="login-logo">
		DIMTEC
		<small>Digital Media Technologies</small>		
	</div>
	<div class="login-box-body">
		<p class="login-box-msg">Iniciar sesi&oacute;n</p>
		<?php echo $this->tag->form(array('login', 'role' => 'form', 'name' => 'loginForm', 'ng-submit' => 'submitForm(loginForm.$valid)', 'novalidate' => '')); ?>
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
			<?php echo $this->getContent(); ?>
		</div>
	</div>
</div>

        
    </body>
</html>

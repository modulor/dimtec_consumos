<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Dimtec</title>
        <!-- css -->
        <?php echo $this->tag->stylesheetLink('css/materialize.min.css'); ?>
        <?php echo $this->tag->stylesheetLink('css/style.css'); ?>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    </head>
    <body class="light-blue darken-4 body-login">
        

<div class="section">
	<div class="containter">
		<div class="row">
			<div class="col m4 offset-m4">
				<div class="center-align">
					<?php echo $this->tag->imageInput(array('src' => 'img/logo-dimtec-white.png')); ?>
				</div>
				<div class="card blue darken-4">
					<div class="card-content grey lighten-5">
						<p class="card-title center-align">iniciar sesi&oacute;n</p>
						<?php echo $this->tag->form(array('login/', 'role' => 'form')); ?>
							<div class="row">
					        	<div class="input-field col s12">
									<i class="material-icons prefix">email</i>
									<input name="email" type="text" class="validate" placeholder="email">
						        </div> 
						        <div class="input-field col s12">
									<i class="material-icons prefix">vpn_key</i>
									<input name="password" type="password" class="validate" placeholder="password">
						        </div> 
						        <div class="input-field col s12 center-align">
						        	<button class="btn-floating btn-large waves-effect waves-light light-blue darken-4" type="submit" name="action">
						        		<i class="material-icons right">send</i>
								  	</button>
						        </div>
					      	</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


        <!-- js -->
        <?php echo $this->tag->javascriptInclude('js/jquery/jquery-2.1.4.min.js'); ?>
        <?php echo $this->tag->javascriptInclude('js/materialize.min.js'); ?>
    </body>
</html>

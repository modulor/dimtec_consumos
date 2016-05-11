{% extends "layouts/_dashboard.volt" %}

{% block content %}

{{content()}}

<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        Clientes
        <small>Nuevo</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li>Clientes</li>
        <li class="active">Nuevo</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-sm-6">
             
			<div class="box box-primary">
				<div class="box-header with-border">
					<h3 class="box-title">Informaci&oacute;n del cliente</h3>
				</div>

				{{ form('clientes/nuevo', 'role': 'form', 'name': 'clienteForm') }}
					<div class="box-body">
						<div class="form-group">
							<label for="emailInput">Correo electr&oacute;nico {{ message }}</label>
							<input type="email" name="email" class="form-control" id="emailInput">
						</div>
						<div class="form-group">
							<label for="passwordInput1">Contrase&ntilde;a</label>
							<input type="password" name="password" class="form-control" id="passwordInput1">
						</div>
						<div class="form-group">
							<label for="passwordInput2">Confirmar contrase&ntilde;a</label>
							<input type="password" name="password2" class="form-control" id="passwordInput2">
						</div>
						<div class="form-group">
							<label for="nombreInput">Nombre</label>
							<input type="text" name="nombre" class="form-control" id="nombreInput">
						</div>
					</div>
					<div class="box-footer">
						<button type="submit" class="btn btn-primary">Crear usuario</button>
					</div>
				</form>
			</div><!-- /.box -->
        </div>
    </div>
</section><!-- /.Left col -->

{% endblock %}
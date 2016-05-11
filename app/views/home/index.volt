{% extends "layouts/_dashboard.volt" %}

{% block content %}

{{content()}}

<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        Dashboard
        <small>Panel de control</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-lg-12">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum libero earum doloribus. Omnis aut, architecto velit rerum soluta, ratione unde, consectetur vero recusandae ea asperiores, consequuntur corrupti aperiam ipsa fugiat.</p>
        </div>
    </div>
</section><!-- /.Left col -->

{% endblock %}
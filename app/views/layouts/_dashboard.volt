<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Dimtec Tech</title>
        {{ stylesheet_link('css/datepicker/datepicker3.css') }}
        {{ stylesheet_link('css/daterangepicker/daterangepicker-bs3.css') }}
        {{ stylesheet_link('css/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css') }}
        {% include "layouts/_estilos_css.volt"  %}        
    </head>
    <body class="hold-transition skin-blue sidebar-mini"> 
        
        <div class="wrapper">
            <div class="wrapper">

                <header class="main-header">
                    <!-- logo -->
                    <a href="index.html" class="logo">                        
                        <span class="logo-mini"><b>Dimtec</b></span>
                        <span class="logo-lg"><b>Dimtec</b></span>
                    </a>
                    <!-- logo fin -->
                    
                    <!-- Header Navbar: style can be found in header.less -->
                    <nav class="navbar navbar-static-top" role="navigation">
                        <!-- Sidebar toggle button-->
                        <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                            <span class="sr-only">Toggle navigation</span>
                        </a>
                        <div class="navbar-custom-menu">
                            <ul class="nav navbar-nav">
                                <!-- User Account: style can be found in dropdown.less -->
                                <li class="dropdown user user-menu">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                        {{ image('img/icon-user.png', 'class': 'user-image') }}
                                        <span class="hidden-xs">Usuario</span>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <!-- User image -->
                                        <li class="user-header">
                                            {{ image('img/icon-user.png', 'class': 'img-circle') }}
                                            <p>
                                            Alexander Pierce - Web Developer
                                            </p>
                                        </li>
                                        <!-- Menu Footer-->
                                        <li class="user-footer">
                                            <div class="pull-left">
                                                <a href="#" class="btn btn-default btn-flat">Perfil</a>
                                            </div>
                                            <div class="pull-right">
                                                {{ link_to('login/logout', 'Salir', 'class': 'btn btn-default btn-flat') }}
                                            </div>
                                        </li>
                                    </ul>
                                </li>
                                <!-- Control Sidebar Toggle Button -->
                                <!--
                                <li>
                                    <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                                </li>
                                -->
                            </ul>
                        </div>
                    </nav>
                </header>
                <!-- Left side column. contains the logo and sidebar -->
                <aside class="main-sidebar">
                    <!-- sidebar: style can be found in sidebar.less -->
                    <section class="sidebar">
                        <!-- sidebar menu: : style can be found in sidebar.less -->
                        <ul class="sidebar-menu"> 
                            <li>
                                {{ link_to('home', '<i class="fa fa-th"></i> <span>Dashboard</span>') }}
                            </li>                           
                            <li class="treeview">
                                <a href="#">
                                    <i class="fa fa-users"></i> <span>Clientes</span> <i class="fa fa-angle-left pull-right"></i>
                                </a>
                                <ul class="treeview-menu">
                                    <li>{{ link_to('clientes/nuevo', '<i class="fa fa-angle-right"></i> Nuevo') }}</li>
                                    <li>{{ link_to('clientes/lista', '<i class="fa fa-angle-right"></i> Lista') }}</li>
                                </ul>
                            </li>                            
                        </ul>
                    </section>
                    <!-- /.sidebar -->
                </aside>

                <!-- Content Wrapper. Contains page content -->
                <div class="content-wrapper">

                    {% block content %}
                    {% endblock %}                    
                   
                </div><!-- /.content-wrapper -->
                <footer class="main-footer">
                    <strong>DIMTEC</strong> - Digital Media Technologies
                </footer>

                <!-- Control Sidebar -->
                <aside class="control-sidebar control-sidebar-dark">
                    <!-- Create the tabs -->
                    <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
                    <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
                    <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
                    </ul>
                    <!-- Tab panes -->
                    <div class="tab-content">
                    <!-- Home tab content -->
                    <div class="tab-pane" id="control-sidebar-home-tab">
                    <h3 class="control-sidebar-heading">Recent Activity</h3>
                    <ul class="control-sidebar-menu">
                    <li>
                    <a href="javascript::;">
                    <i class="menu-icon fa fa-birthday-cake bg-red"></i>
                    <div class="menu-info">
                    <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>
                    <p>Will be 23 on April 24th</p>
                    </div>
                    </a>
                    </li>
                    <li>
                    <a href="javascript::;">
                    <i class="menu-icon fa fa-user bg-yellow"></i>
                    <div class="menu-info">
                    <h4 class="control-sidebar-subheading">Frodo Updated His Profile</h4>
                    <p>New phone +1(800)555-1234</p>
                    </div>
                    </a>
                    </li>
                    <li>
                    <a href="javascript::;">
                    <i class="menu-icon fa fa-envelope-o bg-light-blue"></i>
                    <div class="menu-info">
                    <h4 class="control-sidebar-subheading">Nora Joined Mailing List</h4>
                    <p>nora@example.com</p>
                    </div>
                    </a>
                    </li>
                    <li>
                    <a href="javascript::;">
                    <i class="menu-icon fa fa-file-code-o bg-green"></i>
                    <div class="menu-info">
                    <h4 class="control-sidebar-subheading">Cron Job 254 Executed</h4>
                    <p>Execution time 5 seconds</p>
                    </div>
                    </a>
                    </li>
                    </ul><!-- /.control-sidebar-menu -->

                    <h3 class="control-sidebar-heading">Tasks Progress</h3>
                    <ul class="control-sidebar-menu">
                    <li>
                    <a href="javascript::;">
                    <h4 class="control-sidebar-subheading">
                    Custom Template Design
                    <span class="label label-danger pull-right">70%</span>
                    </h4>
                    <div class="progress progress-xxs">
                    <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
                    </div>
                    </a>
                    </li>
                    <li>
                    <a href="javascript::;">
                    <h4 class="control-sidebar-subheading">
                    Update Resume
                    <span class="label label-success pull-right">95%</span>
                    </h4>
                    <div class="progress progress-xxs">
                    <div class="progress-bar progress-bar-success" style="width: 95%"></div>
                    </div>
                    </a>
                    </li>
                    <li>
                    <a href="javascript::;">
                    <h4 class="control-sidebar-subheading">
                    Laravel Integration
                    <span class="label label-warning pull-right">50%</span>
                    </h4>
                    <div class="progress progress-xxs">
                    <div class="progress-bar progress-bar-warning" style="width: 50%"></div>
                    </div>
                    </a>
                    </li>
                    <li>
                    <a href="javascript::;">
                    <h4 class="control-sidebar-subheading">
                    Back End Framework
                    <span class="label label-primary pull-right">68%</span>
                    </h4>
                    <div class="progress progress-xxs">
                    <div class="progress-bar progress-bar-primary" style="width: 68%"></div>
                    </div>
                    </a>
                    </li>
                    </ul><!-- /.control-sidebar-menu -->

                    </div><!-- /.tab-pane -->
                    <!-- Stats tab content -->
                    <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div><!-- /.tab-pane -->
                    <!-- Settings tab content -->
                    <div class="tab-pane" id="control-sidebar-settings-tab">
                    <form method="post">
                    <h3 class="control-sidebar-heading">General Settings</h3>
                    <div class="form-group">
                    <label class="control-sidebar-subheading">
                    Report panel usage
                    <input type="checkbox" class="pull-right" checked>
                    </label>
                    <p>
                    Some information about this general settings option
                    </p>
                    </div><!-- /.form-group -->

                    <div class="form-group">
                    <label class="control-sidebar-subheading">
                    Allow mail redirect
                    <input type="checkbox" class="pull-right" checked>
                    </label>
                    <p>
                    Other sets of options are available
                    </p>
                    </div><!-- /.form-group -->

                    <div class="form-group">
                    <label class="control-sidebar-subheading">
                    Expose author name in posts
                    <input type="checkbox" class="pull-right" checked>
                    </label>
                    <p>
                    Allow the user to show his name in blog posts
                    </p>
                    </div><!-- /.form-group -->

                    <h3 class="control-sidebar-heading">Chat Settings</h3>

                    <div class="form-group">
                    <label class="control-sidebar-subheading">
                    Show me as online
                    <input type="checkbox" class="pull-right" checked>
                    </label>
                    </div><!-- /.form-group -->

                    <div class="form-group">
                    <label class="control-sidebar-subheading">
                    Turn off notifications
                    <input type="checkbox" class="pull-right">
                    </label>
                    </div><!-- /.form-group -->

                    <div class="form-group">
                    <label class="control-sidebar-subheading">
                    Delete chat history
                    <a href="javascript::;" class="text-red pull-right"><i class="fa fa-trash-o"></i></a>
                    </label>
                    </div><!-- /.form-group -->
                    </form>
                    </div><!-- /.tab-pane -->
                    </div>
                </aside><!-- /.control-sidebar -->
                <!-- Add the sidebar's background. This div must be placed
                immediately after the control sidebar -->
                <div class="control-sidebar-bg"></div>
            </div><!-- ./wrapper -->
        </div>         
        {% include "layouts/_js_footer.volt" %}        
        {{ javascript_include('https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js') }}
        {{ javascript_include('js/daterangepicker/daterangepicker.js') }}
        {{ javascript_include('js/datepicker/bootstrap-datepicker.js') }}
        {{ javascript_include('js/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js') }}    
    </body>
</html>

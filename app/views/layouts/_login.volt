<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Dimtec</title>
        <!-- css -->
        {% include "layouts/_estilos_css.volt" %}      
        
        <!-- js -->
        {% include "layouts/_js_footer.volt" %}
        {{ javascript_include('js/login/app.js') }}  
    </head>
    <body class="hold-transition login-page" ng-app="validationApp" ng-controller="mainController">
        {% block content %}
        {% endblock %}        
    </body>
</html>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Phalcon PHP Framework</title>
        {{ stylesheet_link("css/materialize.min.css", false) }}
    </head>
    <body>
        <div class="container">
            {{ content() }}
        </div>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        {{ javascript_include("js/jquery-2.1.4.min.js") }}
        {{ javascript_include("js/materialize.min.js") }}
    </body>
</html>

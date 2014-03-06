
<html>
    <head>
        <title>Pesquisa Sa&uacute;de</title>

    <head>
        <meta charset="utf-8">
        <!-- JQUERY --> 
        <link type="text/css"href="jquery-ui-1.10.3.custom/css/ui-lightness/jquery-ui-1.10.3.custom.css" rel="stylesheet" />
        <script type="text/javascript" src="jquery-ui-1.10.3.custom/js/jquery-1.9.1.js"></script>
        <script type="text/javascript" src="jquery-ui-1.10.3.custom/js/jquery-ui-1.10.3.custom.js"></script>
        <script type="text/javascript" src="jquery-ui-1.10.3.custom/js/jquery-ui-1.10.3.custom.min.js"></script>

        <!-- TWITTER BOOTSTRAP CSS --> 
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" /> 

        <!-- TWITTER BOOTSTRAP JS --> 
        <script src="bootstrap/js/bootstrap.min.js"></script>

    </head>
</head>
<body>
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="jumbotron">
                    <center>
                        <br><img src="img/BotaoSecretariadeSaude.jpg" width="141" height="32">
                        <h2>Pesquisa Saúde </h2>
                        <h6>Secretaria de Saúde de Osório-RS</h6>
                    </center>



                </div>
            </div>
        </div>
        <div class="row clearfix">
            <div class="col-md-2 column">
                <!-- Button to trigger modal -->
                <p align="center">
                    <a href="#myModal" role="button" class="btn-small btn-info" data-toggle="modal">Como usar?</a>
                </p>
                <!-- Modal -->
                <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h3 id="myModalLabel">Como usar?</h3>
                    </div>
                    <div class="modal-body">
                        <p>É possível pesquisar por serviços, informando apenas UMA PALAVRA ou parte dela,  
                            sem a necessidade de acentuação. Ex.: oculos.   </p>
                        <p>O sitema não faz diferenciação de letras maiúsculas e minúsculas.</p>
                        <p>O Pesquisa Saúde tem por objetivo servir como ferramenta de apoio na orientação e informação aos pacientes, referente aos serviços prestados
                            na Secretaria de Saúde e Posto Central.</p>
                        <p>Desenvolvimento: Alan Alves Correa 2014. <span style="-moz-transform: scaleX(-1); -o-transform: scaleX(-1); -webkit-transform: scaleX(-1); transform: scaleX(-1); display: inline-block;">
                                © 
                            </span> Copyleft.</p>

                    </div>
                    <div class="modal-footer">
                        <button class="btn" data-dismiss="modal" aria-hidden="true">Fechar</button>
                    </div>
                </div>

            </div>
            <div class="col-md-6 column">
                <center>
                    <br><br>
                    <form  method="GET" action="buscar.php">
                        <input type="text" 
                               class="span5"
                               placeholder="Pesquisar por serviço. Ex: estomago" 
                               id="consulta" name="consulta" 
                               required="">
                        <br><br><button type="submit" class="btn btn-success">Pesquisar</button>
                    </form>
                </center>
                <br><br><br><br>
                <div class="well well-small">Desenvolvimento: Alan A. Correa, 2014.</div>
            </div>
            <div class="col-md-4 column">

            </div>
        </div>
    </div>

</body>
</html>
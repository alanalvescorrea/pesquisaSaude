
<html>
    <head>
        <title>Formulario cadastro</title>
       
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
                <h1>
                    Cadastro de Servicos
                </h1>
                
                
            </div>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-2 column">
        </div>
        <div class="col-md-6 column">
            <form name='dados' action='cadastro.php'  method='POST'>
                <input type="hidden" value="Ok" name="invisivel" />

                <fieldset>
                    <legend>Informar serviços</legend>

                    <!-- Label: nome do campo onde o usuário escrevera as informações. o 'For' define para qual input ele pertence, sendo identificado pelo id !-->
                    <!-- input: campo onde recebera as informações, podendo ser de vários tipos, como hidden, checkbox, radio, para recuperar estas informações, 
                    precisamos dar um nome a este input, atenção: na outra pagina de captura dos dados, o nome tem que estar idêntico.
                    !-->
                    <table>


                        <br><label for='name_servico'>Nome  </label>                        
                        <input type="text" name="nome_servico"  id="name" />

                        <br><label for='setor'>Setor  </label>                      
                        <input type="text" name="setor"  id="sobrenome" />

                        <br><label for='andar'>Andar  </label>                        
                        <input type="text" name="andar"  id="endereco" />

                        <br><label for='responsavel'>Responsável  </label>                        
                        <input type="text" name="responsavel"  id="cidade" />

                        <br><label for='ramal'>Ramal  </label>                     
                        <input type="text" name="ramal"  id="email" />

                        <br><label for='referencia'>Referência  </label>                     
                        <input type="text" name="referencia"  id="email" />
                    </table>

                </fieldset>

                <input type="submit" name="cadastro" title="Cadastrar" value="Cadastrar" />

            </form>
        </div>
        <div class="col-md-4 column">
        </div>
    </div>
</div>
    </body>
</html>
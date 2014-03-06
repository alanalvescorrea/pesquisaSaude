<html>
    <head>
        <title>Pesquisa Sa&uacute;de</title>

    <head>
        <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
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
                        <h2>Pesquisa Sa&uacute;de </h2>
                        <h6>Secretaria de Sa&uacute;de de Os&oacute;rio-RS</h6>
                        <center>  

                            <a href="index.php" class="btn-small btn-info">Nova pesquisa</a>

                        </center>

                    </center>



                </div>
            </div>
        </div>
        <div class="row clearfix">
            <div class="col-md-2 column">
                <?php
// Configuração do script
// ========================
                $_BS['PorPagina'] = 6; // Número de registros por página
// Conexão com o MySQL
// ========================
                $_BS['MySQL']['servidor'] = 'localhost';
                $_BS['MySQL']['usuario'] = 'root';
                $_BS['MySQL']['senha'] = '';
                $_BS['MySQL']['banco'] = 'pesquisasaude';
                mysql_connect($_BS['MySQL']['servidor'], $_BS['MySQL']['usuario'], $_BS['MySQL']['senha']);
                mysql_select_db($_BS['MySQL']['banco']);
// ====(Fim da conexão)====
// Verifica se foi feita alguma busca
// Caso contrario, redireciona o visitante
                if (!isset($_GET['consulta'])) {
                    header("Location: bf.php");
                    exit;
                }
// Se houve busca, continue o script:
// Salva o que foi buscado em uma variável
                $busca = $_GET['consulta'];
// Usa a função mysql_real_escape_string() para evitar erros no MySQL
                $busca = mysql_real_escape_string($busca);

// ============================================
// Monta a consulta MySQL para saber quantos registros serão encontrados
                $sql = "SELECT COUNT(*) AS total FROM servicos WHERE nome_servico LIKE '%$busca%' OR '%$busca%'";
// Executa a consulta
                $query = mysql_query($sql);
// Salva o valor da coluna 'total', do primeiro registro encontrado pela consulta
                $total = mysql_result($query, 0, 'total');
// Calcula o máximo de paginas
                $paginas = (($total % $_BS['PorPagina']) > 0) ? (int) ($total / $_BS['PorPagina']) + 1 : ($total / $_BS['PorPagina']);

// ============================================
// Sistema simples de paginação, verifica se há algum argumento 'pagina' na URL
                if (isset($_GET['pagina'])) {
                    $pagina = (int) $_GET['pagina'];
                } else {
                    $pagina = 1;
                }
                $pagina = max(min($paginas, $pagina), 1);
                $inicio = ($pagina - 1) * $_BS['PorPagina'];

// ============================================
// Monta outra consulta MySQL, agora a que fará a busca com paginação
                $sql = "SELECT * FROM servicos WHERE nome_servico LIKE '%$busca%' OR '%$busca%' ORDER BY nome_servico DESC LIMIT " . $inicio . ", " . $_BS['PorPagina'];
// Executa a consulta
                $query = mysql_query($sql);

// ============================================
// Começa a exibição dos resultados
                echo " <br> <br><p><div class='alert alert-info'>Exibindo de " . min($total, ($inicio + 1)) . " ate " . min($total, ($inicio + $_BS['PorPagina'])) . " . Foram encontrados " . $total . " resultados para o termo '" . $_GET['consulta'] . "'.</div></p>";
// <p>Resultados 1 - 20 de 138 resultados encontrados para 'minha busca'</p>


                while ($resultado = mysql_fetch_assoc($query)) {
                    $nome_servico = $resultado['nome_servico'];
                    $setor = $resultado['setor'];
                    $andar = $resultado['andar'];
                    $responsavel = $resultado['responsavel'];
                    $ramal = $resultado['ramal'];
                    $referencia = $resultado['referencia'];
                    $obs = $resultado['obs'];


                    echo '<p>';
                    echo "<div class='alert alert-success'><i>Nome Servi&ccedil;o: </i>" . $nome_servico . "</div>";
                    echo "<i>Setor: </i> <span class='label label-info'>" . $setor . "</span><br>";
                    echo "<i>Andar: </i>" . $andar . "<br />";
                    echo "<i>Respons&aacute;vel: </i>" . $responsavel . "<br />";
                    echo "<i>Ramal: </i>" . $ramal . "<br />";
                    echo "<i>Referencia: </i>" . $referencia . "<br />";
                }
                echo '</p>';

// ============================================
// Começa a exibição dos paginadores
                if ($total > 0) {
                    echo '<hr>';
                    for ($n = 1; $n <= $paginas; $n++) {

                        echo '<a href="?consulta=' . $_GET['consulta'] . '&pagina=' . $n . '">' . $n . '</a>&nbsp;&nbsp;';
                    }
                }
                echo '<br /><br />';
                ?>
            </div>
            <div class="well well-small">Desenvolvimento: Alan A. Correa, 2014.</div>


        </div>
    </div>


</body>
</html>
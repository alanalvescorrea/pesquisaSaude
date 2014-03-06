<?php

require 'persistencia/classe_conexao.php';

$Ok = $_POST["invisivel"];
if ($Ok) {
    
    $nome_servico = $_POST['nome_servico'];
    $setor = $_POST['setor'];
    $andar = $_POST['andar'];
    $responsavel = $_POST['responsavel'];
    $ramal = $_POST['ramal'];
    $referencia = $_POST['referencia'];
    $obs = $_POST['obs'];


    $novaConexao = new conexao();
    $novaConexao->conecta();

    $query = mysql_query("INSERT INTO servicos ( nome_servico, setor , andar , responsavel , ramal , referencia , obs)  
                                    VALUES ('$nome_servico', '$setor', '$andar', '$responsavel', '$ramal', '$referencia', '$obs')");

    if ($query) {
        echo 'ok<br><a href="servicos_cadastrar.php">+</a>';
    } else {

        echo 'não ok';
    }
} else {
    echo'formulario vazio';
}
?>
<?php
    $dbHost = 'Localhost';
    $dbUsername = 'root';
    $dbPassword = 'ferrarigp13@';
    $dbName ='transportadora';

    $conexao = new mysqli($dbHost,$dbUsername,$dbPassword,$dbName);
    
  //  if($conexao->connect_errno){
  //      echo "Erro";
  //  }
 //   else{
  //      echo "Conexao efetuada com sucesso";
  //  }
?>
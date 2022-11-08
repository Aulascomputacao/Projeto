<?php
    if(isset($_POST['submit']))
    {
     //   print_r($_POST['nome']);
    //    print_r('<br>');
       // print_r($_POST['email']);
       // print_r('<br>');
      //  print_r($_POST['telefone']);
        include_once('config.php');
        $nome = $_POST['nome'];
        $senha = $_POST['senha'];
        $email = $_POST['email'];
        $telefone = $_POST['telefone'];
        $genero = $_POST['genero'];
        $data_nascimento = $_POST['data_nascimento'];
        $cidade = $_POST['cidade'];
        $estado = $_POST['estado'];
        $endereco = $_POST['endereco'];
        $cargo = $_POST['cargo'];
        
        $result = mysqli_query($conexao,"INSERT INTO $cargo(nome,senha,email,telefone,sexo,data_nasc,cidade,estado,endereco) VALUES ('$nome','$senha','$email','$telefone','$genero','$data_nascimento','$cidade','$estado','$endereco')");
    }
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Transportadora</title>
    <style>
        body{
            font-family: Arial, Helvetica, sans-serif;
            background:linear-gradient(to right, rgb(123, 202, 186), rgb(16, 182, 191));
        }
        .box{
            color: white;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
            background-color: rgba(0, 0, 0, 0.9);
            padding: 15px;
            border-radius: 15px;
            width: 20%;
        }
        fieldset{
            border: 3px solid rgb(30, 214, 255);
        }
        legend{
            border: 3px solid rgb(30, 214, 255);
            padding: 10px;
            text-align: center;
            background-color: rgb(2, 5, 5);
            border-radius: 8px;
        }
        .inputBox{
            position: relative;
        }
        .inputUser{
            background: none;
            border: none;
            border-bottom: 1px solid white;
            outline: none;
            color: white;
            font-size: 15px;
            width: 100%;
            letter-spacing: 2px;
        }
        .labelInput{
            position: absolute;
            top: 0px;
            left: 0px;
            pointer-events: none;
            transition: .5s;
        }       
        .inputUser:focus ~ .labelInput,
        .inputUser:valid ~ .labelInput{
            top: -20px;
            font-size: 12px;
            color: rgb(30, 214, 255);
        }
        #data_nascimento{
            border: none;
            padding: 8px;
            border-radius: 10px;
            outline: none;
            font-size: 15px;
        }
        #submit{
            background-color: rgb(4, 14, 17);
            width: 100%;
            border:3px solid rgb(30, 214, 255);
            padding: 15px;
            color: white;
            font-size: 20px;
            cursor: pointer;
            border-radius: 10px;
            font-weight: bold;
        }
        #submit:hover{
            background-color: rgb(22, 164, 195);
            color: black;
        }
        .retorno{
            text-decoration: none;
            color: black;
            font-size: 20px;
            font-weight: bold;
        }
    </style>
</head>
<body>
<a class="retorno" href="home.php"> Voltar</a>
    <div class="box">
        <form action = "formulario.php" method = "POST">
            <fieldset>
                <legend><b>Cadastro</b></legend>
                <br>
                <div class="inputBox">
                    <input type="text" name="nome" id="nome" class="inputUser" required>
                    <label for="nome" class="labelInput">Nome completo</label>
                </div>
                <br><br>
                <div class="inputBox">
                    <input type="password" name="senha" id="senha" class="inputUser" required>
                    <label for="senha" class="labelInput">Senha</label>
                </div>
                <br><br>
                <div class="inputBox">
                    <input type="text" name="email" id="email" class="inputUser" required>
                    <label for="email" class="labelInput">Email</label>
                </div>
                <br><br>
                <div class="inputBox">
                    <input type="tel" name="telefone" id="telefone" class="inputUser" required>
                    <label for="telefone" class="labelInput">Telefone</label>
                </div>
                <p>Sexo:</p>
                <input type="radio" id="feminino" name="genero" value="feminino" required>
                <label for="feminino">Feminino</label>
                <br>
                <input type="radio" id="masculino" name="genero" value="masculino" required>
                <label for="masculino">Masculino</label>
                <br>
                <input type="radio" id="outro" name="genero" value="outro" required>
                <label for="outro">Outro</label>
                <br><br>
                <label for="data_nascimento"><b>Data de Nascimento:</b></label>
                <input type="date" name="data_nascimento" id="data_nascimento" required>
                <br><br>
                <div class="inputBox">
                    <input type="text" name="cidade" id="cidade" class="inputUser" required>
                    <label for="cidade" class="labelInput">Cidade</label>
                </div>
                <br><br>
                <div class="inputBox">
                    <input type="text" name="estado" id="estado" class="inputUser" required>
                    <label for="estado" class="labelInput">Estado</label>
                </div>
                <br><br>
                <div class="inputBox">
                    <input type="text" name="endereco" id="endereco" class="inputUser" required>
                    <label for="endereco" class="labelInput">Endereço</label>
                <p>Situacao:</p>
                <input type="radio" id="cliente" name="cargo" value="cliente" required>
                <label for="cliente">Cliente</label>
                
                <input type="radio" id="funcionario" name="cargo" value="funcionario" required>
                <label for="funcionario">Funcionario</label>
                <br>
                </div>
                <br><br>
                <input type="submit" name="submit" id="submit">
            </fieldset>
        </form>
    </div>
</body>
</html>
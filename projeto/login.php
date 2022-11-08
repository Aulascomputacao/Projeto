<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tela de login</title>
    <style>
        body{
            font-family: Arial, Helvetica, sans-serif;
            background:linear-gradient(to right, rgb(123, 202, 186), rgb(16, 182, 191));
            
        }
        div{
            background-color: rgba(0, 0, 0, 0.9);
            position: absolute;
            top: 50%;
            left: 50%;    
            transform: translate(-50%,-50%);
            padding: 80px;
            border-radius: 15px;
            color:white;
        }
        input{
            padding: 15px;
            border: none ;
            outline: none;
            font-size: 15px;
        }
        .InputSubmit{
            background-color: rgb(17, 166, 174);
            border: none ;
            padding: 15px;
            width: 100%;
            border-radius: 10px;
            color: white;
            font-size: 20px;
            font-weight: bold;          
        }
        .InputSubmit:hover{
            background-color: rgb(28, 223, 234);          
            cursor: pointer;
   
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
    <a class = "retorno" href="home.php">Voltar</a>
    <div>
    <h1>Login</h1>
    <form action="testeLogin.php" method="POST">
        <input type="text" name = "email" placeholder="Email">
        <br><br>
        <input type="password" name = "senha" placeholder="Senha">
        <br><br>
        <input type = "submit" class="InputSubmit" name = "submit" value = "Enviar">
    </form>
    </div>
</body>
</html>
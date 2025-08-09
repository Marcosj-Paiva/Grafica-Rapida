<?php
// Inicia a sessão se ainda não estiver ativa
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gráfica Rápida</title>
    <link rel="stylesheet" href="/grafica/views/styles/style.css">
</head>
<body>

<header>
    <div class="logo">
        <img src="/grafica/views/imagens/logo.png" alt="Logo da Gráfica" height="60">
    </div>
    <nav>
        <ul>
            <li><a href="/grafica/views/index.php">Início</a></li>
            <li><a href="/grafica/views/servicos.php">Serviços</a></li>
            <li><a href="/grafica/views/cadastro.php">Cadastro</a></li>
            <li><a href="/grafica/views/login.php">Login</a></li>
            <li><a href="/grafica/views/faleconosco.php">Fale Conosco</a></li>
        </ul>
    </nav>
</header>
<main>

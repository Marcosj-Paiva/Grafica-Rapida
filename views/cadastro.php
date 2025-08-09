<?php include_once 'includes/cabecalho.inc.php'; ?>

    <h2>Cadastro de Cliente</h2>

    <form method="post" action="cadastro.php">
        <label for="nome">Nome completo:</label><br>
        <input type="text" id="nome" name="nome"><br><br>

        <label for="email">Email:</label><br>
        <input type="email" id="email" name="email"><br><br>

        <label for="telefone">Telefone:</label><br>
        <input type="text" id="telefone" name="telefone"><br><br>

        <label for="senha">Senha:</label><br>
        <input type="password" id="senha" name="senha"><br><br>

        <label for="senha_confirma">Confirme a senha:</label><br>
        <input type="password" id="senha_confirma" name="senha_confirma"><br><br>

        <button type="submit">Cadastrar</button>
    </form>

<?php include_once 'includes/rodape.inc.php'; ?>
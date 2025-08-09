<?php include_once 'includes/cabecalho.inc.php'; ?>

  <div class="login-container">
    <h2>Login</h2>
    <form action="login.php" method="POST">
      <label for="email">Email:</label>
      <input type="email" id="email" name="email"/>

      <label for="senha">Senha:</label>
      <input type="password" id="senha" name="senha"/>

      <button type="submit">Entrar</button>
    </form>
    <p>Não tem uma conta? <a href="cadastro.php">Cadastre-se aqui</a></p>
  </div>

<?php include_once 'includes/rodape.inc.php'; ?>
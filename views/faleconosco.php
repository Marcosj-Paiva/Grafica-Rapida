<?php include_once 'includes/cabecalho.inc.php'; ?>

  <div class="contato-container">
    <h2>Fale Conosco</h2>
    <form action="faleconosco.php" method="POST">
      <label for="nome">Nome:</label>
      <input type="text" id="nome" name="nome" required />

      <label for="email">Email:</label>
      <input type="email" id="email" name="email" required />

      <label for="mensagem">Mensagem:</label>
      <textarea id="mensagem" name="mensagem" rows="6" required></textarea>

      <button type="submit">Enviar</button>
    </form>
  </div>

<?php include_once 'includes/rodape.inc.php'; ?>
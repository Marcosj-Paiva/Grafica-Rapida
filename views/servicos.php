<?php include_once 'includes/cabecalho.inc.php'; ?>

    <h2>Serviços Oferecidos</h2>

    <form method="GET" action="servicos.php" class="busca-servicos">
      <input type="text" name="busca" placeholder="Buscar por tipo, nome ou código" />
      <button type="submit">Buscar</button>
    </form>

    <ul class="lista-servicos">
      <li>
        <h3>Reprodução de Materiais Impressos</h3>
        <p>Impressão em papel com diversas opções de tamanho e tipo.</p>
        <p><strong>Preço a partir de:</strong> R$ 1,50 por unidade</p>
      </li>
      <li>
        <h3>Banners</h3>
        <p>Banners em diversos tamanhos e materiais, resistentes e coloridos.</p>
        <p><strong>Preço a partir de:</strong> R$ 30,00</p>
      </li>
      <li>
        <h3>Canecas Personalizadas</h3>
        <p>Canecas com estampas personalizadas de alta qualidade.</p>
        <p><strong>Preço a partir de:</strong> R$ 25,00</p>
      </li>
      <li>
        <h3>Cartões de Visita</h3>
        <p>Cartões de visita profissionais, com acabamento especial.</p>
        <p><strong>Preço a partir de:</strong> R$ 50,00 (pacote com 100 unidades)</p>
      </li>
      <li>
        <h3>Impressões Especiais (Cartazes A3, A2)</h3>
        <p>Cartazes de alta resolução em tamanhos grandes para divulgação.</p>
        <p><strong>Preço a partir de:</strong> R$ 15,00</p>
      </li>
      <li>
        <h3>Panfletos</h3>
        <p>Panfletos coloridos com vários tamanhos e formatos.</p>
        <p><strong>Preço a partir de:</strong> R$ 0,20 por unidade</p>
      </li>
    </ul>
  </div>

<?php include_once 'includes/rodape.inc.php'; ?>
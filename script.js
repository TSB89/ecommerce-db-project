function copiarCodigo(botao) {
  const codeElement = botao.nextElementSibling;
  const codigo = codeElement.innerText;

  navigator.clipboard.writeText(codigo).then(() => {
    botao.textContent = "✅ Copiado!";
    setTimeout(() => {
      botao.textContent = "📋 Copiar";
    }, 2000);
  }).catch(() => {
    botao.textContent = "❌ Erro!";
  });
}

function fecharTodasAsSecoes() {
  const secoes = document.querySelectorAll('.db-conteudo');
  const botoes = document.querySelectorAll('.toggle-btn');

  secoes.forEach(secao => secao.classList.remove('ativo'));
  botoes.forEach(botao => botao.classList.remove('ativo'));
}

function toggleSecao(idSecao, botao) {
  const secao = document.getElementById(idSecao);
  const estaAtiva = secao.classList.contains('ativo');

  fecharTodasAsSecoes(); // Fecha tudo antes

  if (!estaAtiva) {
    secao.classList.add('ativo'); // Abre a seção
    botao.classList.add('ativo'); // Destaca o botão clicado
  }
}







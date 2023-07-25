function listar() {
  fetch("https://jsonplaceholder.typicode.com/posts")
    .then((requisicao) => requisicao.json())
    .then((postagens) => {
      var tabela = document.getElementById("tabela");

      tabela.innerHTML = "";

      for (var indice = 0; indice < postagens.length; indice++) {
        var linha = tabela.insertRow(-1);
        var colunaId = linha.insertCell(0);
        var colunaTitulo = linha.insertCell(1);
        var colunaCorpo = linha.insertCell(2);
        colunaId.innerHTML = postagens[indice].id;
        colunaTitulo.innerHTML = postagens[indice].title;
        colunaCorpo.innerHTML = postagens[indice].body;
      }
    });
}

function cadastrar() {
  var titulo = document.getElementById("titulo");
  var texto = document.getElementById("texto");

  //criando objeto
  var obj = {
    title: titulo.value,
    body: texto.value,
  };
  //requisicao
  fetch("https://jsonplaceholder.typicode.com/posts", {
    method: "POST",
    headers: {
      "content-type": "application/json",
    },
    body: JSON.stringify(obj), //requisicoes só trabalham com texto por isso o stringify
  })
    .then((retorno) => retorno.json())
    .then((postagem) => {
      var tabela = document.getElementById("tabela");
      var linha = tabela.insertRow(-1);
      var colunaId = linha.insertCell(0);
      var colunaTitulo = linha.insertCell(1);
      var colunaTexto = linha.insertCell(2);
      colunaId.innerHTML = postagem.id;
      colunaTitulo.innerHTML = postagem.title;
      colunaTexto.innerHTML = postagem.body;
    });
}

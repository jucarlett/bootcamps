function acao() {
    var cep = document.getElementById("cep").value;
    fetch(`https://viacep.com.br/ws/${cep}/json/`) //faz requisicao de selecao
    .then(retorno => retorno.json()) //converte para json    
        .then(dados => {
            document.getElementById("estado").innerHTML = dados.uf;
            document.getElementById("cidade").innerHTML = dados.localidade;
            document.getElementById("bairro").innerHTML = dados.bairro;
            document.getElementById("logradouro").innerHTML = dados.logradouro;
        })
}
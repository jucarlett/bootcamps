

//requisicao via fetch
/*
  fetch('https://pokeapi.co/api/v2/pokemon/1')
    .then(retorno => retorno.json())
    .then(pokemon => console.log(pokemon.name)) //retorna o name
  */



    //requisicao via fetch async - quando usa async nao usa then - usar em app maiores


async function obterPokemon() {
var exibir = document.getElementById("exibir");



  for (var indice = 1; indice < 152; indice++) {
    var resposta = await fetch(`https://pokeapi.co/api/v2/pokemon/${indice}`); //await fala para nao avcnar enquanto oretorno nao ser executado... 
    var pokemon = await resposta.json(); //await é bom pra quando pode ser q trave quando requisicao for muito grande

    exibir.innerHTML += `<img src="${pokemon.sprites.front_default}">`;
    exibir.innerHTML += "<p>"+pokemon.name+"</p>"
    
  }


}

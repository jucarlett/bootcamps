//toda promise é assincrona, mas nem toda assincrona é promise
//promise é uma promessa de retorno

function mensagem1() {
  return new Promise((acerto, erro) => {
    setTimeout(() => {
      acerto("A"); 
    }, 3000);
  });
}


function mensagem2() {
  return new Promise((acerto, erro) => {
    acerto("B") 
  });
}

async function executar() {
  var texto1 = await mensagem1();
  var texto2 = await mensagem2();

  console.log(texto1);
  console.log(texto2);
}

executar();

//toda promise tem new


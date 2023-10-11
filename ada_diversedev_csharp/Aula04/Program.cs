int interacao = 0;


//usa quando tamanho é predefinido
for (int i = 0; i < 10; i++)
{
    interacao++;
    Console.WriteLine(i);
}


List<string> minhaLoja = new List<string> {"Audi", "Tesla", "Gurgel", "Fiat"};

for (int i = 0; i < minhaLoja.Count; i++)
{
    Console.WriteLine(minhaLoja[i]);
}




string[,] multidimensioanl = new string[2, 3];

for (int i=0; i< multidimensioanl.GetLength(0); i++)
{
    for (int j = 0; j < multidimensioanl.GetLength(1); j++)
    {
        Console.WriteLine(multidimensioanl[i, j]);
    }
}



//fazer programa q imprima os numeros impares ate 100


for (int i = 0; i <= 100; i++)
{
    if (i % 2 != 0)
    {
        Console.WriteLine(i);
    }
}



//foreach - quer passar por todo elementoda lista e vai atribuindo ao item
//funciona break continue etc pro if dentro do foreach

foreach (var item in minhaLoja)
{
    if (item == "Tesla")
    {
        break;
    };
    Console.WriteLine(item);
}





bool conseguiConverter = int.TryParse(Console.ReadLine(), out int numero);  
/*
if (conseguiConverter)
{
    Console.WriteLine("conseguiu converter");
}else
{
    Console.WriteLine("não conseguiu converter");
}
*/

//condicao ? opcao1 : opcao 2;
string texto = conseguiConverter ? "conseguiu converter" : "não conseguiu converter";
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


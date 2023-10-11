//Questão 1 - 1 - Escreva um programa que faça a leitura de 5 valores Inteiros do usuário. Em seguida, o programa deve exibir no console a informação de quantos dos valores digitados são pares, quantos dos valores digitados são ímpares, quantos deles são positivos e, por fim, quantos são negativos. Cada uma das informações deve ser escrita em uma linha diferente.



Console.Write("*****QUESTÃO 1*****\n");
int contadorPares = 0;
int contadorImpares = 0;
int contadorPositivos = 0;
int contadorNegativos = 0;

for (int i = 0; i < 5; i++)
{
    while (true)
    {
        Console.Write($"Digite o {i + 1}º número: ");
        string entrada = Console.ReadLine();

        bool isValid = true;
        int indiceInicio = (entrada[0] == '-') ? 1 : 0;

        for (int j = indiceInicio; j < entrada.Length; j++)
        {
            if (entrada[j] < '0' || entrada[j] > '9')
            {
                isValid = false;
                break;
            }
        }

        if (isValid)
        {
            int numero = int.Parse(entrada);
            
            if (numero % 2 == 0) 
            {  
                contadorImpares++; 
            }
            else 
            { 
                contadorPares++;
            }                
            
            if (numero > 0) 
            {
                contadorPositivos++;
            }   
            else if (numero < 0)
            {
                contadorNegativos++;
            } 
            break; 
        }
        else
        {
            Console.WriteLine("Por favor, insira um número válido.");
        }
    }
}

Console.WriteLine($"Números pares: {contadorPares}");
Console.WriteLine($"Números ímpares: {contadorImpares}");
Console.WriteLine($"Números positivos: {contadorPositivos}");
Console.WriteLine($"Números negativos: {contadorNegativos}\n\n");


//Questão 2 - Escreva um programa que calcule e escreva a multiplicação e a divisão inteira de dois números inteiros, N1 por N2, que devem ser lidos do teclado. É importante observar que a máquina que irá executar este programa é capaz de efetuar apenas duas operações matemáticas: adição e subtração. Ou seja, você não poderá usar os operadores de multiplicação, divisão, módulo etc. bem como truncamentos.

Console.Write("*****QUESTÃO 2*****\n");
Console.Write("Digite o primeiro número: ");
int num1 = int.Parse(Console.ReadLine());

Console.Write("Digite o segundo número: ");
int num2 = int.Parse(Console.ReadLine());

int multiplicacao = 0;
int sinalMultiplicacao = (num1 < 0) ^ (num2 < 0) ? -1 : 1;

for (int i = 0; i < (num1 < 0 ? -num1 : num1); i++)
{
    multiplicacao += (num2 < 0 ? -num2 : num2);
}
multiplicacao *= sinalMultiplicacao;

int divisao = 0;
int sinalDivisao = (num1 < 0) ^ (num2 < 0) ? -1 : 1;
int divisor = num1 < 0 ? -num1 : num1;
int dividendo = num2 < 0 ? -num2 : num2;

while (divisor >= dividendo)
{
    divisor -= dividendo;
    divisao++;
}

divisao *= sinalDivisao;

Console.WriteLine($"Multiplicação de {num1} por {num2} é: {multiplicacao}");
Console.WriteLine($"Divisão inteira de {num1} por {num2} é: {divisao}\n\n");

//Questão 3 - Escreva um programa que recebe como entrada uma frase do usuário. Como saída o programa deve exibir no console as seguintes informações: quantas palavras são maiúsculas, quantas palavras são minúsculas, quantas palavras iniciam com letra maiúscula, quantas palavras iniciam com letra minúscula e a quantidade de palavras.

Console.Write("*****QUESTÃO 3*****\n");
Console.Write("Digite uma frase: ");
string[] palavras = Console.ReadLine().Split();

int contMaiusculas = 0;
int contMinusculas = 0;
int contIniciaMaiuscula = 0;
int contIniciaMinuscula = 0;

foreach (var palavra in palavras)
{
    // Verifica se todas as letras da palavra são maiúsculas
    if (palavra.ToUpper() == palavra)
    {
        contMaiusculas++;
    }
    // Verifica se todas as letras da palavra são minúsculas
    else if (palavra.ToLower() == palavra)
    {
        contMinusculas++;
    }

    // Verifica se a primeira letra da palavra é maiúscula
    if (char.IsUpper(palavra[0]))
    {
        contIniciaMaiuscula++;
    }
    // Verifica se a primeira letra da palavra é minúscula
    else if (char.IsLower(palavra[0]))
    {
        contIniciaMinuscula++;
    }
}

Console.WriteLine($"Total de palavras: {palavras.Length}");
Console.WriteLine($"Palavras 100% com letras maiúsculas: {contMaiusculas}");
Console.WriteLine($"Palavras 100% com letras minúsculas: {contMinusculas}");
Console.WriteLine($"Palavras que iniciam com letra maiúscula: {contIniciaMaiuscula}");
Console.WriteLine($"Palavras que iniciam com letra minúscula: {contIniciaMinuscula}\n\n");


//Questão 4

Console.WriteLine("***** QUESTÃO 4 *****\n");
Console.WriteLine("RESPOSTA: Alternativa C) 1\n");
Console.WriteLine("JUSTIFICATIVA:");
Console.WriteLine("O resultado será 1. Isso ocorre porque a variável 'numero' é definida como Int32.");
Console.WriteLine("Inicialmente, a expressão lógica !(21 > 21) é avaliada. A expressão 21 > 21 resulta em 'false',");
Console.WriteLine("e o operador ! (NOT) inverte isso para 'true'. Em seguida, 'true' é convertido em '1'");
Console.WriteLine("ao ser interpretado como um valor inteiro.\n\n");



//Questão 5

Console.Write("*****QUESTÃO 5*****\n");
Console.Write("RESPOSTA: Alternativa  E) -5, -2, 1, 4, 7\n");
Console.WriteLine("JUSTIFICATIVA: O resultado será -5, -2, 1, 4, 7. \n" +
     "O primeiro valor é -5, pois o valor inicial é -5 e o incremento é 3. \n" +
      "O segundo valor é -2, pois o valor inicial é -5 e o incremento é 3. \n" +
      "O terceiro valor é 1, pois o valor inicial é -5 e o incremento é 3. \n" +
      "O quarto valor é 4, pois o valor inicial é -5 e o incremento é 3. \n" +
      "O quinto valor é 7, pois o valor inicial é -5 e o incremento é 3. \n"+
      "O contador i é parado porque chegou em 7 e lá está definidido i<=7.");

Console.WriteLine("Escolha uma operação: +, -, *, /");
string operacao = Console.ReadLine();

Console.WriteLine("Digite o primeiro número:");
float num1 = Convert.ToSingle(Console.ReadLine());

Console.WriteLine("Digite o segundo número:");
float num2 = Convert.ToSingle(Console.ReadLine());

float resultado = 0;

switch (operacao)
{
    case "+":
        resultado = num1 + num2;
        break;
    case "-":
        resultado = num1 - num2;
        break;
    case "*":
        resultado = num1 * num2;
        break;
    case "/":
        if (num2 != 0)
        {
            resultado = num1 / num2;
        }
        else
        {
            Console.WriteLine("Erro: Divisão por zero.");
            return;
        }
        break;
    default:
        Console.WriteLine("Operação inválida.");
        return;
}

Console.WriteLine($"Resultado: {resultado}");


//1 solicito dado do user
//2 user entra com dado
//3 validacao do dado
//4 se dado invalido - imprimir mensagem de erro e voltar para o passo 1
//5 se dado valido - continuar
//while e do while



//todos comando iguais de implementacao de lista
// O array utiliza um espaço sequencial na memória, enquanto a lista trabalha "apontando" espaços adicionais, não precisa ser sequencial
List<string> lista = new List<string>();
List<string> lista_ = new();
var list2 = new List<string>();

lista_.Add("ex1");
lista.Add("2");
lista.Add("3");
lista.Remove("2");
lista.RemoveAt(0);
lista.RemoveAll(x => x == "2"); //remove todos os elementos que atendem a condição "2"
lista_.AddRange(lista);


//arrays - sempre deve ser definido o tamanho,se quer algo dinamico usar LIST
string[] array1 = { "0", "1", "2" }; //instancia os valores
string[] array2 = new string[4]; //sem instanciar os valores
int[] array3 = new int[4];
var array4 = new int[4];


array1.SetValue("5", 0); //altera o valor do indice 0 para 5
array1[0] = "5"; //altera o valor do indice 0 para 5













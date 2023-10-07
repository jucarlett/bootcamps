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




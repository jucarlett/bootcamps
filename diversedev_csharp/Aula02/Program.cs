//string 

string minhaString = "minha primeira string";
string minhaSegundaString = "minha";

string stringConcatenada = minhaString + " " + minhaSegundaString;

Console.WriteLine(stringConcatenada);

//string interpolation

string stringInterpolation = $"Minha string interpolada: {minhaString} {minhaSegundaString}";
string.Format("Minha string interpolada: {0} {1}", minhaString, minhaSegundaString);

string[] stringArray = minhaString.Split(' '); //quebra sua string em um array de string, no caso quebra onde tem espaço
string unica = string.Join(" ", stringArray); // o espaço é oq ficará entre as junções aki no caso é espaço, mas poderia ser , ou qq



Console.WriteLine(stringInterpolation);


//conversão

var bool1 = Convert.ToBoolean("false");
Console.WriteLine(bool1);

Convert.ToString(10);
Convert.ToDecimal(10);
Convert.ToDouble(10);
//*tratamento de data e moeda: System.Globalization.CultureInfo.GetCultureInfo ("pt-BR").NumberFormat.CurrencySymbol = "R$";

var inteira = int.Parse("10"); //nao precisa ser o var
double meuDouble = double.Parse("10".ToString());
char meuChar = char.Parse("d"); //char espera somente um char nao 2, se tentar com mais de 1 char dá erro
bool meuBool= bool.Parse("true".ToString());


int result;
int.TryParse("10", out result); //out é oq vai retornar, no caso o atribuindo para a var result só se conseguir converter, se nao conseguir retorna -1 (com int)
bool conseguiConverter = int.TryParse("teste01", out result);

//condicionais

if (conseguiConverter)
{
    Console.WriteLine("valor convertido: " + result);
}
else
{
    Console.WriteLine("nao foi possivel converter");
}


string clima = "sol";
if (clima == "sol")
{
    Console.WriteLine("vou a praia");
}
else if (clima == "chuva")
{
    Console.WriteLine("vou ao cinema");
}
else
{
    Console.WriteLine("vou ficar em casa");
}

string clima2 = "sol";
clima2.ToUpper(); //deixa tudo em maiusculo
clima2.ToLower(); //deixa tudo em minusculo



//receba input do user para escolher a operação e receber 2 valores . Fazer a operacao e imprimir o resultado



















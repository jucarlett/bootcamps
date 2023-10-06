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




















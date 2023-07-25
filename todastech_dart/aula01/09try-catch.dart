void main(){
  //try catch
  try{
    //aqui vai o codigo que pode dar erro
    int num = 0;
    print(10/num);
  }catch(error){
    //aqui vai o codigo que vai tratar o erro
    print("Erro: $error");
  }finally{
    //aqui vai o codigo que vai executar independente se deu erro ou não
    print("Fim do programa");
  }
}
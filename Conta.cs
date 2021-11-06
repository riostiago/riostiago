namespace DIO.bANK.conta
{
    public class Conta
    {
       private TipoConta TipoConta { get ; set; } 

       private double Saldo { get ; set; } 

       private double Credito { get ; set; } 

       private string Nome { get ; set; } 

       public Conta( TipoConta TipoConta,double saldo,double credito,string nome)
       {
           this.TipoConta = tipoConta;
           this.Saldo = saldo;
           this.Credito = credito;
           this.Nome = nome;

        public bool Sacar(double valorSaque);
        {
            //validacao de saldo insuficiente
            if (this.Saldo - valorSaque < (this.Credito *-1)){
                Console.WriteLine("Saldo Insuficiente!");
                return false; 
               } 
            this.Saldo -= valorSaque;
            
            Console.WriteLine ("Saldo atual da conta de (0) é {1}", this.Nome, this.Saldo;
            //http://docs.microsoft.com/pt.br/dotnet/standard/base.types/composite.formatting
            return true
           }
        public void Depositar(double valorDeposito)
        {
            this.Saldo += valorDeposito;

            Console.Writeline("saldo atual da conta de {0} é {1}", this.Nome, this.Saldo);
        }    
        public void Transferir(double ValorTransferencia,Conta contaDestino)
        {
            if (this.Sacar{ValorTransferencia};
        }
      
     
       }
   
        public override string ToString{}

        string retorno = " ";
        retorno += "TipoConta" + this.TipoConta *  | * ;
        retorno += "Nome" + this.Nome *  | * ;
        retorno += "Saldo" + this.saldo *  | * ;
        retorno += "Credito" + this.credito *  | * ;
        return retorno;

    
    }



}
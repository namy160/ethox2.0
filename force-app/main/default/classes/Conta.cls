public class Conta {

    @AuraEnabled(cacheable=true)
    public static List<Account> obterContasRecentes(){
        
        List<Account> contas = [SELECT Id, Name, Type FROM Account ORDER BY CreatedDate DESC LIMIT 5];

        return contas;

    }

    @AuraEnabled
    public static Account criarConta(String name) {
        
        Account conta = new Account();

        conta.Name = name;
        
        insert conta;
        
        return conta;
    }

}
public with sharing class ViagemController {
    
    @AuraEnabled(cacheable=true)
    public static Viagem obterViagem(String localizador){
        try {
            Viagem viagem1 = new Viagem();
            viagem1.localizador = localizador;
            viagem1.destinoInicial = 'PLU';
            viagem1.destinoFinal = 'TER';
            viagem1.dataHoraEmbarque = DateTime.now();
            viagem1.portaoEmbarque = '13';
            viagem1.passageiro = 'Luke';
            viagem1.assento = 'D24DS';
            viagem1.nave = 'SOYUS';
            return viagem1;
            
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

    public class Viagem {

        @AuraEnabled
        public String localizador {get; set;}

        @AuraEnabled
        public String destinoInicial {get; set;}

        @AuraEnabled
        public String destinoFinal{get; set;}

        @AuraEnabled
        public Datetime dataHoraEmbarque{get; set;}

        @AuraEnabled
        public String portaoEmbarque{get; set;}

        @AuraEnabled
        public String passageiro{get; set;}

        @AuraEnabled
        public String assento{get; set;}

        @AuraEnabled
        public String nave{get; set;}

    }
}

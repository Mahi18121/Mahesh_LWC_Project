public class PracticeClass {
    public static void populateUpShell(List<Account> lstAccount){
        for(Account acc : lstAccount){
            if(acc.Type == 'Customer - Direct'){
                acc.UpsellOpportunity__c = 'Yes' ;
            }
        }
    }
    public static void createOpportunityAccount(List<Opportunity> opportunityList){
        for(Opportunity opp : opportunityList){
            opp.Name = 'Mahesh' ;
            opp.StageName = 'Closed Won' ;
        }
    }
}
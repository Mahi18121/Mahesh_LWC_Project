public class TodayScenario implements Database.Batchable<sObject>{
    public Database.queryLocator start(Database.BatchableContext MS){
        string ourQuery = '	SELECT id,Name FROM Account' ;
        return Database.getQueryLocator(ourQuery) ;
    }
    public void execute(Database.BatchableContext MS, List<Account> accValues){
        for(Account acc : accValues){
            Contact newConRecord = new Contact() ;
            newConRecord.LastName = acc.Name ;
            newConRecord.AccountId = acc.Id ;
            newConRecord.Title = 'Contact Created by' + acc.Name ;
            Insert newConRecord ;
        }
    }
    public void finish(Database.BatchableContext MS){    
    }
}
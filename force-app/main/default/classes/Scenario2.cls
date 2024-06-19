public class Scenario2 implements Database.Batchable<sObject>{
    public Database.queryLocator start(Database.BatchableContext MSD){
        string Query = 'SELECT id,Name,CreatedDate From Contact' ;
        return Database.getQueryLocator(Query) ;
    }
    public void execute(Database.BatchableContext MSD, List<Contact> contactRecords){
        DateTime myDate = DateTime.NewInstance(2024,05,23) ;
		Date todayDate = myDate.date() ;
        for(Contact contactRecord : contactRecords){
            
            if(todayDate == contactRecord.CreatedDate){
                continue ;
            }
            else{
                delete contactRecord ;
            }
        }
    }
    public void finish(Database.BatchableContext MSD){  
    }
}
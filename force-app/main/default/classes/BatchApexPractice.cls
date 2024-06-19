global class BatchApexPractice implements database.batchable<sObject>{
    global database.queryLocator start(database.BatchableContext BC){
        string query = 'SELECT id,name FROM Account' ;
        return database.getQueryLocator(query) ;
    }
    global void execute(database.BatchableContext BC, List<Account> listValues){
        for(Account acc : listValues){
            acc.Name = acc.Name + ' Account' ;
            system.debug(acc.Name) ;
        }
        update listValues ;
    }
    global void finish(database.BatchableContext BC){
        
    }
}
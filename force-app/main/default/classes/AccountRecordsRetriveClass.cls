public with sharing class AccountRecordsRetriveClass {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccounts() {
        return[SELECT id,name,industry,phone,website FROM Account] ;
    }
}
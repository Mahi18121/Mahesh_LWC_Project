public class ContactController {
	@AuraEnabled
    public static List<contact> getContacts(id accId){
        return [SELECT id,name,email,phone FROM Contact WHERE AccountId =: accId] ;
    }
}
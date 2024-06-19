public class ContactTriggerClass {
    public void studentMarks(integer x, string name){
        map<string,integer> marksMap = new map<string,integer>() ;
        marksMap.put(name,x) ;
        system.debug(marksMap);
    }
    public void CaseCreation(List<Contact> contactValues){
        for(Contact conValues : contactValues){
            Case newCase = new Case();
        	newCase.ContactId = conValues.id ;
        	newCase.Origin = 'Web' ;
            newCase.Status = 'Working' ;
            newCase.Description = 'Case is created' ;
            newCase.SuppliedEmail = conValues.Email ;
            newCase.Subject = 'Case status is working' ;
            
            if(conValues != null){
                insert newCase ;
            }
        }
    }
}
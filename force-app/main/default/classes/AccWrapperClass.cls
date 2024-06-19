public class AccWrapperClass {
    public List<AccWrapper> AccWrapperMethod(){
        List<AccWrapper> WrapList = new List<AccWrapper>() ;
        List<Account> accList = [SELECT id,name,(SELECT id,name,email FROM Contacts) FROM Account] ;
        for(Account acc: accList){
            List<contact> conList = acc.contacts ;
            WrapList.add(new AccWrapper(acc,acc.contacts)) ;
        }
        system.debug(WrapList) ;
        return WrapList ;
    }
    
    public class AccWrapper {
        public Account acc ;
        public list<Contact> conList ;
        public AccWrapper(Account accounts, List<Contact> conListValues){
            acc = accounts ;
            conList = conListValues ;
        }
    }
}
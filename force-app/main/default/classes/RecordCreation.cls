public class RecordCreation {
    public static void creatingRecords(){
        for(integer i=1; i<6; i++){
            Account ac = new Account() ;
            ac.Name = 'Name' + i ;
            Insert ac ;
            system.debug(ac.Name) ;
        }
    }
}
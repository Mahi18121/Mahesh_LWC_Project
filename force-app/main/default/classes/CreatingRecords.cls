public class CreatingRecords {
    public void recordCreation(){
        for(integer i=0 ; i<50 ;i++){
            Account acc = new Account() ;
            acc.Name = 'Name'+i ;
            insert acc ;
        }
    }
}
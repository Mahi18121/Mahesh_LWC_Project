public class TestingClass {
    public void soqlLoopPractice(){
        for(Opportunity a :[SELECT name,closedate,stagename FROM opportunity]){
            system.debug(a) ;
        }
    }
    public List<opportunity> soqlPractice(){
        List<opportunity> oppRecords = [SELECT name,closedate,stagename FROM opportunity] ;
        system.debug(oppRecords) ;
        return oppRecords ;
    }
    public void collectionSet(){
        set<string> names = new set<string>() ;
        names.add('Mahesh') ;
        names.add('Kishore') ;
        names.add('Sai') ;
        names.add('Siri') ;
        
        for(string name : names){
            system.debug(name) ;
        }
    }
    public void collectionList(){
        list<integer> numberList = new list<integer>() ;
        numberList.add(5) ;
        numberList.add(7) ;
        numberList.add(1) ;
        numberList.add(3) ;
        system.debug(numberList) ;
    }
    public void collectionMap(){
        map<integer,string> mapCollection = new map<integer,string>() ;
        mapCollection.put(1,'Hyd');
        mapCollection.put(2,'Vskp');
        mapCollection.put(3,'Vzm');
        system.debug(mapCollection) ;
    }
}
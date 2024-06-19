trigger practiceTrigger on Account (before insert,before update,after update) {
    if(Trigger.isInsert){
        if(Trigger.isBefore){
            PracticeClass.populateUpShell(trigger.new) ;
        }
        
    }
}
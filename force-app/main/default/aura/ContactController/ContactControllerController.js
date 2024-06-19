({
	doInit : function(component, event, helper) {
		var action = component.get('c.getContacts') ;
        action.setParams({
            accId: component.get('v.recordId')
        }) ;
        action.setCallback(this,function(response){
               var responseVal = response.getReturnValue() ;
        	   component.set('v.conList',responseVal);
        }) ;
        $A.enqueueAction(action,false); 
	},
    navigateToContact: function(component, event, helper) {
        var recordId = event.target.getAttribute("data-recordId");
        var navEvt = $A.get("e.force:navigateToSObject");
        console.log(recordId);
        navEvt.setParams({
            "recordId": recordId
        });
        navEvt.fire();
    }
})
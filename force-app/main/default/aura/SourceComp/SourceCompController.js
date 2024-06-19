({
	addNumber : function(component, event, helper) {
		var FirstNumber = component.find("num1").get("v.value") ;
        var SecondNumber = component.find("num2").get("v.value") ;
        
        var compEvent = component.getEvent("compEvent") ;
        compEvent.setParams({
            "FirstNumber":FirstNumber,
            "SecondNumber":SecondNumber
        }) ;
        compEvent.fire();
	}
})
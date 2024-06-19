({
	handlerEvent : function(component, event, helper) {
		var FirstNumber = event.getParams("FirstNumber") ;
        var SecondNumber = event.getParams("FirstNumber") ;
        var sum = parseInt(FirstNumber) + parseInt(SecondNumber) ;
        component.set("v.sum",sum) ;
	}
})
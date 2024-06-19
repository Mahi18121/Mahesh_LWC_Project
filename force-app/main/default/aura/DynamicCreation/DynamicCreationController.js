({
	addCourse : function(component, event, helper) {
		var inputValue = component.get("v.InputValue") ;
        $A.createComponent("ui:outputText",
                           {
                               "aura:id":"createInputElement",
                               "value": inputValue
                           },
                           function(outputComponent,status,errorMessage){
                               console.log(status) ;
                               var body = component.get("v.body") ;
                               body.push(outputComponent) ;
                               component.set("v.body",body) ;
                           }) ;
	}
})
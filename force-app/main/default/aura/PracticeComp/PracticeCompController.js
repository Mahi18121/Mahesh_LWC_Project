({
	doAdd : function(component, event, helper) {
		var val1 = component.get('v.ValueofA') ;
        var val2 = component.get('v.ValueofB') ;
        if(val1 != null && val2 != null){
            var Result = parseInt(val1)+parseInt(val2) ;
        	component.set('v.ResultValue',Result) ;
        }
        else{
            alert("Enter the Values") ;
        }
        
	},
    doSub : function(component, event, helper) {
		var val1 = component.get('v.ValueofA') ;
        var val2 = component.get('v.ValueofB') ;
        if(val1 != null && val2 != null){
            var Result = parseInt(val1)-parseInt(val2) ;
        	component.set('v.ResultValue',Result) ;
        }
        else{
            alert("Enter the Values") ;
        }
        
	},
    doMul : function(component, event, helper) {
		var val1 = component.get('v.ValueofA') ;
        var val2 = component.get('v.ValueofB') ;
        if(val1 != null && val2 != null){
            var Result = parseInt(val1)*parseInt(val2) ;
        	component.set('v.ResultValue',Result) ;
        }
        else{
            alert("Enter the Values") ;
        }
        
	},
    doDiv : function(component, event, helper) {
		var val1 = component.get('v.ValueofA') ;
        var val2 = component.get('v.ValueofB') ;
        if(val1 != null && val2 != null){
            var Result = parseInt(val1)/parseInt(val2) ;
        	component.set('v.ResultValue',Result) ;
        }
        else{
            alert("Enter the Values") ;
        }
        
	},
    doRem : function(component, event, helper) {
		var val1 = component.get('v.ValueofA') ;
        var val2 = component.get('v.ValueofB') ;
        if(val1 != null && val2 != null){
            var Result = parseInt(val1)%parseInt(val2) ;
        	component.set('v.ResultValue',Result) ;
        }
        else{
            alert("Enter the Values") ;
        }
        
	}
    
})
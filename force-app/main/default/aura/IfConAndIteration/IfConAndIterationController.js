({
	doIteration : function(component, event, helper) {
		var numList = [] ;
        var i ;
        for(i=1 ; i<=10 ; i++){
            numList.push({key:i,value:(2*i)}) ;
        }
        component.set("v.numValues",numList) ;
	}
})
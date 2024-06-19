({
    actBtn : function(component,event,helper){
        var whichBtnClicked = event.getSource().get("v.label") ;
        component.set("v.WhichBtn",whichBtnClicked) ;
    }
})
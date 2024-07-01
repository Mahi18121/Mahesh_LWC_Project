import { LightningElement, api} from 'lwc';
import firstPage from './lifeCycleHook.html' ;
import secondPage from './lifeCycleHook2.html' ;

export default class LifeCycleHook extends LightningElement {
    @api templateno = 'temp1';
    changePage(){
        if(this.templateno === 'temp1'){
            this.templateno = 'temp2' ;
        }
        else{
            this.templateno = 'temp1' ;
        }
    }
    render(){
        console.log('Render method is called.') ;
        if(this.templateno === 'temp1')
        return firstPage ;
        else
        return secondPage ;
    }
    renderedCallback(){
        console.log('Render Callback Method is called.')
    }
}
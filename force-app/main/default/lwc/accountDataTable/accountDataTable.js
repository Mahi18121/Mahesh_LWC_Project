import { LightningElement,api, wire, track } from 'lwc';
import getAccounts from '@salesforce/apex/AccountRecordsRetriveClass.getAccounts' ;

const columns = [
    {label:'Name', fieldName:'Name',type:'text'},
    {label:'Industry', fieldName:'Industry',type:'text'},
    {label:'Phone', fieldName:'Phone',type:'phone'},
    {label:'Website', fieldName:'website',type:'url'}
]
export default class AccountDataTable extends LightningElement {
    @api recordId ;
    @track data;
    @track error;
    columns = columns;

    @wire(getAccounts)
    wiredAccounts({error,data}){
        if(data){
            this.data = data ;
            this.error = undefined ;
        } else if (error){
            this.error = error ;
            this.data = undefined ;
        }
    }
}
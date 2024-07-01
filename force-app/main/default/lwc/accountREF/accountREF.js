import { LightningElement,api} from 'lwc';

export default class AccountREF extends LightningElement {
    @api recordId; // Property to hold the record Id passed from parent component

    handleSuccess(event) {
        // Handle successful save
        console.log('Record saved', event.detail.id);
    }

    handleError(event) {
        // Handle error while saving
        console.error('Error saving record', event.detail);
    }
}
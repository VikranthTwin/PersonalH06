import { LightningElement,track,wire} from 'lwc';
import searchCustomerData from '@salesforce/apex/CustomerSearchLWCController.searchCustomerData';
export default class CustomerDisplayScreen extends LightningElement {
    @track wiredsObjectData;
    @track contactId;
    @wire(searchCustomerData,{emailValue:'vickyvikranth016@gmail.com'})
    wiredSobjects(result){        
        if(result.data)
        { 
            console.log('this.contactId'+this.contactId);
            this.wiredsObjectData = result;
        }
    }
}
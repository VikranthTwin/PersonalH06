declare module "@salesforce/apex/CustomerSearchLWCController.searchCustomerData" {
  export default function searchCustomerData(param: {emailValue: any, phoneValue: any, idValue: any}): Promise<any>;
}
declare module "@salesforce/apex/CustomerSearchLWCController.fetchQuestions" {
  export default function fetchQuestions(param: {pubConId: any}): Promise<any>;
}

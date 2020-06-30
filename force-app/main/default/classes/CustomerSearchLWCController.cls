public with sharing class CustomerSearchLWCController {

    @AuraEnabled
    public static CustomerContact__c searchCustomerData(string emailValue,string phoneValue,string idValue) {
         // list<wrapperCustomerSearch> lWrCusSearch = new list<wrapperCustomerSearch>();
          //map<id,public_Contact__x> mPubCont = new map<id,public_Contact__x>();
          CustomerContact__c objPubCon;
          system.debug('idValue-->'+idValue);
          if(!string.isBlank(emailValue) || !string.isBlank(idValue))
          {
              for(CustomerContact__c pc:[select id,Contact_Type__c,Email__c,FirstName__c,Name,Salutation__c,Customer_Account__c,Customer_Account__r.ID_Type__c from CustomerContact__c 
              where Email__c =:emailValue or Customer_Account__r.Id_Number__c  =: idValue limit 1])
              {
                objPubCon =pc;
                system.debug('pc');
              }
          }
          else if(!string.isBlank(phoneValue)) {
                system.debug('Phone no');
          }
          return objPubCon;
    }
    @AuraEnabled
    public static CustomerQuestions__c fetchQuestions(id pubConId)
    {
        CustomerQuestions__c cquestions;
        for(CustomerQuestions__c cq:[select id,CustomerContact__c,What_is_your_Mothers_Maiden_Name__c from CustomerQuestions__c where CustomerContact__c =: pubConId ])
        {
            cquestions = cq;
        }
        return cquestions;
    }
  /*  public class wrapperCustomerSearch{
        @AuraEnabled
        public public_Contact__x pubContact;

            
        public wrapperCustomerSearch(public_Contact__x pubContact,public_Account__x pubAccount)
        {
            this.pubContact = pubContact;
            this.pubAccount = pubAccount;
        }
    }*/
}
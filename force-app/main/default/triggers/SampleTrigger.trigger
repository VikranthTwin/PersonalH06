trigger SampleTrigger on Sample__c (after insert) 
{
  SampleTriggerHandler.Updateinventorylist(trigger.new);
}
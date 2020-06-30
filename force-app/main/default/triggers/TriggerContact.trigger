trigger TriggerContact on Contact (after insert,after update) {
 //   contacttriggerhandler.preventduplicatecontact(trigger.new,trigger.oldmap);
  //  contacttriggerhandler.preventduplicationforupdate(trigger.new,trigger.oldmap);
  contacttriggerhandler.preventduplicationforupdate(trigger.new,trigger.oldmap);
}
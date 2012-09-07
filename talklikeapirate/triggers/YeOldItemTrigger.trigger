//
// This be watchin' o'er th' ports t' be seein' if any matey ou' 
// thar would like t' rephrase his chatterings t' shipmate speak.
//

trigger YeOldItemTrigger on FeedItem (before insert) {
    // do ye fancy t' speak like a pirate?
    TalkLikeAPirate__c yeFancy = TalkLikeAPirate__c.getOrgDefaults();
    if (yeFancy.Enabled__C)
        
        // Then go fore t' loot an' plunder.
        for (FeedItem tale : Trigger.new)
            tale.Body = TalkLikeYeSeaDog.whatSayYe(tale.body);
            
}
//
// This be watchin' o'er th' ports t' be seein' if any matey ou' 
// thar would like t' rephrase his chatterings t' shipmate speak.
//

trigger YeOldCommentTrigger on FeedComment (before insert) {
    // do ye fancy t' speak like a pirate?
    TalkLikeAPirate__c yeFancy = TalkLikeAPirate__c.getOrgDefaults();
    if (yeFancy.Enabled__C)
        
        // Then go fore t' loot an' plunder.
        for (FeedComment tale : Trigger.new)
            tale.CommentBody = TalkLikeYeSeaDog.whatSayYe(tale.CommentBody);
}
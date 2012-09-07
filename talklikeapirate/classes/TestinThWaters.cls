//
// Red sky at night, sailor’s delight.
// Red sky in morning, sailor’s warning.
//

@isTest
public class TestinThWaters{

    static testMethod void testinYeTriggers(){
        TalkLikeAPirate__c yeOrgWideFancy = new TalkLikeAPirate__c(); //[SELECT id FROM TalkLikeAPirate__c LIMIT 1];
        String yeOldTestPhrase = 'Hey Jim!! Do you want to meet with the customer for lunch?';
        String yeOldResponse = 'Yes, but first I must drink some coffee.';
        
        Test.startTest();
        
        // First, we test t' be seein' if ye be chattin' by land.
        yeOrgWideFancy.Enabled__c = false;
        insert yeOrgWideFancy;
        
        FeedItem yeTale = new FeedItem(Body=yeOldTestPhrase, ParentId=UserInfo.getUserId());
        insert yeTale;
        
        yeTale = [SELECT Body FROM FeedItem WHERE id =: yeTale.id];
        System.assertEquals(yeOldTestPhrase, yeTale.Body);
        
        FeedComment yerMatey = new FeedComment(CommentBody=yeOldResponse, FeedItemId=yeTale.id);
        insert yerMatey;
        
        yerMatey = [SELECT CommentBody FROM FeedComment WHERE id =: yerMatey.id];
        System.assertEquals(yeOldResponse, yerMatey.CommentBody);
        
        
        
        // Then, we test t' be seein' if ye be chattin' by sea.
        yeOrgWideFancy.Enabled__c = true;
        update yeOrgWideFancy;
        
        yeTale = new FeedItem(Body=yeOldTestPhrase, ParentId=UserInfo.getUserId());
        insert yeTale;
        
        yeTale = [SELECT Body FROM FeedItem WHERE id =: yeTale.id];
        System.assertEquals('Ahoy Jim!! Do ye wants t\' meet wit\' th\' customer fer grub?', yeTale.Body);
         
        yerMatey = new FeedComment(CommentBody=yeOldResponse, FeedItemId=yeTale.id);
        insert yerMatey;
        
        yerMatey = [SELECT CommentBody FROM FeedComment WHERE id =: yerMatey.id];
        System.assertEquals('Ay, but first I must drink some grog.', yerMatey.CommentBody);
        
        
        Test.stopTest();
    
    }
}
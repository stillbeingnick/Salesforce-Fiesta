trigger SubscriptionUpSellOpportunity on Subscription__c (after insert) {
    list <Opportunity> opptyInsert = new list <Opportunity> ();
    For (Subscription__c Upsell : Trigger.new) {
        
        If (Upsell.Subscription_Level__c == 'Bronze') {
            
            Opportunity opp = new Opportunity ();
            opp.AccountId = Upsell.Subscription_Holder__c;
            opp.Name = Upsell.Name + ' Upsell';
            opp.StageName = 'Qualification';
            opp.CloseDate = Date.Today() + 30;
            opp.Amount = 200;
            opptyInsert.add(opp);
             
        }
        else if (Upsell.Subscription_Level__c == 'Silver') {
            
            Opportunity opp = new Opportunity ();
            opp.AccountId = Upsell.Subscription_Holder__c;
            opp.Name = Upsell.Name + ' Upsell';
            opp.StageName = 'Qualification';
            opp.CloseDate = Date.Today() + 30;
            opp.Amount = 100;
            opptyInsert.add(opp);
        }
        else if (Upsell.Subscription_Level__c == 'Gold') {
            
            Opportunity opp = new Opportunity ();
            opp.AccountId = Upsell.Subscription_Holder__c;
            opp.Name = Upsell.Name + ' Upsell';
            opp.StageName = 'Qualification';
            opp.CloseDate = Date.Today() + 30;
            opp.Amount = 50;
            opptyInsert.add(opp);
        }
        
        try {
            insert opptyInsert;
        }
        catch (system.DmlException e) {
            system.debug (e);
        }
            
                             
    }

}
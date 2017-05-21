@istest

public class TestUpsellOppty {
	
	static testMethod void SubscriptionTest() {
		
		Subscription__c sub = new Subscription__c();
		sub.Subscription_Holder__c = '0016A00000374tkQAA';
		sub.Subscription_Level__c = 'Bronze';
		
		insert sub;
		
		
	}
    
}
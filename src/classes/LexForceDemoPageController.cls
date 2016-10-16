public with sharing class LexForceDemoPageController {
	private LexForce__c lexForce;
    public LexForce__c getLexForce() { return lexForce; }


    public LexForceDemoPageController(ApexPages.StandardController stdController) {
        if (String.isEmpty(ApexPages.currentPage().getParameters().get('id'))) {
            this.lexForce = new LexForce__c();
        } else {
            this.lexForce = 
                [SELECT 
                    Id,
                    Name, 
                    Account__c,
                    Checkbox__c,
                    Currency__c,
                    Date__c,
                    Datetime__c,
                    Email__c,
                    Geolocation__c,
                    Geolocation__latitude__s,
                    Geolocation__Longitude__s,
                    MultiPicklist__c,
                    Number__c,
                    Percent__c,
                    Phone__c,
                    Picklist__c,
                    Dep_Picklist__c,
                    Dep_Picklist_2__c,
                    Text__c,
                    TextArea__c,
                    TextAreaLong__c,
                    TextAreaRich__c,
                    URL__c
                FROM LexForce__c 
                WHERE Id = :ApexPages.currentPage().getParameters().get('id')];
        }
    }

    public PageReference save() {
        ApexPages.StandardController sc = new ApexPages.StandardController(lexForce);
        return sc.save();
    }

    public PageReference cancel() {
        ApexPages.StandardController sc = new ApexPages.StandardController(lexForce);
        return sc.cancel();
    }	
}
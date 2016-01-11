public with sharing class LexForceController {

	private LexForce__c lexForce;
    public LexForce__c getLexForce() { return lexForce; }


    // The extension constructor initializes the private member
    // variable mysObject by using the getRecord method from the standard
    // controller.
    public LexForceController() {
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
                MultiPicklist__c,
                Number__c,
                Percent__c,
                Phone__c,
                Picklist__c,
                Text__c,
                TextArea__c,
                TextAreaLong__c,
                TextAreaRich__c,
                URL__c
            FROM LexForce__c 
            WHERE Id = :ApexPages.currentPage().getParameters().get('id')];
    }
}
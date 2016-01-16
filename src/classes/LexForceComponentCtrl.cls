public with sharing class LexForceComponentCtrl {
    public SObject inputObject { get; set; }
    public String fieldName { get; set; }
    
    public String objectName { 
    	get {
    		if (inputObject != null)
        		return inputObject.getSObjectType().getDescribe().getName();
    		else
    			return 'Empty';
    	}
    }
    
    public LexForceComponentCtrl() {

    }
}
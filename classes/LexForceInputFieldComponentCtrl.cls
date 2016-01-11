public with sharing class LexForceInputFieldComponentCtrl {
    public SObject inputObject { get; set; }
    public String fieldName { get; set; }

    public Boolean isReadOnly {
    	get {
    		return !getFieldDescribe().isUpdateable();
    	}
    }

    public Boolean isInput {
    	get {
    		DisplayType dispType = getFieldDescribe().getType();
    		if (dispType == Schema.DisplayType.String ||
    			dispType == Schema.DisplayType.Phone)
    			return true;
    		else
    			return false;
    	}
    }

    public Boolean isTextarea {
    	get {
    		DisplayType dispType = getFieldDescribe().getType();
    		if (dispType == Schema.DisplayType.TextArea)
    			return true;
    		else
    			return false;
    	}
    }

	public SObjectField getSField() { 
		if (inputObject != null)
    		return inputObject.getSObjectType().getDescribe().fields.getMap().get(fieldName);
		else
			return null;
	}

	public DescribeFieldResult getFieldDescribe() { 
		SObjectField sf = getSField();
		if (sf != null)
			return sf.getDescribe();
		else
			return null;
	}

    //
    public String objectName { 
    	get {
    		if (inputObject != null)
        		return inputObject.getSObjectType().getDescribe().getName();
    		else
    			return '';
    	}
    }
/*
    public String fieldLabel { 
    	get {
    		if (inputObject != null)
        		return inputObject.getSObjectType().getDescribe().getName();
    		else
    			return '';
    	}
    }
*/
	public LexForceInputFieldComponentCtrl() {
		
	}
}
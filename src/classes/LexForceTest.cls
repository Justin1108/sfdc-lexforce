@isTest
private class LexForceTest {
	
	@isTest 
	static void testController() {
		Contact c = new Contact();

		LexForceComponentCtrl ctrl = new LexForceComponentCtrl();
		System.assertEquals('', ctrl.objectName);
		System.assertEquals(null, ctrl.getFieldDescribe());
		System.assertEquals(null, ctrl.getSField());

		ctrl.inputObject = c;
		ctrl.fieldName = 'LastName';

		System.assertEquals('Contact', ctrl.objectName);
		System.assertEquals(Contact.LastName.getDescribe(), ctrl.getFieldDescribe());
		System.assertEquals(Contact.LastName, ctrl.getSField());
		System.assertEquals(false, ctrl.isReadOnly);

		System.assertEquals(true, ctrl.isInput);
		System.assertEquals(false, ctrl.isTextarea);
		System.assertEquals(false, ctrl.isPicklist);
		System.assertEquals(false, ctrl.isDependentPicklist);
		System.assertEquals(false, ctrl.isMultiPicklist);
		System.assertEquals(false, ctrl.isCheckbox);
		System.assertEquals(false, ctrl.isDatetime);
		System.assertEquals(false, ctrl.isLookup);

		ctrl.fieldName = 'AccountId';
		System.assertEquals(true, ctrl.isLookup);

		ctrl.fieldName = 'Description';
		System.assertEquals(false, ctrl.isInput);
		System.assertEquals(true, ctrl.isTextarea);

		ctrl.fieldName = 'Salutation';
		System.assertEquals(false, ctrl.isInput);
		System.assertEquals(true, ctrl.isPicklist);

		ctrl.fieldName = 'HasOptedOutOfEmail';
		System.assertEquals(false, ctrl.isInput);
		System.assertEquals(true, ctrl.isCheckbox);

		ctrl.fieldName = 'LastCUUpdateDate';
		System.assertEquals(false, ctrl.isInput);
		System.assertEquals(true, ctrl.isDatetime);
	}
}

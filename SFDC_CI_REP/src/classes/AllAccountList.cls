public class AllAccountList 
{
    //AllAccnt
    public list<Employee_s__c> AllAccnt{get;set;}
    public list<string> FieldNames{get;set;}
    public Map<String, Schema.SObjectField> fldObjMap = schema.SObjectType.Employee_s__c.fields.getMap();
    List<Schema.SObjectField> fldObjMapValues = fldObjMap.values();
    public List <ApexPages.Component> childComponents {get; set;}
    
    /*public Component.Apex.PageBlockTable getMyPageBlockTable()
    {
        Component.Apex.PageBlockTable table = new Component.Apex.PageBlockTable(var='acc');
        table.expressions.value='{!AccountList}';
        for(Schema.FieldSetMember fsm : SObjectType.Account.FieldSets.MyFieldset.getFields())
        {
            Component.Apex.OutputField outputField = new Component.Apex.OutputField();
            outputField.expressions.value = '{!acc.' + fsm.getFieldPath() + '}';
            Component.Apex.Column column = new Component.Apex.Column(headerValue=fsm.getLabel());
            column.childComponents.add(outputField);
            table.childComponents.add(column);
        }
        return table;
    }*/
    public AllAccountList(ApexPages.StandardController controller)
    {
        
        Component.Apex.PageBlock pageBlk = new Component.Apex.PageBlock();
        Component.Apex.PageBlockSection pageBlkSection = new
        Component.Apex.PageBlockSection(title='dummy header');
        pageBlk.childComponents.add(pageBlkSection);
        
        FieldNames=new List<String>();
        String theQuery = 'SELECT ';
        for(Schema.SObjectField s : fldObjMapValues)
        {
            //String theLabel = s.getDescribe().getLabel(); // Perhaps store this in another map
            //String theType = s.getDescribe().getType(); // Perhaps store this in another map this in another map
            String theName = s.getDescribe().getName();
            FieldNames.add(theName);
            
            // Continue building your dynamic query string
            
            theQuery += theName + ',';
       }    
        // Trim last comma
        theQuery = theQuery.subString(0, theQuery.length() - 1);
        
        // Finalize query string
        theQuery += ' FROM Employee_s__c';
        
        // Make your dynamic call
        
        AllAccnt = new list<Employee_s__c>();
        AllAccnt= Database.query(theQuery);
        
    
    }
}
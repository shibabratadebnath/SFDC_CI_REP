public class testing
{
    public list<Employee_s__c> accrec{get;set;}
    public void teston()
    {
        accrec=new list<Employee_s__c>();
        accrec=[select id,name from Employee_s__c];
    }
}
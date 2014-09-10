public class WrapperClass_checkbox
{
    public list<wrapperclass> wrapperlist{get;set;}
    public list<Employee_s__c> emprecs{get;set;}
    public WrapperClass_checkbox(ApexPages.StandardController controller)
    {
        ReusageCode();
    }
    public void deleterows()
    {
        for(integer i=0;i<wrapperlist.size();i++)
        {
            if(wrapperlist[i].checkboxvar==true)
            {
                delete(wrapperlist[i].empdata);
            }
        }
        ReusageCode();
    }
    public void ReusageCode()
    {
        wrapperlist=new list<wrapperclass>();
        emprecs=new list<Employee_s__c>();
        emprecs=[select Id,Name,Address__c,Company__c,Salary__c from Employee_s__c];
        for(integer i=0;i<emprecs.size();i++)
        {
            wrapperclass wrapobj=new wrapperclass();
            wrapobj.checkboxvar=false;
            wrapobj.empdata=emprecs[i];
            wrapperlist.add(wrapobj);
        }
    }
    
    public class WrapperClass
    {
        public boolean checkboxvar{get;set;}
        public Employee_s__c empdata{get;set;}
    }
}
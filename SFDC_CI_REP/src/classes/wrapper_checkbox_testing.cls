public class wrapper_checkbox_testing
{
    public list<wrapperclass> wrapperlist{get;set;}
    public list<Employee_s__c> selected{get;set;}
    public list<Employee_s__c> emprecs{get;set;}
    public void meths()
    {
        ReusageCode();
    }
    public void deleterows()
    {
        selected=new list<Employee_s__c>();
        for(integer i=0;i<wrapperlist.size();i++)
        {
            if(wrapperlist[i].checkboxvar==true)
            {
                selected.add(wrapperlist[i].empdata);
            }
        }
        ReusageCode();
    }
    /*public void deleterows()
    {
        for(integer i=0;i<wrapperlist.size();i++)
        {
            if(wrapperlist[i].checkboxvar==true)
            {
                delete(wrapperlist[i].empdata);
            }
        }
        ReusageCode();
    }*/
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
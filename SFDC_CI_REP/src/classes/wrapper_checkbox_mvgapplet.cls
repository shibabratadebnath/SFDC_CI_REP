public class wrapper_checkbox_mvgapplet
{
    public list<wrapperclass> wrapperlist{get;set;}
    public list<wrapperclass> selected{get;set;}
    public list<Employee_s__c> emprecs{get;set;}
    public wrapper_checkbox_mvgapplet()
    {
        wrapperlist=new list<wrapperclass>();
        emprecs=new list<Employee_s__c>();
        selected=new list<wrapperclass>();
        emprecs=[select Id,Name,Address__c,Company__c,Salary__c from Employee_s__c];
        for(integer i=0;i<emprecs.size();i++)
        {
            wrapperclass wrapobj=new wrapperclass();
            wrapobj.checkboxvar=false;
            wrapobj.empdata=emprecs[i];
            wrapperlist.add(wrapobj);
        }
    }
    public void deleterows()
    {
        for(integer i=0;i<wrapperlist.size();i++)
        {
            if(wrapperlist[i].checkboxvar==true)
            {
                wrapperlist[i].checkboxvar=false;
                selected.add(wrapperlist[i]);
                wrapperlist.remove(i);
                i--;
                
            } 
        }
    }  
    public void moveleft()
    {
        for(integer j=0;j<selected.size();j++)
        {
            if(selected[j].checkboxvar==true)
            {
                selected[j].checkboxvar=false;
                wrapperlist.add(selected[j]);
                selected.remove(j);
                j--;
            }   
        }
    }
    public class WrapperClass
    {
        public boolean checkboxvar{get;set;}
        public Employee_s__c empdata{get;set;}
    }
}
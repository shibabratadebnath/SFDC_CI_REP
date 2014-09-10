public class searchAll
{
    public String ipname{get;set;}
    public List<Account> accrec{get;set;}
    public List<Contact> conrec{get;set;}
    public List<Employee_s__c> emprec{get;set;}
    public void NameMethod()
    {
        accrec=new List<Account>();
        accrec=[select id,Name from Account where Name=:ipname];
        conrec=new List<Contact>();
        conrec=[select id,Name from Contact where Name=:ipname];
        emprec=new List<Employee_s__c>();
        emprec=[select id,Name from Employee_s__c where Name=:ipname];
        
        
    }
}
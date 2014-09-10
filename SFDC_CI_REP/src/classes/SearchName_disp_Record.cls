public class SearchName_disp_Record
{
    public String empname{get;set;}
    public List<Employee_s__c> emprec{get;set;}
    public void showrecords()
    {
        emprec=new List<Employee_s__c>();
        emprec=[Select Id,Name,Address__c,Company__c,Salary__c from Employee_s__c where Name like: ('%'+empname+'%')];
    }
}
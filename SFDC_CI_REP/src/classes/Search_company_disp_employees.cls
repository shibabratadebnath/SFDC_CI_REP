public class Search_company_disp_employees
{
    public String comname{get;set;}
    public List<Employee_s__c> emprec{get;set;}
    public void showrecords()
    {
        emprec=new List<Employee_s__c>();
        emprec=[Select Id,Name,Address__c,Company__c,Salary__c from Employee_s__c where Company__c in (select id from Company__c where Company_Name__c=:comname)];
    }
}
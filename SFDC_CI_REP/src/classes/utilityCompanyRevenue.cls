public class utilityCompanyRevenue
{
    public static void insertrev(List<Company__c> Company, String Event)
    {
        if(Event=='insert')
        {
            for(Company__c comobj:Company)
            {
                comobj.Company_Revenue__c=1000;
            }
        }
        if(Event=='update')
        {
            for(Company__c comobj:Company)
            {
                comobj.Company_Revenue__c=2000;
            }
        }
    }
    public static void createNewEmp(List<Company__c> Company)
    {
        for(Company__c comobj:Company)
        {
            Employee_s__c empobj=new Employee_s__c();
            empobj.name=comobj.Company_CEO__c;
            empobj.Company__c=comobj.id;
            empobj.Salary__c=10000;
            
        }
    }
}
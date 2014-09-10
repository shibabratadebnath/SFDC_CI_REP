public class ShowOnlyJoinedEmployees
{
    public List<Employee_s__c> EmployyeRecds{get;set;}
    public List<cloneEmployyes> DE{get;set;}
    public Employee_s__c newVar{get;set;}
    public ShowOnlyJoinedEmployees(ApexPages.StandardController controller) 
    {
        ReusageOfCode();
    }
    public void clonerec()
    {
        for(integer i=0;i<DE.size();i++)
        {
            if(DE[i].CheckBOXVar == true)
            {
                newVar=DE[i].empVar;
            }
        }
        insert newVar;
        ReusageOfCode();
    }
    public void ReusageOfCode()
    {
        ID UrlId = apexpages.currentpage().getparameters().get('id');
        EmployyeRecds = [select Name,Address__c,Company__c,Salary__c,Joined_Resigned__c from Employee_s__c where (Company__c=:UrlId)];
        DE = new List<cloneEmployyes>();
        for(integer i=0;i<EmployyeRecds.size();i++)
        {
            cloneEmployyes singleDE = new cloneEmployyes();
            singleDE.CheckBOXVar = false;
            singleDE.empVar= EmployyeRecds[i];
            DE.add(singleDE);
        }
    }
    public class cloneEmployyes
    {
        public Boolean CheckBOXVar{get;set;}
        public Employee_s__c empVar{get;set;}
    }
}
public class Confirm_delete
{
     public List<Employee_s__c> EmployyeRecds{get;set;}
     
     public List<deleteEmployyes> DE{get;set;}
     
    public Confirm_delete(ApexPages.StandardController controller) {
        ReusageOfCode();
    }
    
    public void DeleteMethod()
    {
        for(integer i=0;i<DE.size();i++)
        {
            if(DE[i].CheckBOXVar == true)
            {
                delete DE[i].empVar;
            }
        } 
        ReusageOfCode();
    }
    
    
    
    public void ReusageOfCode()
    {
        ID UrlId = apexpages.currentpage().getparameters().get('id');
        EmployyeRecds = [select id,Address__c,name from Employee_s__c where (Company__c=:UrlId and Joined_Resigned__c=:'Joined')];
        DE = new List<deleteEmployyes>();
        for(integer i=0;i<EmployyeRecds.size();i++)
        {
            deleteEmployyes singleDE = new deleteEmployyes();
            singleDE.CheckBOXVar = false;
            singleDE.empVar= EmployyeRecds[i];
            
            DE.add(singleDE);
        }
    }
    
    public class deleteEmployyes
    {
        public Boolean CheckBOXVar{get;set;}
        public Employee_s__c empVar{get;set;}
    }

}
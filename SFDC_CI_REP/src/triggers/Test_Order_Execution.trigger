trigger Test_Order_Execution on Employee_s__c (before insert) 
{
    for(Employee_s__c emp:Trigger.new)
    {
        if(emp.Salary__c==0)
        {
            System.debug('Salary Cant be Zero');
        }
    }
}
trigger InsertUpdateRevenue on Company__c (before insert,before update) 
{
    if(Trigger.isInsert)
    {
        if(Trigger.isBefore)
        {
            utilityCompanyRevenue.insertrev(Trigger.new,'insert');
        }
        if(Trigger.isAfter)
        {
            utilityCompanyRevenue.createNewEmp(Trigger.new);
        }
    }
    if(Trigger.isUpdate)
    {
        utilityCompanyRevenue.insertrev(Trigger.new,'update');
    }
}
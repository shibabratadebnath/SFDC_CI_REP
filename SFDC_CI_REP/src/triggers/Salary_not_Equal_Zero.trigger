trigger Salary_not_Equal_Zero on Employee_s__c (after insert) 
{
    Employee_s__c emp = Trigger.new[0];
    if(emp.Salary__c==0)
    {
        emp.addError('Salary Cant be Zero');
    }
}

/*trigger Salary_not_Equal_Zero on Employee_s__c (before insert) 
{
    for(Employee_s__c emp:Trigger.new)
    {
        if(emp.Salary__c==0)
        {
            emp.addError('Salary Cant be Zero');
        }
        Account acc= new Account();
        acc.Name=emp.Name;
        acc.Phone='9254254217';
        insert(acc);
    }
}*/
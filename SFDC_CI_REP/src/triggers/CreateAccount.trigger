/*trigger CreateAccount on Employee_s__c(after insert) 
{
    List<Account> listAccount = new List<Account>();
    for(Employee_s__c emp:Trigger.new)
    {
        Account acc= new Account();
        acc.Name=emp.Name;
        acc.Phone='9254254217';
        listAccount.add(acc);
    }
    Database.update(listAccount);
}*/
trigger CreateAccount on Employee_s__c(after insert) 
{
    List<Account> acclist = new List<Account>();
    for(Employee_s__c emp:Trigger.new)
    {
        Account acc= new Account();
        acc.Name=emp.Name;
        acc.Phone='9254254217';
        acclist.add(acc);
    }
    Database.update(acclist);
}
/*fetch is working*/

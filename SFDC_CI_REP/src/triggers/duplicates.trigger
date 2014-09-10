/*trigger duplicates on Lead (before insert) 
{
    for(Lead newlist:Trigger.new)
    {
        if(newlist.Company==Trigger.new[0].Company)
        {
            oldlist.Company.addError('Duplicates exist. Please enter correct data');
        }
    }
}
*/
trigger duplicates on Lead (before insert) 
{
    List<Lead> oldlist=new List<Lead>();
    oldlist=[Select Id, Company from Lead];
    for(Lead old:oldlist)
    {
        if(old.Company==Trigger.new[0].Company)
        {
            
            old.Company.addError('Duplicates exist. Please enter correct data');
      }
    }
}
public class ActionFunctionComponent
{
    
    public String MyString{get;set;}
    
    
    public void myAction()
    {
        String s1  = apexpages.currentpage().getparameters().get('MyString');
        system.debug('I AM CALLING===>'+s1);
    }
    
    
}
public class calc
{
    public integer num1{get;set;}
    public integer num2{get;set;}
    public integer op{get;set;}
    public void add()
    {
        op=num1+num2;
        
    }
     public void sub()
    {
        op=num1-num2;
    }
     public void mul()
    {
        op=num1*num2;
    }
     public void div()
    {
        if(num2!=0)
        {
            op=num1/num2;
        }
        else
        {
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.WARNING,'No Zero'));
        }
    }
    
}
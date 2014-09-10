public class Billingfunc
{
    public integer amount{get;set;}
    public integer amt{get;set;}
    public integer cust_amt{get;set;}
    public integer Rs1000{get;set;}
    public integer Rs500{get;set;}
    public integer Rs100{get;set;}
    public integer Rs50{get;set;}
    public integer Rs20{get;set;}
    public integer Rs10{get;set;}
    public integer R500{get;set;}
    public integer R100{get;set;}
    public integer R50{get;set;}
    public integer R20{get;set;}
    public integer R10{get;set;}
    
    public void calc()
    {
    if(Rs500 < 5)
    {
    }
    else
    {Rs500 = 5;
    }
        
        Rs100=Rs50=Rs20=Rs10=5;
        
        amt=cust_amt-amount;
        R500=R100=R50=R20=R10=0;
        do
        {
            System.debug('While');
            if(amt>=500)
            {
                Integer n=amt/500;
                Rs500=Rs500-n;
                R500=R500+n;
                System.debug('Rs500');
                if(n!=0)
                    amt=math.mod(amt,500);    
            }
            else if(amt>=100)
            {
                Integer n=amt/100;
                Rs100=Rs100-n;
                R100=R100+n;
                System.debug('Rs100');
                if(n!=0)
                    amt=math.mod(amt,100);
            }
            else if(amt>=50)
            {
                Integer n=amt/50;
                Rs50=Rs50-n;
                R50=R50+n;
                System.debug('Rs50');
                if(n!=0)
                    amt=math.mod(amt,50);
            }
            else if(amt>=20)
            {
                Integer n=amt/20;
                Rs20=Rs20-n;
                R20=R20+n;
                System.debug('Rs20');
                if(n!=0)
                    amt=math.mod(amt,20);
            }
            else if(amt>=10)
            {
                Integer n=amt/10;
                Rs10=Rs10-n;
                R10=R10+n;
                System.debug('Rs10');
                if(n!=0)
                amt=math.mod(amt,10);
            } 
        }while(amt>0);
        
    }
}
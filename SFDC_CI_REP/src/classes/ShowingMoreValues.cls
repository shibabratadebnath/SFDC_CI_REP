public class ShowingMoreValues
{
    public integer MyNumber{get;set;}
    
    public List<integer> allNumbers{get;set;}
    
    public void MyMethod()
    {
        allNumbers = new List<integer>();
        
        for(integer i=0;i<MyNumber;i++)
        {
            allNumbers.add(i);
        }
        
    }
}
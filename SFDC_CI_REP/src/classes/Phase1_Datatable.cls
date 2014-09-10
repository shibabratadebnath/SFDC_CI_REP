public class Phase1_Datatable
{
    public integer num{get;set;}
    public List<InnerClass> totallist{get;set;}
    public class InnerClass
    {
        public integer numlist{get;set;}
        public integer mullist{get;set;}
    }
    public void series()
    {
        totallist = new List<InnerClass>();
        for(integer i=0;i<num;i++)
        {
            InnerClass icl=new InnerClass();
            icl.numlist=i;
            icl.mullist=i*2;
            totallist.add(icl);
        }
        
    }
    
}
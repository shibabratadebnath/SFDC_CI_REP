public class wrapper_class_odd_even
{
    public integer num{get;set;}
    public list<wrapperclass> wrapperlist{get;set;}
    public class WrapperClass
    {
        public integer evennum{get;set;}
        public integer oddnum{get;set;}
    }
    public void evenoddnums()
    {
        wrapperlist=new list<wrapperclass>();
        for(integer i=0;i<num;i++)
        {
            wrapperclass wrapperobj=new wrapperclass();
            wrapperobj.evennum=i;
            integer j=i+1;
            wrapperobj.oddnum=j;
            i=j;
            wrapperlist.add(wrapperobj);
        }
    }
}
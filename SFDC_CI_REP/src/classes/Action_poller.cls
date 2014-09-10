public class Action_poller
{
    public integer count{get;set;}
    public Action_poller()
    {
        count=0;
    }
    public void actpoll()
    {
           count=count+5;
           
    }
}
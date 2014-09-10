public class test_actionfunc
{
    public String myvalue{get;set;}
    public void apexfunc()
    {
        String s1  = apexpages.currentpage().getparameters().get('myvalue');
    }

}
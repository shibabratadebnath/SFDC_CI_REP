public class taskclass {
public list <Task> myrecords {get;set;}

    public taskclass(ApexPages.StandardController controller) {
myrecords =new list <Task> ();
myrecords.add(new Task());
myrecords.add(new Task());
    }



//methods|functions
public void saving ()
{ insert myrecords ; }

}
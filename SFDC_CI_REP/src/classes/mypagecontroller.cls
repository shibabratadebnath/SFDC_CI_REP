public class mypagecontroller {

//attributes|properties
public list <Merchandise__c> myrecords {get;set;}
 
//constructor
public mypagecontroller(){
myrecords =new list <Merchandise__c> ();
myrecords.add(new Merchandise__c());
myrecords.add(new Merchandise__c());
}
//methods|functions
public void saving ()
{ insert myrecords ; }

}
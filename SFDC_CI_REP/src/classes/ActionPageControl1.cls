public with sharing class ActionPageControl1 
{

    public String valueOne { get; set; }
    
    
    public PageReference iWantMyJSValues() {
        valueOne = Apexpages.currentPage().getParameters().get('one');
        
        return null;
    }
}
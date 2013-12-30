public with sharing class qEmployeeDetailExtension{

    public qEmployee__c theEmployee {get;set;}

    public Boolean bEditEmployee {get;set;}
    public Boolean bViewEmployee {get;set;}
    public Id theEmployeeId {get;set;}
    
    public qEmployeeDetailExtension(ApexPages.StandardController controller) {
        bEditEmployee = false;
        bViewEmployee = true;
        
        // Get information about the Employee
        if(controller.getRecord().Id != null){
          theEmployee = [select Id, First_Name__c, Last_Name__c, Avatar__c, Phone__c, Email__c, Avatar_Name__c from qEmployee__c where Id = : controller.getRecord().Id limit 1];
        }
    }
}
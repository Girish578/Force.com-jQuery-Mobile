public with sharing class qEmployeeListExtension{
       
    public qEmployee__c[] qEmployeeList {get;set;}
    
    
    public qEmployeeListExtension(ApexPages.StandardController controller) {
            qEmployeeList = [select First_Name__c, Last_Name__c, Sex__c, Email__c, Phone__c, Avatar_Name__c, Avatar__c from qEmployee__c order by Last_Name__c, First_Name__c];
        }
}
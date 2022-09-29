/*
  *
  * large header comment
  *
  */
public class NewClass {

  Integer newField;

  public NewClass(Integer value){
    newField = value;
    value = 5;
  }
     @AuraEnabled
    public static PagedResult findAll(String searchKey, Decimal minAlcohol, Decimal pageNumber) {
        Integer pageSize = 12;
        String key = '%' + searchKey + '%';
        Integer offset = ((Integer)pageNumber - 1) * pageSize;
        
        PagedResult r =  new PagedResult();     
        
        r.products = [SELECT Id, Name, Alcohol__c, Tags__c, Brewery__r.Name, Image__c FROM Beer__c
                    WHERE (Name LIKE :key OR Brewery__r.Name LIKE :key OR Tags__c LIKE :key )
                    AND Alcohol__c >= :minAlcohol
                    ORDER BY NAME LIMIT 12 OFFSET :offset]; 
        System.debug(r);
        return r;
    }
  
  // comment \ca for TST3 as domain data was loaded with \ca and \us
  
  private void unused3(){}
  private void unused4(){}
  private void unused5(){}
  private void unused6(){}
  private void unused7(){}
  private void unused8(){}
  

  /*
  * This is fine.
  */
  public boolean isBadExample(){
    return true;
  }
  
  /*
  * This is fine.
  */
  public boolean isBadExampleTheSecond(){
    return true;
  }
  

private void unused(){}

//Comment for empty method
private void unused2(Integer param){
  param = 6;
}


}

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
  
  // comment \ca for TST3 as domain data was loaded with \ca and \us
  
  private void unused3(){}
  private void unused4(){}
  private void unused5(){}
  private void unused6(){}
  private void unused7(){}
  

  /*
  * This is fine.
  */
  public boolean isBadExample(){ 
    return true; 
  } 

  
  public void terribleCode(Integer param){
    //New Comment
  }

  // Best practice: user-friendly error message provided by an AuraHandledException
@AuraEnabled
public static void triggerBasicAuraHandledError() {
    try {
        integer a = 1 / 0; // Division by zero causes exception
    } catch (Exception e) {
        // "Convert" the exception into an AuraHandledException
        throw new AuraHandledException(Label.errorOccurred, e);
    }
}

//trigger
//another



}

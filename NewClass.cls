public class NewClass {

  Integer newField;

  public NewClass(Integer value){
    newField = value;
  }

  private void unusedMethod(){}

  /*
  * This is fine.
  */
  public boolean isBadExample(){ 
    return true; 
  } 

  
  public void terribleCode(Integer param){
    
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

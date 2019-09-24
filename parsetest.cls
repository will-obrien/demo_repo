  public global with sharing class MyClass {
  
    //comment kick off
  private date obtainDate(Integer contador) {
    list<String> operationDate = actionsList.get(contador).split(':');
    final String operation = operationDate.get(0);
    date fechaElegida;
    try {
      switch on operation {  //NOSONAR
        when 'TODAY' {
          fechaElegida = Date.today();
        }
        when 'DAY' {
          if (comprobarFecha(operationDate.get(1))) {
            fechaElegida = date.valueOf(operationDate.get(1));
          } else {
            throw new JobException('The field values of Data Type is incorrect or format of date is incorrect. The format correct is YYYY-MM-DD');
          }
        }
        when 'NEXT-N-MONTH' {
          final integer nmonth = integer.valueof(operationDate.get(1));
          fechaElegida = Date.today().addMonths(nmonth);
        }
        when 'LAST-N-MONTH' {
          final integer nmonth = integer.valueof(operationDate.get(1));
          fechaElegida = Date.today().addMonths(-nmonth);
        }
        when 'NEXT-N-DAY' {
          final integer nday = integer.valueof(operationDate.get(1));
          fechaElegida = Date.today() + nday;
        }
        when 'LAST-N-DAY' {
          final integer nday = integer.valueof(operationDate.get(1));
          fechaElegida = Date.today() - nday;
        }
        when else {
          throw new JobException('The field values of Data Type is incorrect or format of date is incorrect. Please revised the field duap__FieldValues__c of Custom Setting duap__Filters__c');
        }
      }
    } catch (Exception ex) {
      throw new JobException('The field values of Data Type is incorrect or format of date is incorrect. Please revised the field duap__FieldValues__c of Custom Setting duap__Filters__c: ' + ex);
    }
    return fechaElegida;
  }
    
    private void addmethod(Integer param){
      //commented af
      param = 6;
    }

  }

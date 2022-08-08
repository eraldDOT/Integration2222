@isTest
public  class CalculatorServiceMock implements WebServiceMock {
    
    public String mode;
    public static String ADD_MODE='ADD_MODE';
    public static String SUB_MODE='SUB_MODE';
    public static String DIV_MODE='DIV_MODE';
    public static String MUL_MODE='MUL_MODE';
    
    public CalculatorServiceMock(String mockMode) {
        this.mode = mockMode;
    }

    public void doInvoke( 
    Object stub,
    Object request,
    Map<String, Object> response,
    String endpoint,
    String soapAction,
    String requestName,
    String responseNS,
    String responseName,
    String responseType){

        if (mode == ADD_MODE){
            calculatorServices.doAddResponse addResponse = new calculatorServices.doAddResponse();
            addResponse.return_x = 9.0;
            response.put('addResponse', addResponse);
        }

        else if (mode == SUB_MODE){
            calculatorServices.doSubtractResponse subResponse = new calculatorServices.doSubtractResponse();
            subResponse.return_x = 3.0;
            response.put('subResponse', subResponse);
        }

        else if (mode == MUL_MODE){
            calculatorServices.doMultiplyResponse mulResponse = new calculatorServices.doMultiplyResponse();
            mulResponse.return_x = 18.0;
            response.put('mulResponse', mulResponse);
        }

        else if(mode == DIV_MODE){
            calculatorServices.doDivideResponse divResponse = new calculatorServices.doDivideResponse();
            divResponse.return_x = 6.0;
            response.put('divResponse', divResponse);
        }

    }
}

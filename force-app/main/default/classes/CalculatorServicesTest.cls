@isTest
public class CalculatorServicesTest {
    
    static Double x = 6.0;
    static Double y = 3.0;
    
    @isTest
    public static void testAddCallout(){
        Test.setMock(WebServiceMock.class, new CalculatorServiceMock(CalculatorServiceMock.ADD_MODE));
        calculatorServices.CalculatorImplPort calculator = new calculatorServices.CalculatorImplPort();
        Double result = calculator.doAdd(x, y);
        Double expected = x + y;
        System.assertEquals(expected, result, 'The result should be 9.0');
    }
}

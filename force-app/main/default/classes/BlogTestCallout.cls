@isTest
public with sharing class BlogTestCallout {
    public static Integer RESPONSE_CODE = 200;
    public static String RESPONSE_HEADER_KEY = 'Content-Type';
    public static String RESPONSE_HEADER_VALUE = 'application/json';
    public static String RESPONSE_BODY = '{"author": "Aldo Mirashi","blogs":[{"id":1,"title": "Salesforce", "url": "https://www.sfdcstop.com/2019/12/salesforce-integration-tutorial-part-9.html"}]}';

    @isTest
    public static void testGetBlogs(){
        Test.startTest();
            Test.setMock(HttpCalloutMock.class, new BlogMock());
            HttpResponse response = BlogCallout.getBlogs();
            
            System.assertEquals(RESPONSE_CODE, response.getStatusCode());
            System.assertEquals(RESPONSE_HEADER_VALUE, response.getHeader(RESPONSE_HEADER_KEY));
            System.assertEquals(RESPONSE_BODY, response.getBody());
        Test.stopTest();
    }
}
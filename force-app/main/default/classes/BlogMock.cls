@isTest
global class BlogMock implements HttpCalloutMock {
    
    global HttpResponse respond(HttpRequest request){
        HttpResponse response = new HttpResponse();
        response.setBody('{"author": "Aldo Mirashi","blogs":[{"id":1,"title": "Salesforce", "url": "https://www.sfdcstop.com/2019/12/salesforce-integration-tutorial-part-9.html"}]}');
        response.setHeader('Content-Type', 'application/json');
        response.setStatusCode(200);
        return response;
    }
}

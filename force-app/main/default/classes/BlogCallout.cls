public with sharing class BlogCallout {
    public static HTTPResponse getBlogs(){
        Http http = new Http();

        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://sfdcstop.herokuapp.com/blogs');
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        if(response.getStatusCode() == 200){
            BlogWrapper blogWrapper = BlogWrapper.parse(response.getBody());
            System.debug('Author: ' + blogWrapper.author);
            if((blogWrapper.blogs != null) &&(!blogWrapper.blogs.isEmpty())){
                for(Integer i=0;i<blogWrapper.blogs.size();i++){
                    BlogWrapper.Blogs blog = blogWrapper.blogs.get(i);
                    System.debug('ID: ' + blog.id);
                    System.debug('Title: ' + blog.title);
                    System.debug('URL: ' + blog.url);
                }
            }
        }
        return response;
    }
}
public with sharing class BlogWrapper {
    
        public class Blogs{
            public String id;
            public String title;
            public String url;
        }

        public String author;
        public List<Blogs> blogs;

        public static BlogWrapper parse(String json){
            return (BlogWrapper) System.JSON.deserialize(json, BlogWrapper.class);
        }
}
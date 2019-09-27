package Util;

public class Book implements Comparable<Object>{
        private String name;
        private String price;
        Book(String name,String price){
            this.name=name;
            this.price=price;
        }
        public String getName() {
            return name;
        }
        public void setName(String name) {
            this.name = name;
        }
        public String getPrice() {
            return price;
        }
        public void setPrice(String price) {
            this.price = price;
        }
        @Override
        public int compareTo(Object o) {
            // TODO Auto-generated method stub
            Book book=(Book) o;
            if(book.price==this.price)
                return 1;
            else
                return 0;
        }
}



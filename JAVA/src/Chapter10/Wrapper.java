package Chapter10;

public class Wrapper {
    public static void main(String[] args) {
        // 래퍼(Wrapper) 클래스
        // int double float char
        // Integer Double Flaot Char

        Integer i = 123;
        Double d  = 1.0;
        Character c = 'a';
        
        System.out.println(i);
        System.out.println(d);
        System.out.println(c);

        System.out.println("==============================");

        System.out.println(i.intValue());
        System.out.println(d.intValue());
        System.out.println(c.charValue());

        System.out.println("==============================");

        String s = i.toString();
        System.out.println(s);
    }
}

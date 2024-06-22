package Chapter10._01_Generics;

import Chapter10._01_Generics.Coffee.*;
import Chapter10._01_Generics.user.User;
import Chapter10._01_Generics.user.VIPUser;

public class Generics02 {

    public static void main(String[] args) {

        CoffeeByNumber c1 = new CoffeeByNumber(33);
        c1.ready();

        CoffeeByNickname c2 = new CoffeeByNickname("홍길동");
        c2.ready();

        System.out.println("==========================================");

        CoffeeByName c3 = new CoffeeByName(34);
        c3.ready();

        CoffeeByName c4 = new CoffeeByName("임꺽정");
        c4.ready();

        System.out.println("==========================================");

        int c3Name = (int) c3.name;
        System.out.println("주문 고객 번호 : " + c3Name);

        String c4Name = (String)c4.name;
        System.out.println("주문 고객 이름 : " + c4Name);

       // c4Name = (String) c3.name;

        System.out.println("==========================================");
        
        

        // 제네릭 이용(타 클래스)
        Coffee_Generic <Integer> c5 = new Coffee_Generic <> (35);
        c5.ready();
        
        Coffee_Generic<String> c6 = new Coffee_Generic<>("장길산");
        c6.ready();

        
        int c5Name = c5.name;
        System.out.println("주문 고객 번호 : " + c5Name);

        
        String c6Name = c6.name;
        System.out.println("주문 고객 이름 : " + c6Name);


        System.out.println("=====================================================");


        // 제네릭 & 상속 이용
        CoffeeByUser_Generic_Extends<User> c7 = new CoffeeByUser_Generic_Extends<>(new User("아무개"));
        c7.ready();

        CoffeeByUser_Generic_Extends<User> c8 = new CoffeeByUser_Generic_Extends<>(new VIPUser("으헤헤"));
        c8.ready();

        System.out.println("=====================================================");

        // 복수의 전달인자& 매개변수 제네릭
        orderCoffee("얼씨구");
        orderCoffee(20);

        orderCoffee("절씨구", "아메리카노");
        orderCoffee(37,"라떼");
    }

    public static <T> void orderCoffee(T name){
        System.out.println("커피 준비 완료 : " + name);
    }
    public static <T, V>void  orderCoffee(T name, V coffee){
        System.out.println(coffee + " 준비 완료 : " + name);
    }
}

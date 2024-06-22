package Chapter04;

public class If01 {
    public static void main(String[] args) {
        int hour = 10;
        if( hour < 14 ) {
            System.out.println("아이스 아메리카노 +1");
            System.out.println("샷추가");
        }
        System.out.println("커피 주문 완료");

        System.out.println("===============================================");

        boolean morningCoffee = false;
        //if(hour < 14 && !morningCoffee)
        if(hour < 14 && morningCoffee == false){
            System.out.println("아메리카노 +1");
        }
        System.out.println("커피 주문 완료");

        System.out.println("===============================================");

        hour=15;
        morningCoffee = false;
        // if(hour >= 14 || morningCoffee == true)
        if(hour >= 14 || morningCoffee){
            System.out.println("아메리카노 +1");
        }
        System.out.println("커피 주문 완료");
    }
}

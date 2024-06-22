package Chapter04;

public class Else01 {
    public static void main(String[] args) {
        int hour = 10;
        if(hour < 14){
            System.out.println("아메리카노 +1");
        }
        else{
            System.out.println("아메리카노 디카페인 +1");
        }
        System.out.println("커피 주문 완료");

        System.out.println("===============================================");

        hour = 15;
        boolean morningCoffee = false;
        if (hour >= 14 || morningCoffee == true){
            System.out.println("아이스 아메리카노 (디카페인) +1 ");
        }else {
            System.out.println("아메리카노 디카페인 +1");
        }
        System.out.println("커피 주문 완료");
    }
}

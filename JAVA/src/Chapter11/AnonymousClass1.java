package Chapter11;

public class AnonymousClass1 {
    public static void main(String[] args) {
        Coffee c1 = new Coffee();
        c1.order("아메리카노");

        System.out.println("===========================");

        Coffee c2 = new Coffee();
        c2.order("라떼");

        System.out.println("===========================");

        Coffee specialCoffee = new Coffee(){
            @Override
            public void order(String coffee) {
                super.order(coffee);
                System.out.println("(귓속말) 딸기 케이크는 서비스입니다.");
            }

            @Override
            public void returnTray() {
                System.out.println("(귓속말) 자리에 두시면 제가 치울게요.");
            }
        };
        specialCoffee.order("바닐라 라떼");
    }
}

class Coffee{
    public void  order(String coffee){
        System.out.println("주문하신 " + coffee + " 나왔습니다.");
    }

    public void returnTray(){
        System.out.println("커피 반납이 완료되었습니다.");
    }
}
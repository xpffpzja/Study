package Chapter11;

public class AnonymousClass2 {
    public static void main(String[] args) {
        homeMadeBurger momMadeBurger = getMomMadeBurger();
        momMadeBurger.cook();
        System.out.println("===================================");

        homeMadeBurger broMadeBurger = getBroMadeBurger();
        broMadeBurger.cook();

    }

    private static homeMadeBurger getBroMadeBurger() {
        return new homeMadeBurger() {
            @Override
            public void cook() {
                System.out.println("집에서 만드는 동생표 군대리아");
                System.out.println("재료 : 빵, 치킨패티, 양배추 샐러드, 딸기잼, 치즈, 삶은 계란");
            }
        };
    }


    public static homeMadeBurger getMomMadeBurger(){
        return new homeMadeBurger() {
            @Override
            public void cook() {
                System.out.println("집에서 만드는 엄마표 수제 버거");
                System.out.println("재료 : 빵, 소고기패티, 해시브라운, 양상추, 마요네즈, 피클");

            }
        };
    }
}

abstract class homeMadeBurger{
    public abstract void cook();
}


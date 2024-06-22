package Chapter04;

public class ElseIf01 {
    public static void main(String[] args) {

        boolean hallaAde = false;
        boolean mangJuice = true;

        if(hallaAde){
            System.out.println("halla + 1");
        } else if (mangJuice) {
            System.out.println("mango +1");
        } else {
            System.out.println("iceAmr +1");
        }
        System.out.println("주문완료");

        System.out.println("==========================================");

        boolean orangeJ = true;
        hallaAde = false;
        mangJuice = false;
        if(hallaAde){
            System.out.println("halla + 1");
        } else if (mangJuice) {
            System.out.println("mango +1");
        } else if (orangeJ) {
            System.out.println("orange +1");
        } else {
            System.out.println("iceAmr +1");
        }
        System.out.println("주문완료");
    }
}

package Chapter10._01_Generics.Coffee;

public class CoffeeByNumber {

    public  int waitingNumber;

    public CoffeeByNumber(int waitingNumber){
        this.waitingNumber = waitingNumber;
    }

    public void ready(){
        System.out.println("커피 준비 완료 : " + waitingNumber);
    }
}

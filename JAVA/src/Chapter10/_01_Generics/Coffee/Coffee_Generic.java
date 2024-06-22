package Chapter10._01_Generics.Coffee;

public class Coffee_Generic <T> { //클래스 이름 다음
    public T name;

    public Coffee_Generic( T name) {
        this.name = name;
    }

    public void ready(){
        System.out.println("커피 준비 완료 : " + name);
    }
}

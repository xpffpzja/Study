package Chapter10._01_Generics.Coffee;

import Chapter10._01_Generics.user.User;

public class CoffeeByUser_Generic_Extends<T extends User>{
    public T user;

    public CoffeeByUser_Generic_Extends(T user) {
        this.user = user;
    }

    public void ready(){
        System.out.println("커피 준비 완료 : " + user.name);
        user.addPoint();
    }
}

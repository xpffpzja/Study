package Chapter10._01_Generics.Coffee;

public class CoffeeByNickname {
    public  String nickname;

    public CoffeeByNickname(String nickname){
        this.nickname = nickname;
     }

     public void ready(){
         System.out.println("커피 준피 완료 : " + nickname);
     }

}

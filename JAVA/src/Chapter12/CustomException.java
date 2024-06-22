package Chapter12;

public class CustomException {
    public static void main(String[] args) {
        // 사용자 정의 예외
        int age = 17;
        try {
            if (age < 19) {
                // System.out.println("미성년자 안됨");
                throw new AgelessThan19Exception("미성년자 안됨");
            } else {
                System.out.println("상품 여기 있음");
            }
        }catch (AgelessThan19Exception e){
            System.out.println("나중에");

        } catch (Exception e){
            System.out.println(" 모든 예외 처리");
        }
    }
}
class AgelessThan19Exception extends Exception{
    public AgelessThan19Exception(String message) {
        super(message);
    }
}
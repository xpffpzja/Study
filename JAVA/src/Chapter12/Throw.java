package Chapter12;

public class Throw {
    public static void main(String[] args) {
        int age = 17;
        try {
            if (age < 19) {
                // System.out.println("미성년자 안됨");
                throw new Exception("미성년자 안됨"); //throw -> catch
            }else {
                System.out.println("상품 여기 있음");
            }

        } catch (Exception e){
            e.printStackTrace();
        }
    }
}

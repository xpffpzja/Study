package Chapter12;

public class Finally {
    public static void main(String[] args) {
        try{
            System.out.println("문을 연다.");
            throw new Exception("폐쇄"); 
            //System.out.println("입장한다."); 
        } catch (Exception e){
            System.out.println("문제 발생 : " + e.getMessage());
        } finally {
            System.out.println("문을 닫는다.");
        }

        // try + catch
        // try + catch + finally
        // try + finally

        System.out.println("=====================");

        try{
            System.out.println( 3 / 0);

        } finally {
            System.out.println("프로그램 정상종료");
        }
    }
}

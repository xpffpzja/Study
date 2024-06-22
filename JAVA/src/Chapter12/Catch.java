package Chapter12;

public class Catch {
    public static void main(String[] args) {
        try {
            //System.out.println( 3 / 0 );

            int[] arr = new int[3];
            arr[5] = 100;

           // Object obj = "test";
           // System.out.println((int) obj);

            String s = null;
            System.out.println(s.toLowerCase());

        } catch (ArithmeticException | ArrayIndexOutOfBoundsException e){
            System.out.println("뭔가 잘못 됨");

        //} catch (ArrayIndexOutOfBoundsException e){
        //    System.out.println("인덱스 잘못 설정");

        } catch(ClassCastException e){
            System.out.println("잘못된 형변형");

        } catch (Exception e){
            System.out.println("문제 발생" );
            e.printStackTrace();
        }

        System.out.println("프로그램 정상 종료");
    }
}

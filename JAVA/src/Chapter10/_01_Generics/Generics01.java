package Chapter10._01_Generics;

public class Generics01 {
    public static void main(String[] args) {

        //int[] iArray = {1,2,3,4,5};
        Integer[] iArray = {1, 2, 3, 4, 5};

        //double[] dArray = {1.0, 2.0, 3.0, 4.0, 5.0};
        Double[] dArray = {1.0, 2.0, 3.0, 4.0, 5.0};


        String[] sArray = {"A", "B", "C", "D", "E"};

        printIntArray(iArray);
        printDoubleArray(dArray);
        printStringArray(sArray);

        System.out.println("====================================");


        printAnyArray(iArray);  // 제네릭스에서 지원하는것은 객체
        printAnyArray(dArray);  // 기본자료형은 바로 사용불가. 레퍼클래스 이용
        printAnyArray(sArray);
    }
    // T : Type 쌍만 이루면 OK. 원하는 걸로 작명 가능.
    private  static <T>  void printAnyArray(T[] array){
        for (T t : array){
            System.out.print( t + "  ");
        }
        System.out.println();
    }

    
    

    private static void printStringArray(String[] sArray) {
        for (String i : sArray) {
            System.out.print(i + " ");

        }
        System.out.println();
    }

    private static void printDoubleArray(Double[] dArray) {
        for (Double i : dArray) {
            System.out.print(i + " ");

        }
        System.out.println();
    }

    private static void printIntArray(Integer[] iArray) {
        for (int i : iArray) {
            System.out.print(i + " "); //1 2 3 4 5

        }
        System.out.println();
    }
}

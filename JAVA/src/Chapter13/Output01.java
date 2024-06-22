package Chapter13;

public class Output01 {
    public static void main(String[] args) {
        //System.out.format();
        //System.out.printf();

        System.out.println("===== 정수 =====");
        System.out.printf("%d%n", 1);
        System.out.printf("%d %d %d%n", 1, 2, 3);
        System.out.printf("%d%n", 1234);
        System.out.printf("%6d%n", 1234);
        System.out.printf("%06d%n", 1234);
        System.out.printf("%6d%n", -1234);
        System.out.printf("%+6d%n", 1234);
        System.out.printf("%,15d%n", 1000000000);
        System.out.printf("%-6d%n", 1234);

        System.out.println("===== 실수 =====");
        System.out.printf("%f%n", Math.PI );
        System.out.printf("%.2f%n", Math.PI );
        System.out.printf("%6.2f%n", Math.PI);
        System.out.printf("%-6.2f%n", Math.PI);
        System.out.printf("%06.2f%n", Math.PI);
        System.out.printf("%+6.2f%n", Math.PI);

        System.out.println("===== 문자열 =====");
        System.out.printf("%s%n", "JAVA"  );
        System.out.printf("%6s%n", "JAVA"  );
        System.out.printf("%-6s%n", "JAVA"  );
        System.out.printf("%6.2s%n", "JAVA"  );
        System.out.printf("%-6.2s%n", "JAVA"  );

        System.out.println("===== 응용 =====");
        System.out.println("이름, 영어, 수학 평균점수");
        System.out.println("홍길동 " + 90 + " " + 80 + " " + 85.0 );
        System.out.println("임꺽정 " + 100 + " " + 100 + " " + 100.0 );
        System.out.println("장길산 " + 95 + " " + 100 + " " + 97.5 );

        System.out.println("===== 응용2 =====");
        System.out.println("이름      영어   수학   평균점수");
        System.out.printf("%-6s %4d %4d %6.1f%n", "홍길동", 90, 80, 85.0);
        System.out.printf("%-6s %4d %4d %6.1f%n", "임꺽정", 100, 100, 100.0);
        System.out.printf("%-6s %4d %4d %6.1f%n", "장길산", 95, 100, 97.5);

        System.out.println("=====참고======");
        System.out.println("abcdefg");
        System.out.println("가나다라마바사");
        System.out.println("가 나 다 라");
    }
}

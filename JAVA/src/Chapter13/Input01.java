package Chapter13;

import java.util.Scanner;

public class Input01 {
    public static void main(String[] args) {
            Scanner sc = new Scanner(System.in);
//
//        System.out.println("이름 입력");
//        String name = sc.next();
//        System.out.println("혈액형 입력");
//        String BT = sc.next();
//        System.out.println("키 입력");
//        int h = sc.nextInt();
//        //int h = Integer.parseInt(sc.next());
//        System.out.println("몸무게 입력");
//        double w = sc.nextDouble();
//        //doublie w = Double.parseDouble(sc.next());
//
//        System.out.println("입력하신 정보는 다음과 같습니다.");
//        System.out.println("이름 : " + name);
//        System.out.println("혈액형 : " + BT);
//        System.out.println("키 : " + h);
//        System.out.println("몸무게 : " + w);

        System.out.println("무슨 프로그래밍 언어를 배웠나요?");
        //String lang = sc.next(); // 한 단어
        String lang = sc.nextLine(); // 문장(띄어쓰기)
        System.out.println("언어 : " + lang);

        sc.nextLine(); // 한 단어일때 띄어쓰기한 부분부터 삭제

        System.out.println("배우고 나니 기분이 어떘나요?");
        //String feeling = sc.next();
        String feeling = sc.nextLine();
        System.out.println("기분 : " + feeling);
    }
}

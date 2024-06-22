package Chapter04;

import java.util.Scanner;

public class SwitchCase01 {
    public static void main(String[] args) {

        //1등 : 전액 장학금
        //2등 : 반액 장학금
        //3등 : 반액 장학금
        //그외 : 장학금 대상 아님

        int ranking = 4;
        if(ranking == 1){
            System.out.println("전액 장학금");
        } else if (ranking ==2){
            System.out.println("반액 장학금");
        } else if (ranking == 3){
            System.out.println("반의 반액 장학금");
        } else {
            System.out.println("장학금 대상 아님");
        }
        System.out.println("조회 완료");

        System.out.println("==================================");

        Scanner sc = new Scanner(System.in);
        System.out.print("랭킹을 입력하세요(숫자) : ");
        ranking = sc.nextInt();

        switch ( ranking ){
            case 1:
                System.out.println("전액 장학금");
                break;
            case 2 : System.out.println("반액 장학금");
                break;
            case 3 :System.out.println("반의 반액 장학금");
                break;
            default : System.out.println("장학금 대상 아님");
        }

        // 등깁에 따른 가격책정 1급:최상, 4급:최하
        int grade = 3 ;
        int price =7000;
        switch (grade){
            case 1 : price += 1000;

            case 2 : price += 1000;

            case 3 : price += 1000;
            break;
        }
        System.out.println(grade + " 등급의 제품의 가격 : " + price + "원");
    }
    // if else는 여러 조건 또는 범위에 해당할때.
    // switch case는 명확한 값(케이스)이 있을경우.
}

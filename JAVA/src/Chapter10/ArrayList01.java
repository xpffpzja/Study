package Chapter10;

import java.util.ArrayList;
import java.util.Collections;

public class ArrayList01 {
    public static void main(String[] args) {
        // 컬렉션 프레임워크
        // {List, Set, Map}

        ArrayList<String> list = new ArrayList<>();

        //데이터 추가
        list.add("홍길동");
        list.add("임꺽정");
        list.add("장길산");
        list.add("홍련화");
        list.add("선화");

        //데이터 조회(인덱스)
        System.out.println(list.get(0));
        System.out.println(list.get(1));
        System.out.println(list.get(2));
        System.out.println(list.get(3));
        System.out.println(list.get(4));

        System.out.println("======================================");

        // 삭제 (선화)
        System.out.println(" 총 인원 (삭제 전) : " + list.size());

        list.remove("선화");
        System.out.println(" 총 인원 (삭제 후) : " + list.size());
        System.out.println(list.get(3));

        System.out.println("======================================");

        System.out.println("남은 인원 (삭제 전) : " + list.size());
        list.remove(list.size() - 1);
        System.out.println("남은 인원 (삭제 전) : " + list.size());

        System.out.println("======================================");

        // 순회
        for (String s : list){
            System.out.println(s);
        }

        System.out.println("======================================");

        //변경 (홍길동)
        System.out.println("변경 전 : " + list.get(0));

        list.add(0, "아무개");
        System.out.println("변경 후 : " + list.get(0));
     
        System.out.println("======================================");

        //확인 (장길산)
        System.out.println(list.indexOf("장길산"));

        // 리스트 포함 여부
        if(list.contains("장길산")){
            System.out.println("포함 됨");
        } else {
            System.out.println("포함 안됨");
        }

        System.out.println("======================================");

        //전체 삭제
        list.clear();
        if(list.isEmpty()){
            System.out.println(list.size());
            System.out.println("list가 비었습니다.");
        }

        System.out.println("======================================");


        // 새로운 리스트
        list.add("홍길동");
        list.add("임꺽정");
        list.add("장길산");
        list.add("홍련화");
        list.add("선화");

        //정렬
        Collections.sort(list);
        for(String s : list){
            System.out.println(s);
        }
    }
}

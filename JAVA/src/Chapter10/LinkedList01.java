package Chapter10;

import java.util.Collections;
import java.util.LinkedList;

public class LinkedList01 {
    public static void main(String[] args) {
    	
        LinkedList<String> list = new LinkedList<>();
        
        list.add("홍길동");
        list.add("임꺽정");
        list.add("장길산");
        list.add("홍련화");
        list.add("선화");

        // 데이터 조회(인덱스)
        System.out.println(list.get(0));
        System.out.println(list.get(1));
        System.out.println(list.getFirst());
        System.out.println(list.getLast());

        System.out.println("===============================");

        // 추가
        list.addFirst("낙랑");
        for(String s : list){
            System.out.println(s);
        }

        System.out.println("===============================");

        list.addLast("호동");
        for(String s : list){
            System.out.println(s);
        }

        System.out.println("===============================");

        System.out.println("추가 전 :" + list.get(1));

        list.add(1,"평강");
        System.out.println("추가 후 :" + list.get(1));
        System.out.println("추가 후 :" + list.get(2));

        System.out.println("===============================");

        // 삭제
        System.out.println("삭제 전  : " + list.size());
        list.remove(list.size() -1);
        System.out.println("삭제 후  : " + list.size());

        System.out.println("===============================");
        for(String s : list){
            System.out.println(s);
        }

        //처음과 마지막 삭제
        System.out.println("삭제 전  : " + list.size());
        list.removeFirst();
        list.removeLast();
        System.out.println("삭제 후  : " + list.size());
        for(String s : list){
            System.out.println(s);
        }

        System.out.println("===============================");

        //변경
        list.set(0, "온달");
        System.out.println(list.get(0));

        //확인
        System.out.println(list.indexOf("임꺽정"));
        if (list.contains("임꺽정")){
            System.out.println("있음");
        }else{
            System.out.println("없음");
        }

        System.out.println("===============================");

        //전체 삭제
        list.clear();
        if(list.isEmpty()){
            System.out.println("남은 수 : " + list.size());
            System.out.println("남아있지 않습니다.");
        }

        System.out.println("===============================");

        // 새로운 리스트
        list.add("홍길동");
        list.add("임꺽정");
        list.add("장길산");
        list.add("홍련화");
        list.add("선화");

        Collections.sort(list); //정렬
        for(String s : list){
            System.out.println(s);
        }

    }
}

package Chapter10;

import java.util.HashMap;

public class HashMap01 {
    public static void main(String[] args) {
        // Key, Value
        HashMap<String, Integer> map = new HashMap<>();

        //데이터 추가
        map.put("유재석", 10);
        map.put("박명수", 5);
        map.put("김종국", 5);
        map.put("서장훈", 15);

        System.out.println("총 고객 수 : " + map.size());

        System.out.println("===========================");

        //조회
        System.out.println("유재석님의 포인트 : " + map.get("유재석"));
        System.out.println("박명수님의 포인트 : " + map.get("박명수"));

        System.out.println("===========================");

        //확인
        if(map.containsKey("서장훈")){
            int point = map.get("서장훈");
            map.put("서장훈", ++ point);
            System.out.println("서장훈님의 누적 포인트 : " +  map.get("서장훈"));
        }else{
            map.put("서장훈", 1);
            System.out.println("서장훈님 신규 등록 (포인트 1)");
        }
        System.out.println("===========================");

        //삭제
        map.remove("유재석");
        System.out.println(map.get("유재석"));

        System.out.println("===========================");

        //전체삭제
        map.clear();
        if(map.isEmpty()){
            System.out.println("남은 고객 수 : " + map.size());
            System.out.println("가게 접자");
        }
        System.out.println("===========================");

        //
        map.put("유재석", 10);
        map.put("박명수", 5);
        map.put("김종국", 5);
        map.put("서장훈", 15);

        //key 값 확인
        for(String key : map.keySet()){
            System.out.println(key);
        }
        System.out.println("===========================");

        //Value 값 확인
        for (int value : map.values()){
            System.out.println(value);
        }
        System.out.println("===========================");

        // Key & Value 함께 확인
        for(String key : map.keySet()){
            System.out.println("고객 이름 : " + key + "   포인트 : " + map.get(key));
        }
        System.out.println("===========================");

        // 맵 : 중복 X, 순서 X
        map.put("김종국" , 10);
        map.put("김종국" , 30);
        map.put("김종국" , 50);
        for(String key : map.keySet()) {
            System.out.println("고객 이름 : " + key + "   포인트 : " + map.get(key));
        }
        System.out.println("===========================");

    } // 순서 보장 하고 싶으면 Linked << 붙이면됨.

}

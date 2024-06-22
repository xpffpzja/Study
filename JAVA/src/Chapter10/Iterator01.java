package Chapter10;


import java.util.*;

public class Iterator01 {
    public static void main(String[] args) {

        List<String> list = new ArrayList<>();
        list.add("유재석");
        list.add("알수없음");
        list.add("김종국");
        list.add("알수없음");
        list.add("강호동");
        list.add("알수없음");
        list.add("박명수");
        list.add("알수없음");
        list.add("조세호");

        for(String s : list){
            System.out.println(s);
        }
        System.out.println("=====================");
        
        //리스트에 있는 데이터 확인. 

        Iterator<String> it = list.iterator();
        System.out.println(it.next());
        System.out.println(it.next());
        System.out.println(it.next());
        System.out.println(it.next());

        System.out.println("=====================");

        it = list.iterator(); // 처음 위치로 이동
        while(it.hasNext()){
            System.out.println(it.next());
        }
        System.out.println("=====================");

        it = list.iterator();
        while(it.hasNext()){
            String s = it.next();
            if(s.contains("알수없음")){
                it.remove();
            }
        }
        it = list.iterator(); // 처음 위치로 이동
        while(it.hasNext()){
            System.out.println(it.next());
        }
        System.out.println("=====================");

        HashSet<String> set = new HashSet<>();
        set.add("유재석");
        set.add("박명수");
        Iterator<String> itSet = set.iterator();
        while(itSet.hasNext()){
            System.out.println(itSet.next());
        }
        System.out.println("=====================");

        HashMap<String, Integer> map = new HashMap<>();
        map.put("유재석", 10);
        map.put("박명수",  5);

        // map.iterator() 사용불가
        Iterator<String> itMapKey = map.keySet().iterator();
        while(itMapKey.hasNext()){
            System.out.println(itMapKey.next());
        }
        System.out.println("=====================");

        Iterator<Integer> itMapValue = map.values().iterator();
        while(itMapValue.hasNext()){
            System.out.println(itMapValue.next());
        }
        System.out.println("=====================");

        Iterator<Map.Entry<String, Integer>> itMap = map.entrySet().iterator();
        while(itMap.hasNext()){
            System.out.println(itMap.next());
        }
    }
}

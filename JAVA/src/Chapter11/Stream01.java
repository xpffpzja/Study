package Chapter11;


import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.IntStream;
import java.util.stream.Stream;

import static java.util.Arrays.stream;

public class Stream01 {
    public static void main(String[] args) {
        int[] scores = {90, 100, 95, 85, 80};
        IntStream scoreStream = stream(scores);

        // Arrays.stream
        String[] langs = {"python","java", "javascript", "c", "c++", "c#"};
        Stream<String> langStream = stream(langs);

        // Collection.stream()
        List<String> langList = new ArrayList<>();
        langList = Arrays.asList("python","java", "javascript", "c", "c++", "c#");
        System.out.println(langList.size());
        Stream<String> stream1 = langList.stream();

        // Stream.of
        Stream<String> langListOfStream = Stream.of("python", "java", "javascript", "c", "c++", "c#");

        System.out.println("=======================================================");

        //Stream 사용
        //중간 연산 (Intermediate Operation) : filter, map, sorted, distinct, skip...
        //최종 연산 (Terminal Operation) : count, min, max, sum, forEach, anyMatch, allMatch...

        // 90 점 이상인 점수만 출력
        stream(scores).filter(x -> x >=90).forEach(x -> System.out.println(x));
        // = Arrays.stream(scores).filter(x -> x >=90).forEach(System.out::println);

        System.out.println("=======================================================");

        // 90점 이상인 사람의 수
        int count = (int ) stream(scores).filter(x -> x >= 90).count();
        System.out.println(count);

        System.out.println("=======================================================");

        // 90점 이상인 점수들의 합
        int sum = stream(scores).filter(x->x >= 90).sum();
        System.out.println(sum);

        System.out.println("=======================================================");

        // 90점 이상인 점수들 정렬
        stream(scores).filter(x -> x >= 90).sorted().forEach(System.out::println);

        System.out.println("=======================================================");

        // "python","java", "javascript", "c", "c++", "c#"
        // c 로 시작하는 프로그래밍 언더
        stream(langs).filter(x -> x.startsWith("c")).forEach(System.out::println);

        System.out.println("=======================================================");

        //java 라는 글자를 포함하는 언어
        stream(langs).filter(x -> x.contains("java")).forEach(System.out::println);

        System.out.println("=======================================================");

        // 글자 갯수가 4글자 이하인 언어를 정렬해서 출력
        langList.stream().filter(x -> x.length() <= 4).sorted().forEach(System.out::println);

        System.out.println("=======================================================");

        //4글자 이하인 언어중에서 c 라는 글자를 포함하는 언어
        langList.stream().filter(x -> x.length() <= 4).filter(x-> x.contains("c")).
                forEach(System.out::println);

        System.out.println("=======================================================");

        //4글자 이하의 언어중에서 c라는 글자를 포함하는 언어가 하나라도 있는지 여부
        boolean anyMach = langList.stream().filter(x->x.length() <= 4).anyMatch(x->x.contains("c"));
        System.out.println(anyMach);

        System.out.println("=======================================================");

        //3글자 이하의 언어들은 모두 c라는 글자를 포함하는지 여부
         boolean allMach = langList.stream().filter(x->x.length() <= 3).allMatch(x->x.contains("c"));
        System.out.println(allMach);

        System.out.println("=======================================================");

        // 4글자 이하의 언어 중에서 c 라는 글자를 포함하는 언어 뒤에 "어려워요"라는 글자를 함께 출력
        // map
        langList.stream().filter(x->x.length() <= 4).filter(x->x.contains("c")).map(x->x + " (어려워요)").
                forEach(System.out::println);

        System.out.println("=======================================================");

        // c 라는 글자를 포함하는 언어를 대문자로 출력
        langList.stream().filter(x->x.contains("c")).map(String::toUpperCase).forEach(System.out::println);

        System.out.println("=======================================================");

        //c 라는 글자를 포함하는 언어를 대문자로 변경하여 리스트로 저장
        List<String> langlistStartsWithC =
                langList.stream().filter(x->x.contains("c")).
                        map(String::toUpperCase).collect(Collectors.toList());

        langlistStartsWithC.stream().forEach(System.out::println);
    }
}

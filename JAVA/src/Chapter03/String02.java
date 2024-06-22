package Chapter03;

public class String02 {

	public static void main(String[] args) {
		String s ="I like Java and Python and C.";
		
		System.out.println(s.replace("and" ,  ",")); // and를 ,로 변환.
		System.out.println(s.substring(7)); // 인덱스 기준 7번째 부터 시작 (이전내용은 삭제)
		System.out.println(s.substring(s.indexOf("Java"))); // Java가 시작하는 위치부터
		System.out.println(s.substring(s.indexOf("Java"), s.indexOf("."))); // 시작위치부터 끝 위치 직전까지 출력됨.
		
		
		
		
		// 공백 제거
		s ="                          I love Java.               ";
		System.out.println(s);
		System.out.println(s.trim()); // 앞뒤 공백 제거
		
		// 문자열 결합
		String s1 = "Java";
		String s2 = "Python";
		System.out.println(s1 + s2);
		System.out.println(s1 + "," + s2);
		System.out.println(s1.concat(",").concat(s2));
	}

}

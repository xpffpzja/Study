package Chapter03;

public class StringCampare01 {

	public static void main(String[] args) {
		String s1 = "Java";
		String s2 = "Python";
		
		System.out.println(s1.equals("Java")); // 문자열 내용이 같으면  true, 다르면 false
		System.out.println(s2.equalsIgnoreCase("python"));  // 대소문자 구분 없이 문자열 내용이 같은지 여부 체크.
		
		// 문자열 비교 심화
		s1 ="1234"; // 
		s2 ="1234"; // 
		System.out.println(s1.equals(s2)); //내용이 같은지
		System.out.println(s1 == s2); //참조한 것이 같는지.
		  
		
		s1=new String("1234");
		s2=new String("1234");
		System.out.println(s1.equals(s2)); // true
		System.out.println(s1 == s2); // false 

	}

}

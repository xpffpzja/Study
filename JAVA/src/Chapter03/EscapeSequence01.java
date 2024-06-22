package Chapter03;

public class EscapeSequence01 {

	public static void main(String[] args) {
		
		System.out.println("Java가");
		System.out.println("너무");
		System.out.println("재밌어요.");
		
		
		// \n : 줄바꿈
		System.out.println("자바가\n너무\n재밌어요.");
		System.out.println();
		
		// \t : 탭기능
		System.out.println("해문파전\t\t9천원");
		System.out.println("김치전\t\t8천원");
		System.out.println("부추전\t\t8천원");
		
		// \\: \ 출력 
		System.out.println("C:\\Program\\Java");
		
		// \": " 출력
		System.out.println("단비가 \"냐옹\"이라고 했어요");
		
		// \' : ' 출력 (문자열내에서는 상관없지만 문자에서...)
		System.out.println("단비가 \'냐옹\'이라고 했어요");
		
		char c= 'A';
		c= '\'';
		
	}

}

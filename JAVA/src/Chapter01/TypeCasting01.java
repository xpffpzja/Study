package Chapter01;

public class TypeCasting01 {

	public static void main(String[] args) {
		
		// int to float, double
		int score = 93;
		System.out.println(score);
		System.out.println((float)score);
		System.out.println((double)score);
		
		System.out.println("======================================");
		
		// float, double to int
		float score1 = 93.3f;
		double score2 = 98.8;
		System.out.println((int)score1);
		System.out.println((int)score2);
		
		// 정수+실수 연산
		score = 93 + (int)98.8; // 93 + 98
		System.out.println(score);
		
		score2 = 93+98.8; // 93.0 + 98.8
		System.out.println(score2);
		
		//변수에 형변환된 데이터 집어넣기
		double convertedScoreDouble= score; // 191 -> 191.0
		
		int convertedScoreInt = (int)score2;
		System.out.println(score2);
		
		System.out.println("=====================================");
		
		//String s1 = 93;
		String s1 = String.valueOf(93);
		s1 = Integer.toString(93);
		System.out.println(s1);
		
		String s2 = String.valueOf(98.8);
		s2 = Double.toString(98.8);
		System.out.println(s2);
		
		//문자열을 숫자로
		int i = Integer.parseInt("93");// "93";
		System.out.println(i);
		
		double d = Double.parseDouble("98.8"); //"98.8";
		System.out.println(d);
		
		int error = Integer.parseInt("자바");
		System.out.println(error);
	}
}

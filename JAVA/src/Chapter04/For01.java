package Chapter04;

public class For01 {

	public static void main(String[] args) {
		// System.out.println();
		for(int i = 0; i< 10; i++){
			 //System.out.println("어서오세요. 나코입니다. " + i);
			 System.out.println("환영합니다. 코나입니다." + i);
		}
		
		 
		for(int i = 0; i < 10 ; i+=2) {
			 System.out.print(i);
		}
		 
		System.out.println();
		 
		for(int i =1; i < 10; i+=2) {
			 System.out.print(i);
		}
		 
		System.out.println();
		
		for(int i = 5 ; 0 < i ; i--  ){
			 System.out.print(i);
		}
		 
		System.out.println();
	
		int sum = 0;
		for( int i =1 ; i <= 10 ; i++ ){
			sum += i;
			 System.out.println("현재까지의 합 : " + sum);
		}
		 System.out.println("1부터 10까지의 합 : " + sum);
	}
	

}

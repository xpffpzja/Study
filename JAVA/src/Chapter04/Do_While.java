package Chapter04;

public class Do_While {

	public static void main(String[] args) {
		
		int distance = 25;
		int move = 0;
		int height = 2;
		while( move +height < distance ){
			System.out.println("발차기를 합니다.");
			System.out.println("현재 이동 거리 : " + move);
			move+=3;
			
		}
		System.out.println("도착");
		
		System.out.println("=================================");
		
		move = 0;
		height = 25;
		while( move +height < distance ){
			System.out.println("발차기를 합니다.");
			System.out.println("현재 이동 거리 : " + move);
			move+=3;
			
		}
		System.out.println("도착");
		
		System.out.println("=================================");
		
		do {
			System.out.println("발차기를 합니다.");
			System.out.println("현재 이동거리 : " + move);
			move+=3;
			
		} while(move + height < distance); 
			System.out.println("도착");
			
		

		

	}

}

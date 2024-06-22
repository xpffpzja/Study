package Chapter04;

public class While01 {
	public static void main(String[] args) {
		
		int distance = 25; //전체거리 25
		int move =0; //현재 이동거리
		while (move < distance) {
			 System.out.println("발차기 합니다.");
			 System.out.println(" 현재 이동 거리 : " + move);
			 move += 3;
		}
		 System.out.println("도착");
		 
		 move = 0;
		 while (move < distance) {
			 System.out.println("발차기 합니다.");
			 System.out.println(" 현재 이동 거리 : " + move);
		}
		 System.out.println("도착");
		
		
		
		
	}

}

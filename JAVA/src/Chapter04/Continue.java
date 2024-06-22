package Chapter04;

public class Continue {

	public static void main(String[] args) {
		
		int max = 20 ;
		int sold = 0;
		
		int noshow = 17; 
		
		for(int i = 1; i <= 50; i++) {
			System.out.println(i + "번 손님, 주문하신 치킨 나왔습니다.");
			
			if(i == noshow) {
				System.out.println(i + "번 손님 없음");
				continue;
			}
			sold++;
			
			if(sold == max) {
				System.out.println("재료 소진");
				break;
			}
		}
		System.out.println("영업종료");
	}

}

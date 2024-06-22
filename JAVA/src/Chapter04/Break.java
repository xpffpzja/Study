package Chapter04;

public class Break {

	public static void main(String[] args) {
		
		int max = 20;
		for(int i =1; i <=50 ; i++) {
			System.out.println(i + "번 손님, 주문하신 치킨 나왔습니다.");
			if( i == max) {
				System.out.println("재료 소진");
				break; //반복문 탈출
			}
		}
		System.out.println("영업종료");
		
		System.out.println("-------------------------------------");
		
		int index = 1;
		while(index <= 50){
			System.out.println(index + "번 손님, 주문하신 치킨 나왔습니다.");
			if(index == max) {
				System.out.println("재료 소진");
			}
			index++;
		}
		System.out.println("영업 종료");
	}

}

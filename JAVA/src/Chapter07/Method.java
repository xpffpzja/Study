package Chapter07;

public class Method {

	public static void main(String[] args) {
		BlackBox b1 = new BlackBox();
		b1.modelName ="까망이";
		
		b1.autoReport();
		BlackBox.canAutoReport = true;
		b1.autoReport();
		
		
		b1.insertMemoryCard(256);
		
		
		//일반 영상 : 1
		// 이벤트 영상(충돌감지) : 2
		int fileCount = b1.getVideoFileCount(1);
		System.out.println("일반 영상 : " + fileCount + "개");
		
		fileCount = b1.getVideoFileCount(2);
		System.out.println("이벤트 영상 : " + fileCount + "개");
		
		
		
	}

}

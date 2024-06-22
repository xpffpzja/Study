package Chapter07;

public class ClassMethod {

	public static void main(String[] args) {
		BlackBox b1 = new BlackBox();
		b1.callServiceCenter();
		
		
		BlackBox b2 = new BlackBox();
		b2.callServiceCenter();
		
		
		BlackBox.callServiceCenter();
		
	}

}

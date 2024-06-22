package Chapter08.Camera;

public class FactoryCam extends Chapter08.Camera.Camera { // 자식 클래스

    public FactoryCam() { //자식 클래스
      //this.name = "공장카메라";
        super("공장 카메라");
    }

    @Override
    public void recordVideo() {
        super.recordVideo();
        detectFire();
    }

    public void detectFire(){
        // 화재 감지
        System.out.println("화재를 갑지합니다.");
    }

    public void showMainFeature(){
        System.out.println(this.name + "의 주요기능 : 화재감지 ");
    }
}

package Chapter09.Camera;

public class SpeedCam extends Camera {
    @Override
    public void showMainFeature() {
        System.out.println("속도측정, 번호인식");
    }
    public void detect(){
        System.out.println("사고를 감지합니다.");
    }
    public void report(){
        System.out.println("사건 사고 신고를 진행합니다.");
    }
}

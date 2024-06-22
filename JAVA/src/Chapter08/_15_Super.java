package Chapter08;

import Chapter08.Camera.FactoryCam;
import Chapter08.Camera.SpeedCam;

public class _15_Super {
    public static void main(String[] args) {

        FactoryCam factoryCam = new FactoryCam();
        SpeedCam speedCam = new SpeedCam();

        factoryCam.recordVideo();
        factoryCam.showMainFeature();
        System.out.println("===============");
        speedCam.takePicture();
        
        // super - 부모 생성자,메서드에 접근 하는 키워드.

    }
}

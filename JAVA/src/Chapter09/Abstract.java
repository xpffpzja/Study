package Chapter09;

import Chapter09.Camera.FactoryCam;
import Chapter09.Camera.SpeedCam;

public class Abstract {
    public static void main(String[] args) {
        // 데이터 추상화 (Data Abstraction) 필요한 정보만 공개하는 거.
        // abstract
        // 추상 클래스(아직 완성되지 않은 클래스. 객체생성 불가. 단, 자식클래스가 있을경우 자식클래스에서 객체생성 가능)
        // 추상 메소드 (추상 클래스에서만 사용 가능한, 껍데기만 있는 메소드)

        // Camera camera = new Camera(); -> 불가

        FactoryCam factoryCam = new FactoryCam();
        //Camera factoryCam = new FactoryCam(); -> 가능 & 결과 동일
        factoryCam.showMainFeature();

        SpeedCam speedCam = new SpeedCam();
        //Camera speedCam = new SpeedCam(); -> 가능 & 결과 동일
        speedCam.showMainFeature();


    }
}

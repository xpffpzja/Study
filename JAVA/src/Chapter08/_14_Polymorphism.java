package Chapter08;

import Chapter08.Camera.Camera;
import Chapter08.Camera.FactoryCam;
import Chapter08.Camera.SpeedCam;

public class _14_Polymorphism {
    public static void main(String[] args) {

        Camera camera = new Camera();
        Camera factoryCam = new FactoryCam();
        Camera speedCam = new SpeedCam();

        camera.showMainFeature();
        factoryCam.showMainFeature();
        speedCam.showMainFeature();
        // 부모에 있는 메소드들만 사용가능.
        
        System.out.println("======================================");

        Camera[] cameras = new Camera[3];
        cameras[0] = new Camera();
        cameras[1] = new FactoryCam();
        cameras[2] = new SpeedCam();

        for(Camera cam : cameras) {
            cam.showMainFeature();
        }
        // 부모에 있는 메소드들만 사용가능.
        
        System.out.println("=====================================");
        
        // 형변환을 통해 자식클래스 고유 메소드 호출가능.

        if(camera instanceof Camera){
            System.out.println("카메라 입니다.");
        }
        if(factoryCam instanceof  FactoryCam){
            ((FactoryCam)factoryCam).detectFire();
        }
        if(speedCam instanceof  SpeedCam){
            ((SpeedCam)speedCam).checkSpeed();
            ((SpeedCam)speedCam).recognizeLicensePlate();
        }

        System.out.println("======================================");

        Object[] objs = new Object[3];
        objs[0] = new Camera();
        objs[1] = new FactoryCam();
        objs[2] = new SpeedCam();

        System.out.println(objs);

    }
}

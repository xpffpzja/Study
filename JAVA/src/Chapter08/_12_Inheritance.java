package Chapter08;

import Chapter08.Camera.Camera;

import Chapter08.Camera.FactoryCam;
import Chapter08.Camera.SpeedCam;

public class _12_Inheritance {
    public static void main(String[] args) {

        Camera camera = new Camera();
        FactoryCam factoryCam = new FactoryCam();
        SpeedCam speedCam = new SpeedCam();

        camera.showMainFeature();
        factoryCam.showMainFeature();
        speedCam.showMainFeature();
    }
}

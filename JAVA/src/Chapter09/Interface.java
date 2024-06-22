package Chapter09;

import Chapter09.Camera.FactoryCam;

import Chapter09.Detector.AdvancedFireDetector;
import Chapter09.Detector.Detectable;
import Chapter09.Detector.FireDetector;
import Chapter09.Repoter.NormalReporter;
import Chapter09.Repoter.VideoReporter;

public class Interface {
    public static void main(String[] args) {
        // 인터페이스(뼈대만 제공하는 클래스)
        // 상속의 경우 단일만 가능, 인터페이스는 여러곳에 나뉘어져 있 기능들을 가져올수 있음.
        // 인터페이스에서 "public ???" 없이 바로 변수선언, 메소드 정의 가능

        NormalReporter normalReporter = new NormalReporter();
        // Reportable normalREporter -> 인터페이스 클래스로 가능. import 해야함
        normalReporter.report();

        VideoReporter videoReporter = new VideoReporter();
        // Reportable viedeoREporter -> 인터페이스 클래스로 가능. import 해야함
        videoReporter.report();

        System.out.println("=====================================================");

        Detectable fireDetector = new FireDetector();
        fireDetector.detect();

        Detectable advancedFireDetector = new AdvancedFireDetector();
        advancedFireDetector.detect();

        System.out.println("=====================================================");

        FactoryCam factoryCam = new FactoryCam();
        factoryCam.setDetector(advancedFireDetector); // 두번째에서 이미 선언
        factoryCam.setReporter(videoReporter); // 첫번째에서 이미 선언

        factoryCam.detect();
        factoryCam.report();

    }
}

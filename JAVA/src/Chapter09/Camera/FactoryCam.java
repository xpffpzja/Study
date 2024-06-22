package Chapter09.Camera;

import Chapter09.Detector.Detectable;

import Chapter09.Repoter.Repotable;

public class FactoryCam extends Camera implements Detectable, Repotable {
    private Detectable detector;
    private Repotable reporter;


    public Detectable getDetector() {
        return detector;
    }

    public void setDetector(Detectable detector) {
        this.detector = detector;
    }

    public Repotable getReporter() {
        return reporter;
    }

    public void setReporter(Repotable reporter) {
        this.reporter = reporter;
    }

    @Override
    public void showMainFeature() {
        System.out.println("화재 감지");

    }

    @Override
    public void detect() {
    	 System.out.println("화재를 감지합니다.");
        detector.detect();

    }

    @Override
    public void report() {
    	System.out.println("화재를 신고합니다.");
        reporter.report();

    }
}

package Chapter09.Repoter;

public class NormalReporter implements Repotable {
    @Override
    public void report() {
        System.out.println("일반 화재 신고를 진행합니다.");
    }
}

package Chapter09.Repoter;

public class VideoReporter implements Repotable{
    @Override
    public void report() {
        System.out.println("직전 30초 영상과 함께 신고를 진행합니다.");
    }
}

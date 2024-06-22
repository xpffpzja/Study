package Chapter08;

import Chapter08.Camera.ActionCam;
import Chapter08.Camera.SlowActionCam;

public class _17_Final {

	public static void main(String[] args) {
		
		ActionCam actioncam = new ActionCam();
		//actioncam.lens = "표준렌즈";
		actioncam.recordVideo();
		actioncam.makeVideo();
		
		SlowActionCam slowactioncam = new SlowActionCam();
		//slowactioncam.recordVideo();
		slowactioncam.makeVideo();
		
	}

}

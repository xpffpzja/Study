package Chapter13;

import java.io.File;

public class Folder01 {
    public static void main(String[] args) {
        String folderName = "A";
        File folder= new File(folderName);
        folder.mkdir();
        if(folder.exists()){
            System.out.println("폴더가 존재합니다. : " + folder.getAbsolutePath());
        }

        System.out.println("===========================================");

        folderName = "A/B/C";
        folder = new File(folderName);
        folder.mkdirs(); // 여러 하위 폴더 만들시 s 붙임
        if(folder.exists()){
            System.out.println("폴더가 존재합니다. : " + folder.getAbsolutePath());
        } else{
            System.out.println("폴더 생성 실패");
        }

    }
}

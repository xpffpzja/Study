package Chapter13;

import java.io.File;

public class FileAndFolder01 {
    public static void main(String[] args) {
        // String folder = "E:\\JAVA\\복습\\Teresa\\src\\Chapter13";
        String folder = "src/Chapter13";
        File FAF = new File(folder);
        System.out.println("현재 폴더 경로 : " + FAF.getAbsolutePath());
        for(File file : FAF.listFiles()){
            if (file.isFile()){
                System.out.println("(파일) " + file.getName());
            } else if (file.isDirectory()){
                System.out.println("(폴더)" + file.getName());
            }
        }
    }
}

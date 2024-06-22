package Chapter13;

import java.io.File;

import java.io.IOException;

public class File01 {
    public static void main(String[] args) {



        String fileName = "abc.txt";
        File file = new File(fileName);
        try {
            file.createNewFile(); // 파일생성
            if (file.exists()){
                System.out.println("파일이름 : " + file.getName());
                System.out.println("파일 절대 경로 : " + file.getAbsoluteFile());
                System.out.println("파일 크기 (Byte) : " + file.length());
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

    }
}

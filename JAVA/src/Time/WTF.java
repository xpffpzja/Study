package Time;

import java.util.Calendar;
import java.util.GregorianCalendar;

public class WTF {

	public static void main(String[] args) {
		Calendar calendar = Calendar.getInstance();

        System.out.println("calendar = " + calendar);
        
        Calendar gregorianCalendar = new GregorianCalendar();

        System.out.println("gregorianCalendar = " + gregorianCalendar);
        
        
        int year = 2014;
        int month = 8;		//월은 0 ~ 11월로 사용하기 때문에 8은 9월을 의미한다.
        int dayOfMonth = 18;
        int hour = 16;
        int min = 42;
        int second = 0;
        
        Calendar birthDay = new GregorianCalendar(year, month, dayOfMonth, hour, min, second);

        System.out.println("birthDay = " + birthDay);
	}

}

package Time;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

public class Time {

	public static void main(String[] args) {
		 Date today = new Date();
		 
		 System.out.println("today = " + today);
		 
		LocalTime timeNow = LocalTime.now();
		LocalTime timeOf = LocalTime.of(18, 30, 0);
		System.out.println("timeNow : " + timeNow);
		System.out.println("timeOf : " + timeOf);
		
		LocalDate dateNow = LocalDate.now();
		LocalDate dateOf = LocalDate.of(2023, 1, 19);
		System.out.println("dateNow : " + dateNow);
		System.out.println("dateOf : " + dateOf);
		
		LocalDateTime dateTimeNow = LocalDateTime.now();
		LocalDateTime dateTimeOf = LocalDateTime.of(dateNow, timeNow);
		System.out.println("dateTimeNow : " + dateTimeNow);
		System.out.println("dateTimeOf : " + dateTimeOf);
		
		ZonedDateTime zonedDateTimeNow = ZonedDateTime.now();
		ZonedDateTime zonedDateTimeOf = ZonedDateTime.of(dateOf, timeOf, ZoneId.of("Asia/Seoul"));
		System.out.println("zonedDateTimeNow : " + zonedDateTimeNow);
		System.out.println("zonedDateTimeOf : " + zonedDateTimeOf);
		
		
		LocalDateTime localDateTime = LocalDateTime.now();
		System.out.println(localDateTime);
		System.out.println(localDateTime.hashCode());
		
		LocalDateTime localDateTime2 = localDateTime.plusMinutes(30);
		System.out.println(localDateTime2);
		System.out.println(localDateTime2.hashCode());
		
		System.out.println(localDateTime == localDateTime2);
		
		LocalDateTime localDateTime3 = localDateTime.minusHours(3);
		System.out.println(localDateTime3);
		
		
		
		LocalDate localDate = LocalDate.now();
		LocalDateTime localDateTime12 = LocalDateTime.now();
		ZonedDateTime zonedDateTime = ZonedDateTime.now();
		
		LocalDate past = LocalDate.of(2020, 11, 11);
		LocalDateTime future = LocalDateTime.of(2024, 12, 25, 12, 0, 0);
		ZonedDateTime now = ZonedDateTime.now();
		
		System.out.println(localDate.isAfter(past));
		System.out.println(localDateTime12.isBefore(future));
		System.out.println(zonedDateTime.isEqual(now));
		
		
		String timeNow1 = "14:05:10";
		String dateNow1 = "2022-10-12";

		LocalTime localTime = LocalTime.parse(timeNow1);
		LocalDate localDate1 = LocalDate.parse(dateNow1);
		LocalDateTime localDateTime1 = LocalDateTime.parse(dateNow1 + "T" + timeNow1);

		System.out.println(localTime);
		System.out.println(localDate1);
		System.out.println(localDateTime1);

		String timeNow2 = "14-05-10";
		String dateNow2 = "221005";

		LocalTime localTime2 = LocalTime.parse(timeNow2, DateTimeFormatter.ofPattern("HH-mm-ss"));
		LocalDate localDate2 = LocalDate.parse(dateNow2, DateTimeFormatter.ofPattern("yyMMdd"));

		System.out.println(localTime2);
		System.out.println(localDate2);

		String dateFormat = localDate1.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
		String timeFormat = localTime.format(DateTimeFormatter.ofPattern("HH mm"));

		System.out.println(dateFormat);
		System.out.println(timeFormat);
	 
	}

}

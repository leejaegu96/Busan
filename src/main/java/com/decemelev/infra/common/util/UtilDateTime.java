package com.decemelev.infra.common.util;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import com.decemelev.infra.common.constants.Constants;

public class UtilDateTime {

	public static String add00TimeString(String shDateStart) {
//		shDateStart = "2022-09-01 00:00:00";
		return shDateStart;
	}

	public static String add59TimeString(String shDateEnd) {
//		shDateEnd = "2022-09-01 23:59:59";
		return shDateEnd;
	}
	
	public static String nowString () throws Exception {
		LocalDateTime localDateTime = LocalDateTime.now();
		String localDateTimeString = localDateTime.format(DateTimeFormatter.ofPattern(Constants.DATETIME_FORMAT_BASIC));
		return localDateTimeString;
	}
	
}

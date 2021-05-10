package ch11;

import java.util.HashMap;
import java.util.Map;

public class Ther {
	private Map<String, Double> mapCel = new HashMap<>();
	
	/** JavaBean규약에 따라 기본 생성자가 필요하며 이는 항상 명시적으로 만들어주는 것이 혼란을 줄일 수 있다.	 */
	public Ther() {
	}
	
	public void setCel(String key, double val) {
		mapCel.put(key, val);
	}
	
	public double getCel(String key) {
		return mapCel.get(key);
	}
	
	public static String getInfo() {
		return "version 1.1";
	}
	
	public String getName() {
		return "홍길동";
	}
}

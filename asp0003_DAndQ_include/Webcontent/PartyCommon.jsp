<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<p>
	이름 : <input id="name" type="text" value="홍길동" readonly="true">
</p>
<p>
	주소 : <input id="addr" type="text" value="한양" readonly="true">
</p>

<script>
	/*
	 * 본 Page를 포함 시킨 곳에서 controlUsage() 를 호출 할 때 "create", "update", "detail" 중에 하나를 인자로 주면..
	 * 여기서는 그 사용 형태에 따라 readonly를 "true" 또는 "false"로 제어할 것이다.
	 */
	function controlUsage(usage) {
		// "create", "update", "detail"
		if ("create" == usage || "update" == usage) {
			document.getElementById("name").readOnly = false;
			document.getElementById("addr").readOnly = false;
		}
		if ("create" == usage || "update" == usage) {
			document.getElementById("name").readOnly = false;
			document.getElementById("addr").readOnly = false;
		}
		
	}
</script>
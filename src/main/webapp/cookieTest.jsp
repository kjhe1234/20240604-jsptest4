<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	// 쿠키 가져오기 -> 클라이언트 컴퓨터에 저장되어 있는 쿠키들을 한번에 배열형태로 서버컴퓨터로 가져옴
	Cookie[] cookies = request.getCookies();
	
	if(cookies != null) {
		for(int i=0;i<cookies.length;i++) {
			//String cookieName = cookies[i].getName(); //쿠키의 이름
			//String cookieValue = cookies[i].getValue(); //쿠키의 값
			out.println("쿠키의 이름:" + cookies[i].getName() + "<br>");
			out.println("쿠키의 값:" + cookies[i].getValue() + "<br>");
		}	
		} else {
			out.println("현재 로그아웃 상태 입니다.");
		}
	
	
	%>

</body>
</html>
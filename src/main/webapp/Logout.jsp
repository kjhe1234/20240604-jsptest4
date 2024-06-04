<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
	<%
		//쿠키를 삭제하는 것이 곧 로그아웃
		Cookie[] cookies = request.getCookies();	
	for(int i=0;i<cookies.length;i++) { //쿠키를 하나씩 가져와서 삭제하기
		//쿠키삭제방법->가져온 쿠키의 유효시간을 0으로 셋팅 -> 다시 클라이언트 컴퓨터에 보냄
		cookies[i].setMaxAge(0); //쿠키의 유효시간을 0으로 셋팅
		response.addCookie(cookies[i]); //다시 클라이언트 컴퓨터에 보냄
		
	}
	
	
	%>
	<a href="cookieTest.jsp">쿠키 확인 페이지</a><br><br>
	<a href="login.jsp">로그인 페이지로 가기</a>
	

</body>
</html>
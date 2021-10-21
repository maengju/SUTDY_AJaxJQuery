<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!-- XML 파일 태그 시작전의 공백문자 제거 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<c:set var="result" value="true"></c:set>
<c:set var="message" value="안녕하세요 홍길동님"></c:set>

<c:if test="${param.user_id !='hong' }">
	<c:set var="result" value="false"></c:set>
	<c:set var="message" value="가입하지 않은아이디입니다."></c:set>
</c:if>  

<c:if test="${param.user_password!='111' }">
	<c:set var="result" value="false"></c:set>
	<c:set var="message" value="비밀번호 틀렷습니다."></c:set>
</c:if>  
    
<?xml version="1.0" encoding="UTF-8"?>    
<login>
	<result>${result }</result>
	<message>${message }</message>
</login>
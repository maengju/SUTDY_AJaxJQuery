<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
	int num = Integer.parseInt(request.getParameter("num"));

	//db연동 할시 여기서
	
	
	boolean result = false;
	String message = "덧글 삭제 실패";
	
	if(num !=0){
		result = true;
		message = "덧글 삭제 완료";
	}
	
	

%>



<?xml version="1.0" encoding="UTF-8"?>

<comment>
	<result><%=result %></result>
	<message><%=message %></message>
</comment>


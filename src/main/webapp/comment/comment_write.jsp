<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page import = "java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>

<%! //1번만 처리, 전역변수 
int num = 3; 
%>

<%
	//요청할때마다 처리 (지역변수)
	request.setCharacterEncoding("UTF-8");
	String user_name = request.getParameter("user_name");
	String comment = request.getParameter("comment");
	
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	String datetime = sdf.format(date);
	
	
	num++;
	boolean result = true;
	String message = "덧글 등록 완료";
%>


<?xml version="1.0" encoding="UTF-8"?>
<comment>
	<result><%=result %></result>
	<message><%=message %></message>
	<item>
		<num><%=num %></num>
		<writer><%=user_name %></writer>
		<content><%=comment %></content>
		<datetime><%=datetime %></datetime>
	</item>
</comment>

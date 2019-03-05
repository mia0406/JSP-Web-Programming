<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Enumeration"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% 
	//request.setCharacterEncoding("utf-8"); // Decoding 과정이 원활하게 되지 않음
	request.setCharacterEncoding("EUC-KR");
%>
전송된 파라미터 종류 : 
<%
	Enumeration paramEnum = request.getParameterNames();
	while(paramEnum.hasMoreElements()){
	
		String name=(String)paramEnum.nextElement();
%>
		<%= name %>
<% 
	}
%>
<br/>
name 파라미터 : <%= request.getParameter("name") %><br/>
address 파라미터 : <%= request.getParameter("address") %><br/>
pet 파라미터 : 
<% 
	String[] values=request.getParameterValues("pet");
	if(values!=null){
		
		for(int i=0;i<values.length;i++){
			
%>
			<%= values[i] %>
<% 			
		}
	}
%>
</body>
</html>
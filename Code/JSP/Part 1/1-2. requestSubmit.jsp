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
	//request.setCharacterEncoding("utf-8"); // Decoding ������ ��Ȱ�ϰ� ���� ����
	request.setCharacterEncoding("EUC-KR");
%>
���۵� �Ķ���� ���� : 
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
name �Ķ���� : <%= request.getParameter("name") %><br/>
address �Ķ���� : <%= request.getParameter("address") %><br/>
pet �Ķ���� : 
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
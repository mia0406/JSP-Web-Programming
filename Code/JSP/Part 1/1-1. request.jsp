<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="requestSubmit.jsp" method="post">
�̸� : <input type="text" name="name" size="10"><br/>
�ּ� : <input type="text" name="address" size="30"><br/>
���� : 
	<input type="checkbox" name="pet" value="dog">������
	<input type="checkbox" name="pet" value="cat">�����
	<input type="checkbox" name="pet" value="bird">��
	<input type="checkbox" name="pet" value="rabbit">�䳢
<br/>
<input type="submit" value="����">
</form>
<br/>
<a href="requestSubmit.jsp?name=abc&address=APL">GET�̿�</a>
</body>
</html>
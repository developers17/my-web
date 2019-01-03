<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		String printMultiTable()
		{
			String s = "";
			for(int i=1;i<=9;i++)
			{
				for(int j=1;j<=i;j++)
				{
					s+=i+"*"+j+"="+(i+j)+"&nbsp;&nbsp;&nbsp;&nbsp;";
					
				}
				s+="<br>";
			}
			return s;
		}
	//Jsp内置out对象，使用脚本方式调用，打印乘法表
		void printMultiTable2(JspWriter out) throws Exception
		{
			for(int i=1;i<=9;i++)
			{
				for(int j=1;j<=i;j++)
				{
					out.println(i+"*"+j+"="+(i+j)+"&nbsp;&nbsp;&nbsp;&nbsp;");					
				}
				out.println("<br>");
			}
		}
	
		out.flush();
		
		
		%>
	<h1>九九乘法表 </h1>
	<hr>
	<%=printMultiTable()%>
	<br>
	<% printMultiTable2(out); %>
	
</body>
</html>
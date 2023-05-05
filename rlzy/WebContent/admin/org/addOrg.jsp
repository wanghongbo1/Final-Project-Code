<%@ page language="java" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		<base target="_self">
		
		<script type="text/javascript">
		    function closeOpen()
		    {
		       window.returnValue=false;
		       window.close();
		    }
		    
		    function check()
		    {
		        var name=document.addOrg.name.value;
		        var description=document.addOrg.description.value; 
		        if(name=="")
		        {
		            alert("Please enter an organization name");
		            return false;
		        }
                return true;		        
		    }
		</script>
	</head>

	<body>
		<center>
			<form action="<%=path %>/org?type=orgAdd" name="addOrg" method="post">
			   <input type="hidden" name="p_id" value='<%=request.getParameter("orgId") %>'>
			   <br><br>
			     Organization name：<input type="text" name="name" size="30"/><br><br>
                   Organization description：<input type="text" name="description" size="30"/><br><br>
                <input type="submit" value="submit" class="ButtonCss" onclick="return check();"/>
                <input type="reset" value="refill" class="ButtonCss"/>
                <input type="button" value="cancel" class="ButtonCss" onclick="closeOpen()"/>
			</form>
		</center>
	</body>
</html>

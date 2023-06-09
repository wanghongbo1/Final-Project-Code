<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />

		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		
		<script language="JavaScript" src="<%=path %>/js/popup_shuaxin.js" type="text/javascript"></script>
		
        <script language="javascript">
                      
           function qingjiashenqingDel(id)
           {
                var url="<%=path %>/qingjiashenqing?type=qingjiashenqingDel&id="+id;
                var pop=new Popup({ contentType:1,isReloadOnClose:false,width:200,height:150});
	            pop.setContent("contentUrl",url);
	            pop.setContent("title","Operating Windows");
	            pop.build();
	            pop.show();
           }
           
           function qingjiashenqing_shenhe(id)
           {
                var url="<%=path %>/admin/qingjiashenqing/qingjiashenqing_shenhe.jsp?id="+id;
                var pop=new Popup({ contentType:1,isReloadOnClose:false,width:400,height:300});
	            pop.setContent("contentUrl",url);
	            pop.setContent("title","Operating Windows");
	            pop.build();
	            pop.show();
           }
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/img/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="66" background="<%=path %>/img/tbg.gif">&nbsp;Application for leave&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
				    <td width="10%">Employee</td>
					<td width="10%">Start time</td>
					<td width="10%">End time</td>
					<td width="10%">Reasons for leave</td>
					<td width="10%">Audit status</td>
					<td width="10%">Reply message</td>
					<td width="10%">Operation</td>
		        </tr>	
				<c:forEach items="${requestScope.qingjiashenqingList}" var="qingjiashenqing">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						 ${qingjiashenqing.yuangong.name}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						 ${qingjiashenqing.kaishishijian}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						 ${qingjiashenqing.jieshushijian}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						 ${qingjiashenqing.beizhu}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						 <c:if test="${qingjiashenqing.shenhezhuangtai=='a'}">
						       Pending review
						      <a href="#" style="color: red" onclick="qingjiashenqing_shenhe(${qingjiashenqing.id})">Audit</a>
						 </c:if>
						 <c:if test="${qingjiashenqing.shenhezhuangtai=='b'}">Approved by review</c:if>
						 <c:if test="${qingjiashenqing.shenhezhuangtai=='c'}">Failed to pass the audit</c:if>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						 ${qingjiashenqing.huifuxinxi}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<a class="pn-loperator" href="#" onclick="qingjiashenqingDel(${qingjiashenqing.id})">Delete</a>
					</td>
				</tr>
				</c:forEach>
			</table>
	</body>
</html>

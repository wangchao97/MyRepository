<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
 %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
   		<%--转发与属性标签 
   		<jsp:forward page="">
   			<jsp:param value="" name=""/>
   			<jsp:param value="" name=""/>
   		</jsp:forward>
   	--%>
   			<%--包含标签<jsp:include page=""></jsp:include> --%>
   		<%--
   		
   		JSTL  (java standard tag libarary)java标准标签库
   		
   	*	核心标签库 （c标签库)    
   	*	国际化标签库(fmt标签库）    
   	*	EL函数库(fn函数库)
   		
   		xml标签库（x标签库)
   		sql标签库(sql标签库)
   		 --%>
   		 
   		 <%--
   		 JSTLb标签使用步骤
   		 1）导入jar包（javeEE5.0后自动导入)
   		 2）taglib指令导入标签库
   		 3) 使用标签
   		 
   		  
   		保存数据： 
   		 <c:set></c:set>	  
   		获取数据：  
   		<c:out value=""></c:out>
   		单条件判断： 
   		 <c:if test=""></c:if>
   		多条件判断：
   		  <c:choose></c:choose>
   		  <c:when test=""></c:when>
   		  <c:otherwise></c:otherwise>
   		 循环数据 ：
   		  <c:forEach></c:forEach>
   		  <c:forTokens items="" delims=""></c:forTokens>
   		  重定向：
   		  <c:redirect></c:redirect>
   		  
   		   --%>
   		  <%--测试set标签：保存数据 （保存到域中默认保存到page域）--%>
   		  
   		  <c:set var="name"  value="true" scope="request"></c:set>
   		   ${name }
   		   
   		  <%--
   		  测试out标签：获取输出数据(从域中) 
   		  default:当value值为null 时，使用默认值
   		  escapeXml：是否对value的值进行转义，false，不转义,true,转义
   		  --%>
   		  <c:out value="${name }" default="null" escapeXml=""></c:out>
   		  
   		  <%--测试if标签：单条件判断 --%>
   		  <c:if test="${!empty name }">
   		  		条件成立
   		  </c:if>
   		  
   		  <%--测试choose标签+when标签+otherwirse标签:多条件判断 --%>
   		  <c:set var="score"  value="90" scope="request"></c:set>
   		  <c:choose>
   		  		<c:when test="${score>=90&&score<=100 }">优秀</c:when>
   		  		<c:when test="${score>=80&&score<90 }">良好</c:when>
   		  		<c:when test="${score>=70&&score<80 }">一般</c:when>
   		  		<c:when test="${score>=60&&score<70 }">及格</c:when>
   		  		<c:otherwise>不及格</c:otherwise>
   		  </c:choose>
   		  <br/>
   		  <%--
   		  foreach标签：循环
   		  begin="":从哪个元素开始遍历
   		  end=""：到哪个元素结束
   		  step=""：步长（每次加几）
   		  items=""：需要遍历的数据（集合）
   		  var=""：每个元素的名称
   		  varStatus=""：当前正在遍历元素的状态对象。（count属性：从当前位置，从1开始）
   		  	
   		   --%>
   		  <%
   		  		List<Integer> list = new ArrayList<Integer>(); 
   		  		for(int i=0;i<5;i++){
   		  			list.add(i);
   		  		}
   		  		pageContext.setAttribute("list", list);
   		   %>
   		  <c:forEach begin="0" end="5"  step="1"  items="${list }" var="ite" varStatus="varsta" >
   		  		数值${varsta.count-1 }-${ite }<br/>
   		  </c:forEach>
   		  
   		  
</html>

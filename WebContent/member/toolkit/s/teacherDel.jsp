<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>

 <jsp:useBean id="conn" class="DB.MyConn" scope="session"></jsp:useBean> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
 
    
    <title>My JSP 'studentDel.jsp' starting page</title>
    <link rel="stylesheet" type="text/css" href="../../../css/JWM.css">

  </head>
  
  <body>
  <div id="map" style="padding-top:5px;">你的位置：<a class="xh" href="../../welcome.html">欢迎</a> > <a class="xh" href="javascript:void(0)">教工删除</a></div>
  <%  
  Statement stmt=null;
  stmt =conn.getConnection().createStatement();
  String t_id=request.getParameter("t_id"); 
  String sql="delete from teachers where t_id="+t_id+"";
  int temp=stmt.executeUpdate(sql);
if(temp !=0){ 
 out.print("操作成功！正在返回。。。");
     response.setHeader("Refresh","2;URL=../teacherUpdate.jsp");
}else{
	out.print("删除失败！");
	
}%>
  </body>
</html>

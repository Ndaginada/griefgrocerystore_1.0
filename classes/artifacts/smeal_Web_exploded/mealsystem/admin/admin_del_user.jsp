<%@ page pageEncoding="UTF-8" import="java.sql.*" %>
<%
   String sql="delete from user where id=?";
   String id=request.getParameter("id");
   int i_id=Integer.parseInt(id);
   Connection conn=null;
	PreparedStatement stmt=null;
	ResultSet rs=null;
	Class.forName("com.mysql.jdbc.Driver");
	String url=
			"jdbc:mysql://localhost:3306/mealsystem";
	String user="root",password="root";
	conn=DriverManager
			.getConnection(url, user, password);
	stmt=conn.prepareStatement(sql);
	stmt.setInt(1, i_id);
	int count=stmt.executeUpdate();
	String msg="";
	if(count>0){
		msg="用户删除成功";
	}else{
		msg="用户删除失败";
	}
	stmt.close();
	conn.close();
	String href = request.getContextPath()+"/mealsystem/admin/admin_list_user.jsp";
	request.setAttribute("msg", msg);
	request.setAttribute("href", href);
%>
<jsp:forward page="../result.jsp" />
<%@ page pageEncoding="UTF-8" import="java.sql.*" %>
<%

String sql="update user set userName=?,password=?,ident=?,telephone=?,address=? where id=?";
String s_id=request.getParameter("id");
int id=Integer.parseInt(s_id);
String un=request.getParameter("un");
String pw=request.getParameter("pw");
String ident=request.getParameter("ident");
String tel=request.getParameter("tel");
String addr=request.getParameter("addr");
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

	stmt.setString(1,un);
	stmt.setString(2,pw);
	stmt.setString(3,ident);
	stmt.setString(4,tel);
	stmt.setString(5,addr);
	stmt.setInt(6,id);
	int count=stmt.executeUpdate();
	String msg="";
	if(count>0){
		msg="用户修改成功";
	}else{
		msg="用户修改失败";
	}
	stmt.close();
	conn.close();


	String href = request.getContextPath()+"/mealsystem/admin/admin_list_user.jsp";
	request.setAttribute("msg", msg);
	request.setAttribute("href", href);
%>
<jsp:forward page="../result.jsp" />
<%@ page pageEncoding="UTF-8" import="java.sql.*" %>
<%
   String sql1="select max(id ) as m from user";
   String sql2="insert into user values(?,?,?,?,?,?)";
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
	stmt=conn.prepareStatement(sql1);
	rs=stmt.executeQuery();
	rs.next();
	int next=rs.getInt(1)+1;
	rs.close();
	stmt.close();
	stmt=conn.prepareStatement(sql2);
	stmt.setInt(1,next);
	stmt.setString(2,un);
	stmt.setString(3,pw);
	stmt.setString(4,ident);
	stmt.setString(5,tel);
	stmt.setString(6,addr);
	int count=stmt.executeUpdate();
	String msg="";
	if(count>0){
		msg="用户添加成功";
	}else{
		msg="用户添加失败";
	}
	stmt.close();
	conn.close();
	
	String href = request.getContextPath()+"/mealsystem/admin/admin_list_user.jsp";
	request.setAttribute("msg", msg);
	request.setAttribute("href", href);
%>
<jsp:forward page="../result.jsp" />
package cn.edu.neusoft.core.util;

import java.sql.*;
import java.util.*;


public class DBUtitl {
	private static String url = "", driver = "", userName = "", password = "";
	static {
		ResourceBundle bundle = ResourceBundle.getBundle("jdbc");
		url = bundle.getString("jdbc.url");
		driver = bundle.getString("jdbc.driver");
		userName = bundle.getString("jdbc.username");
		password = bundle.getString("jdbc.password");
	}

	private static String getUrl() {
		return url;
	}
	private static String getDriver() {
		return driver;
	}
	private static String getUserName() {
		return userName;
	}
	private static String getPassword() {
		return password;
	}
	private DBUtitl() {

	}
	private static Connection getConnection() throws SQLException{
		Connection conn=null;
		try{
			Class.forName(getDriver());
			conn=DriverManager.getConnection(getUrl(),getUserName(),getPassword());
			
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}
		return conn;
		
	}
	public static  List queryForList(String sql,Object[] args){
		Connection conn=null;
		List list=new ArrayList();
	 try{
		 conn=getConnection();
		 PreparedStatement pstmt=conn.prepareStatement(sql);
		 if(args!=null){
			 for(int i=0;i<args.length;i++){
				 pstmt.setObject(i+1, args[i]); 
			 }
		 }
		 ResultSet rs=pstmt.executeQuery();
		 ResultSetMetaData rsmd=rs.getMetaData();
		 int cols=rsmd.getColumnCount();
		 String[] colNames=new String[cols];
		 for(int i=0;i<cols;i++){
			 colNames[i]=rsmd.getColumnName(i+1);
		 }
		 while(rs.next()){
			 Map row=new HashMap();
			 for(int i=0;i<cols;i++){
				 row.put(colNames[i], rs.getObject(i+1));
			 }
			 list.add(row);
		 }
		 rs.close();
		 pstmt.close();
		 
	 }catch(SQLException e){
		 e.printStackTrace();
	 }finally{
		try{
		 if(conn!=null){
			 conn.close();
		 }
		 }catch(SQLException e){
			 e.printStackTrace();
		 }
	 }
	 return list;
	}
	public static Object[][] queryForArray(String sql,Object[] args){
		Connection conn=null;
		Object[][] result=null;
	 try{
		 conn=getConnection();
		 PreparedStatement pstmt=conn.prepareStatement(sql,ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
		 if(args!=null){
			 for(int i=0;i<args.length;i++){
				 pstmt.setObject(i+1, args[i]); 
			 }
		 }
		 ResultSet rs=pstmt.executeQuery();
		 rs.last();
		 int total=rs.getRow();
		 result=new Object[total][];
		 rs.beforeFirst();
		 ResultSetMetaData rsmd=rs.getMetaData();
		 int cols=rsmd.getColumnCount();
		 int rownum=0;
		 while(rs.next()){
			 result[rownum]=new Object[cols];
			 
			 for(int i=0;i<cols;i++){
				 result[rownum][i]=rs.getObject(i+1);
			 }
			 rownum++;
		 }
		 rs.close();
		 pstmt.close();
		 
	 }catch(SQLException e){
		 e.printStackTrace();
	 }finally{
		try{
		 if(conn!=null){
			 conn.close();
		 }
		 }catch(SQLException e){
			 e.printStackTrace();
		 }
	 }
	 return result;
	}
	public static boolean update(String sql,Object[] args){
		Connection conn=null;
		int count=-1;
		try{
			conn=getConnection();
			 PreparedStatement pstmt=conn.prepareStatement(sql);
			 if(args!=null){
				 for(int i=0;i<args.length;i++){
					 pstmt.setObject(i+1, args[i]); 
				 }
			 }
			 count=pstmt.executeUpdate();
			pstmt.close();
			
		}catch(SQLException ex){
			ex.printStackTrace();
		}finally{
			if(conn!=null){
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		if(count>=0){
			return true;
		}else{
			return false;
		}
	}
	public static  Map queryForMap(String sql,Object[] params) throws Exception{
		  List result=queryForList(sql,params);
		  if(result.size()==1){
			return (Map)result.get(0);  
		  }else{
			  throw new Exception("����һ����ݣ�ʵ�ʷ���"+result.size()+"��");
		  }
		  
		}

}

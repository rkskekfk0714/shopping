package project.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import project.vo.ProjectVO;

public class ProjectDao {
	private static ProjectDao dao = new ProjectDao();
	private ProjectDao() {}
	public static ProjectDao getInstance() {
		return dao;		
	}
	
	public Connection connect()
	{
		Connection conn = null;
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","1234");
		}catch(Exception e)
		{
			System.out.print("MDAO:connect" + e);
		}
		return conn;
	}
	
	public void close(Connection conn, PreparedStatement pstmt)
	{
		if(pstmt != null)
		{
			try {
				pstmt.close();
			}catch(Exception e) {
				System.out.print("Pstmt close error" + e);
			}
		}
		if(conn != null)
		{
			try {
				conn.close();
			} catch(Exception e)
			{
				System.out.print("Conn close error" + e);
			}
		}
	}
	
	public void close(Connection conn, PreparedStatement pstmt, ResultSet rs)
	{
		if(rs != null)
		{
			try {
				rs.close();
			} catch(Exception e)
			{
				System.out.print("rs close error" + e);
			}
		}
		close(conn, pstmt);
	}
	
	public void join(ProjectVO project) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try
		{
			conn = connect();
			pstmt = conn.prepareStatement("insert into customer values(?,?,?,?,?,?,?);");
			pstmt.setString(1, project.getId());
			pstmt.setString(2, project.getPwd());
			pstmt.setString(3, project.getName());
			pstmt.setString(4, project.getAddr());
			pstmt.setString(5, project.getBirth());
			pstmt.setString(6, project.getGender());
			pstmt.setString(7, project.getPhone());
			pstmt.executeUpdate();
		}catch(Exception e)
		{
			System.out.print("join error" + e);
		} finally
		{
			close(conn, pstmt);
		}
	}
	public boolean login(String id, String pwd) {
		// TODO Auto-generated method stub
		boolean result = false;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		System.out.print(pwd);
		try
		{
			conn = connect();
			pstmt = conn.prepareStatement("select * from customer where id = ? and pwd = ?;");
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery();
			if(rs.next())
			{
				result = true;
			}
			else
				result = false;
			
		}catch(Exception e)
		{
			System.out.print("login error" + e);
		} finally
		{
			close(conn, pstmt, rs);
		}
		return true;
	}
	
	/**
     * 아이디 중복체크를 한다.
     * @param id 아이디
     * @return x : 아이디 중복여부 확인값
     */
	public boolean duplicateIdCheck(String id) {		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean x = false;
		
		try
		{
			conn = connect();
			pstmt = conn.prepareStatement("select id from customer where id = ?;");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) x= true; //해당 아이디 존재
			            
			return x;

			
		}catch(Exception e)
		{
			throw new RuntimeException(e.getMessage());
		} finally
		{
			try{
                if ( pstmt != null ){ pstmt.close(); pstmt=null; }
                if ( conn != null ){ conn.close(); conn=null;    }
            }catch(Exception e){
                throw new RuntimeException(e.getMessage());
            }
		}
	}
	
}

package LMS;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

//import LMS.DB;
public class LibrarianDao {

	
	public static int save(String studentid,String name,String password,String course,String stream,String contact){
		int status=0;
		try{
			Connection con=DB.getConnection();
			PreparedStatement ps=con.prepareStatement("insert into librarian(studentid,name,password,course,stream,contact) values(?,?,?,?,?,?)");
			ps.setString(5,studentid);
			ps.setString(1,name);
			ps.setString(2,password);
			ps.setString(3,course);
			ps.setString(4,stream);
			ps.setString(6,contact);
			status=ps.executeUpdate();
			con.close();
		}catch(Exception e){System.out.println(e);}
		return status;
	}
	public static int delete(int studentid){
		int status=0;
		try{
			Connection con=DB.getConnection();
			PreparedStatement ps=con.prepareStatement("delete from librarian where studentid=?");
			ps.setInt(1,studentid);
			status=ps.executeUpdate();
			con.close();
		}catch(Exception e){System.out.println(e);}
		return status;
	}

	public static boolean validate(String name,String password){
		boolean status=false;
		try{
			Connection con=DB.getConnection();
			PreparedStatement ps=con.prepareStatement("select * from librarian where name=? and password=?");
			ps.setString(1,name);
			ps.setString(2,password);
			ResultSet rs=ps.executeQuery();
			status=rs.next();
			con.close();
		}catch(Exception e){System.out.println(e);}
		return status;
	}

}


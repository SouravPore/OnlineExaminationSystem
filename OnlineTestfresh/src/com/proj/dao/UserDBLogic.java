
package com.proj.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.proj.model.Question;
import com.proj.model.UserInfo1;

public class UserDBLogic 
{
	public boolean UserRegInfoStoreInDB(UserInfo1 userobj)
	{
		Connection conobject=null;
		PreparedStatement pst=null;
		boolean f=false;
		try
		{
			conobject=DBConnect.getDBConnection(); 
			pst=conobject.prepareStatement("insert into userinfo1 values(?,?,?,?,?,?,?,?,?,?,?)");
			pst.setString(1, userobj.getFullname());
			pst.setString(2, userobj.getEmail());
			pst.setString(3, userobj.getMobileno());
			pst.setString(4, userobj.getAddress());	
			pst.setString(5, userobj.getPassword());
			pst.setString(6, userobj.getDob());
			pst.setString(7, userobj.getGender());
			pst.setString(8, userobj.getHobby());
			pst.setString(9, userobj.getCity());
			pst.setString(10, userobj.getQualification());
			pst.setString(11, userobj.getMarks());
			int i=pst.executeUpdate();
			if(i>0)
				f=true;
		}catch(SQLException e) {System.out.println(e.toString());}
		return f;
	}
	//public boolean UserRegDelete(String email)
	public boolean UserRegDelete(UserInfo1 userobj)
	{
		Connection conobject=null;
		PreparedStatement pst=null;
		boolean f=false;
		try
		{
			conobject=DBConnect.getDBConnection();
			pst=conobject.prepareStatement("delete from userinfo1 where email=(?)");
			pst.setString(1, userobj.getEmail());
			int i=pst.executeUpdate();
			pst=conobject.prepareStatement("delete from score where email=(?)");
			pst.setString(1, userobj.getEmail());
			//pst.setString(1, email);
			
			int j=pst.executeUpdate();
			
			if(j>0)
				f=true;
		}catch(SQLException e) {System.out.println(e.toString());}	
		return f;
	}
	//to fetch all records from database
	public List<UserInfo1> fetchAllUser()
	{
		Connection conobject=null;
		PreparedStatement pst=null;
		ResultSet rs=null;
		List<UserInfo1> userlist=new ArrayList<UserInfo1>();
		
		try
		{
			conobject=DBConnect.getDBConnection(); 
			pst=conobject.prepareStatement("select name,userinfo1.email,mobileno,address,password,dob,gender,hobby,city,highestqualification,marks,score,subject from userinfo1,score where userinfo1.email=score.email");
			rs=pst.executeQuery();
			while(rs.next())
			{
				//create bean class object
				UserInfo1 userobj=new UserInfo1();
				//read value from resultset object and store it inside bean object
				userobj.setFullname(rs.getString(1));
				userobj.setEmail(rs.getString(2));
				userobj.setMobileno(rs.getString(3));
				userobj.setAddress(rs.getString(4));
				userobj.setPassword(rs.getString(5));
				userobj.setDob(rs.getString(6));
				userobj.setGender(rs.getString(7));
				userobj.setHobby(rs.getString(8));
				userobj.setCity(rs.getString(9));
				userobj.setQualification(rs.getString(10));
				userobj.setMarks(rs.getString(11));
				userobj.setScore(rs.getInt(12));
				userobj.setSubject(rs.getString(13));
				//add bean object to arraylist
				userlist.add(userobj);
				
			}
		}catch(SQLException e) {System.out.println(e.toString());}
		return userlist;
	}
	public List<UserInfo1> searchUser(String email)
	{
		Connection conobject=null;
		PreparedStatement pst=null;
		ResultSet rs=null;
		List<UserInfo1> userlist=new ArrayList<UserInfo1>();
		
		try
		{
			conobject=DBConnect.getDBConnection(); 
			pst=conobject.prepareStatement("select name,userinfo1.email,mobileno,address,password,dob,gender,hobby,city,highestqualification,marks,score,subject from userinfo1,score where userinfo1.email=score.email and userinfo1.email=(?)");
			pst.setString(1,email);
			rs=pst.executeQuery();
			while(rs.next())
			{
				//create bean class object
				UserInfo1 userobj=new UserInfo1();
				//read value from resultset object and store it inside bean object
				userobj.setFullname(rs.getString(1));
				userobj.setEmail(rs.getString(2));
				userobj.setMobileno(rs.getString(3));
				userobj.setAddress(rs.getString(4));
				userobj.setPassword(rs.getString(5));
				userobj.setDob(rs.getString(6));
				userobj.setGender(rs.getString(7));
				userobj.setHobby(rs.getString(8));
				userobj.setCity(rs.getString(9));
				userobj.setQualification(rs.getString(10));
				userobj.setMarks(rs.getString(11));
				userobj.setScore(rs.getInt(12));
				userobj.setSubject(rs.getString(13));
				//add bean object to arraylist
				userlist.add(userobj);
				
			}
		}catch(SQLException e) {System.out.println(e.toString());}
		return userlist;
	}
	public UserInfo1 userLoginCheck(String email,String password)
	{
		Connection conobject=null;
		PreparedStatement pst=null;
		ResultSet rs=null;
		UserInfo1 userobj=null;
		
		try
		{
			conobject=DBConnect.getDBConnection(); 
			pst=conobject.prepareStatement("select * from userinfo1 where email=? and password=?");
			pst.setString(1,email);
			pst.setString(2,password);
			rs=pst.executeQuery();
			if(rs.next())
			{
				//create bean class object
			    userobj=new UserInfo1();
				//read value from resultset object and store it inside bean object
			    userobj.setFullname(rs.getString(1));
				userobj.setEmail(rs.getString(2));
				userobj.setMobileno(rs.getString(3));
				userobj.setAddress(rs.getString(4));
				userobj.setPassword(rs.getString(5));
				userobj.setDob(rs.getString(6));
				userobj.setGender(rs.getString(7));
				userobj.setHobby(rs.getString(8));
				userobj.setCity(rs.getString(9));
				userobj.setQualification(rs.getString(10));
				userobj.setMarks(rs.getString(11));
				
				
			}
		}catch(SQLException e) {System.out.println(e.toString());}
		return userobj;
	}
	public boolean AdminQuestionStoreInDB(Question userobj)
	{
		Connection conobject=null;
		PreparedStatement pst=null;
		boolean f=false;
		try
		{
			conobject=DBConnect.getDBConnection(); 
			pst=conobject.prepareStatement("insert into question values(?,?,?,?,?,?,?,?,?)");
			pst.setString(1, userobj.getQid());
			pst.setString(2, userobj.getSubject());
			pst.setString(3, userobj.getLevel());
			pst.setString(4, userobj.getQuestion());	
			pst.setString(5, userobj.getOpt1());
			pst.setString(6, userobj.getOpt2());
			pst.setString(7, userobj.getOpt3());
			pst.setString(8, userobj.getOpt4());
			pst.setString(9, userobj.getAnswer());
			int i=pst.executeUpdate();
			if(i>0)
				f=true;
		}catch(SQLException e) {System.out.println(e.toString());}
		return f;
	}
	public List<Question> fetchQuestion()
	{
		Connection conobject=null;
		PreparedStatement pst=null;
		ResultSet rs=null;
		List<Question> userlist=new ArrayList<Question>();
		
		try
		{
			conobject=DBConnect.getDBConnection(); 
			pst=conobject.prepareStatement("select * from question");
			rs=pst.executeQuery();
			while(rs.next())
			{
				//create bean class object
				Question userobj=new Question();
				//read value from resultset object and store it inside bean object
				userobj.setQid(rs.getString(1));
				userobj.setSubject(rs.getString(2));
				userobj.setLevel(rs.getString(3));
				userobj.setQuestion(rs.getString(4));
				userobj.setOpt1(rs.getString(5));
				userobj.setOpt2(rs.getString(6));
				userobj.setOpt3(rs.getString(7));
				userobj.setOpt4(rs.getString(8));
				userobj.setAnswer(rs.getString(9));
				
				
				//add bean object to arraylist
				userlist.add(userobj);
				
			}
		}catch(SQLException e) {System.out.println(e.toString());}
		return userlist;
	}
	public boolean questionDelete(Question userobj)
	{
		Connection conobject=null;
		PreparedStatement pst=null;
		boolean f=false;
		try
		{
			conobject=DBConnect.getDBConnection();
			pst=conobject.prepareStatement("delete from question where qid=?");
			pst.setString(1, userobj.getQid());
			
			int i=pst.executeUpdate();
			if(i>0)
				f=true;
		}catch(SQLException e) {System.out.println(e.toString());}	
		return f;
	}
	public List<Question> fetchQuestionTest(String subject)
	{
		Connection conobject=null;
		PreparedStatement pst=null;
		ResultSet rs=null;
		List<Question> userlist=new ArrayList<Question>();
		
		try
		{
			conobject=DBConnect.getDBConnection(); 
			pst=conobject.prepareStatement("select * from question where subject=?");
			pst.setString(1, subject);
			rs=pst.executeQuery();
			while(rs.next())
			{
				//create bean class object
				Question userobj=new Question();
				//read value from resultset object and store it inside bean object
				userobj.setQid(rs.getString(1));
				userobj.setSubject(rs.getString(2));
				userobj.setLevel(rs.getString(3));
				userobj.setQuestion(rs.getString(4));
				userobj.setOpt1(rs.getString(5));
				userobj.setOpt2(rs.getString(6));
				userobj.setOpt3(rs.getString(7));
				userobj.setOpt4(rs.getString(8));
				userobj.setAnswer(rs.getString(9));
				
				
				//add bean object to arraylist
				userlist.add(userobj);
				
			}
		}catch(SQLException e) {System.out.println(e.toString());}
		System.out.println(userlist.size());
		return userlist;
	}
	
	public void insertMarks(int marks,String email,String subject)
	{
		Connection conobject=null;
		PreparedStatement pst=null;
		try
		{
			conobject=DBConnect.getDBConnection(); 
			pst=conobject.prepareStatement("insert into score values(?,?,?)");
			pst.setString(1, email);
			pst.setString(2, subject);
			pst.setInt(3, marks);
			int i=pst.executeUpdate();
		}catch(SQLException e) {System.out.println(e.toString());}
		
	}
	public UserInfo1 fetchDetail(String email)
	{
		Connection conobject=null;
		PreparedStatement pst=null;
		ResultSet rs=null;
		UserInfo1 userobj=null; 
		
		try
		{
			conobject=DBConnect.getDBConnection(); 
			pst=conobject.prepareStatement("select * from userinfo1 where email=?");
			pst.setString(1,email);
			rs=pst.executeQuery();
			if(rs.next())
			{
				//create bean class object
				userobj=new UserInfo1();
				//read value from resultset object and store it inside bean object
			    userobj.setFullname(rs.getString(1));
				userobj.setEmail(rs.getString(2));
				userobj.setMobileno(rs.getString(3));
				userobj.setAddress(rs.getString(4));
				userobj.setPassword(rs.getString(5));
				userobj.setDob(rs.getString(6));
				userobj.setGender(rs.getString(7));
				userobj.setHobby(rs.getString(8));
				userobj.setCity(rs.getString(9));
				userobj.setQualification(rs.getString(10));
				userobj.setMarks(rs.getString(11));
				
				
			}
		}catch(SQLException e) {System.out.println(e.toString());}
		return userobj;
	}
	public List<UserInfo1> fetchScore(String email)
	{
		Connection conobject=null;
		PreparedStatement pst=null;
		ResultSet rs=null;
		List<UserInfo1> userlist=new ArrayList<UserInfo1>();
		
		try
		{
			conobject=DBConnect.getDBConnection(); 
			pst=conobject.prepareStatement("select name,userinfo1.email,score,subject from userinfo1,score where userinfo1.email=score.email and userinfo1.email=(?)");
			pst.setString(1,email);
			rs=pst.executeQuery();
			while(rs.next())
			{
				//create bean class object
			    UserInfo1 userobj=new UserInfo1();
				//read value from resultset object and store it inside bean object
			    userobj.setFullname(rs.getString(1));; 
				userobj.setEmail(rs.getString(2));
				userobj.setScore(rs.getInt(3));
				userobj.setSubject(rs.getString(4));
				userlist.add(userobj);
				
			}
		}catch(SQLException e) {System.out.println(e.toString());}
		return userlist;
	}
}

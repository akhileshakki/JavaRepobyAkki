package com.akki.servlets;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.akki.dao.DB;

public class InsertEmp {

	public static void main(String[] args) {
		try {
		Connection con=DB.getCon();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("Select ename from emp;");
		while(rs.next()) {
			System.out.println(rs.getString(1));
		}
		
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		}

}

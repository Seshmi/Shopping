package com.advertisement;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.adddetails.Advertisement;


public class AdDetails {
	
	public Advertisement loadData (String email) throws ClassNotFoundException {

		String dbUrl ="jdbc:mysql://localhost:3306/Grocery";
		String dbname = "root";
		String dbpassword ="Sesh1998*";
		String dbDriver = "com.mysql.cj.jdbc.Driver";

		Advertisement advertisement = new Advertisement();

		Class.forName(dbDriver);

		try(Connection connection = DriverManager.getConnection(dbUrl,dbname,dbpassword);


		PreparedStatement preparestatement = connection.prepareStatement("select * from advertisement where email=?")){
		preparestatement.setString(1,email);


		ResultSet rs = preparestatement.executeQuery();
		while( rs.next()) {
		String name = rs.getString("name");
		String Email = rs.getString("email");
		String contact_no = rs.getString("phone");
		String type = rs.getString("type");
		String info = rs.getString("info");
		String file = rs.getString("file");
		
		advertisement= new Advertisement(name,Email,contact_no,type,info,file);

		}


		}catch(Exception e) {

		System.out.print(e);
		}

		return advertisement;
		}

}

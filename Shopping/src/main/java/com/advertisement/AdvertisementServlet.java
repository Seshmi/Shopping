package com.advertisement;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.adddetails.Advertisement;

@MultipartConfig
@WebServlet("/AdvertisementServlet")
public class AdvertisementServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Advertisementdb advertisementdb;
       
	public void init() {
		advertisementdb = new Advertisementdb();
    }
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
		    throws ServletException, IOException {

		        String name = request.getParameter("name");
		        String email = request.getParameter("email");
		        String phone = request.getParameter("phone");
		        String type = request.getParameter("type");
		        String info = request.getParameter("info");
		        
		        Part File = request.getPart("file");
		        
		        
		        
		        Advertisement advertisement = new Advertisement();
		        advertisement.setname(name);
		        advertisement.setemail(email);
		        advertisement.setphone(phone);
		        advertisement.settype(type);
		        advertisement.setinfo(info);
		        
		       String imageFilename = File.getSubmittedFileName();
		        
		        
		        advertisement.setFile(imageFilename);
		        
		       String picture = "D:/SLIIT/2nd year 1st sem/OOP Final/OOP Final/Project/Project/Shopping/src/main/webapp/Images/"+imageFilename;
		        try {               
		        FileOutputStream images = new FileOutputStream(picture);
		        	InputStream pic = File.getInputStream();
		        	byte [] pictutres = new byte [pic.available()]; 
		        	pic.read(pictutres);
		        	images.write(pictutres);
		        	images.close ();
		        }catch(Exception e){
		        	e.printStackTrace();
		        }
		        
		        
		        
		        try {
		        	//System.out.println(advertisementdb.addadvertisement(advertisement));
		        	
		        	if(advertisementdb.addadvertisement(advertisement))
		        	{
		        	 response.sendRedirect("Response.jsp");
		        	}
		        	else
		        	{
		        		response.sendRedirect("AddAdvertisement.jsp");
		        	}
		        	
		        }catch (Exception e) {
		            // TODO Auto-generated catch block
		            e.printStackTrace();
		        }
	}
}

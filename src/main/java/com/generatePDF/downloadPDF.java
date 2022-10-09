package com.generatePDF;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itextpdf.text.log.SysoLogger;

@WebServlet("/downloadPDF")
public class downloadPDF extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public void init() throws ServletException {
		System.out.println("-------------------------------");
		System.out.println("Init method is called in "
				+ this.getClass().getName());
		System.out.println("-------------------------------");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String file = request.getParameter("select_semester");
		String filename = file + ".pdf";
		
		System.out.println("Searching for " + filename);
		
		String path = "G:\\1\\Java Workspace\\TimeTableGenerator\\Time_Tables_Pdf\\";
		String fullPath = path + file + ".pdf";
		
		File f = new File(fullPath);
		if(f.exists() == false) {
			System.out.println("Generating " + filename);
			generatePDF.generatePdf(path, file);
		}
		
		System.out.println("Downloading " + filename);
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		response.setContentType("APPLICATION/OCTET-STREAM");
		response.setHeader("Content-Disposition", "attachment; filename = \"" + filename + "\"");
		FileInputStream fileInputStream = new FileInputStream(fullPath);
		int i;
		while ((i = fileInputStream.read()) != -1) {
			out.write(i);
		}
		fileInputStream.close();
		out.close();
	}
	
	public void destroy() {
		System.out.println("-------------------------------");
		System.out.println("Destroy method is called in "
				+ this.getClass().getName());
		System.out.println("-------------------------------");
	}

}

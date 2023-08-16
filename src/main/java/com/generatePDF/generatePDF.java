package com.generatePDF;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Image;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.Rectangle;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.text.pdf.draw.LineSeparator;



public class generatePDF {
	public static void generatePdf(String path, String course) {
		String fullPath = path + course + ".pdf";
		try {
			
			
			Rectangle pageSize = new Rectangle(842, 595);
			Document document = new Document(pageSize);
			//document.setDefaultPageSize(PageSize.A4.rotate());
			PdfWriter.getInstance(document,new FileOutputStream(fullPath) );
			//PdfWriter.getInstance(document, response.getOutputStream());
			document.open();
			
			
			float[] colsWidthnum = {0.15f, 1.8f, 0.015f}; // Code 1
			PdfPTable table = new PdfPTable(colsWidthnum);
			//Image image = Image.getInstance(path+"employee/payslip/view/fly-hind.jpg");
			table = new PdfPTable(colsWidthnum);
			table.getDefaultCell().setBorder(0);
			table.setWidthPercentage(100); // Code 2
			
		Image img = Image.getInstance("G:\\1\\nitrrlogo2.png");
		//img.scaleToFit(1f, 1f);
			img.scalePercent(40);
			document.add(img);
			//img.scaleAbsolute(20f, 20f);
			// set Scaling
			//img.setAutoScaleHeight(true);
			//img.setAutoScaleWidth(true);
			//table.addCell(img);
			//table.addCell();
			
			table.addCell(img);
			table.addCell("                                        National Institute of Technology, Raipur");
			table.addCell("");
			//document.add(table);
			
			LineSeparator objectName = new LineSeparator();              
			document.add(objectName);
			
			document.add(new Paragraph("\n"));
//			document.add(new Paragraph(course));
//			document.add(new Paragraph("\n"));
			
			float[] colsWidth1 = {0.65f, 1f, 0.5f}; // Code 1
//			//Image image = Image.getInstance(path+"employee/payslip/view/fly-hind.jpg");
			table = new PdfPTable(colsWidth1);
			table.getDefaultCell().setBorder(0);
			table.setWidthPercentage(100); // Code 2
			
			Font fontSize_16 =  FontFactory.getFont(FontFactory.TIMES, 16f);
			Font fontStyle_Bold =  FontFactory.getFont(FontFactory.TIMES, 22f, Font.BOLD);
			//document.add(new Paragraph("This is fontSize_16", fontSize_16));
			Font fontStyle_Bold_16 =  FontFactory.getFont(FontFactory.TIMES, 16f, Font.BOLD);
			table.addCell("");
			table.addCell(new Paragraph("Time Table : " + course, fontStyle_Bold));
			table.addCell("");
			document.add(table);
			
			
			document.add(new Paragraph("\n"));
			
			
			Connection con = CP.creatC();
			String q = "select * from ";
			
			//course = "semester3";	//for testing
			
			q += course;
			Statement stmt = con.createStatement();

			ResultSet set = stmt.executeQuery(q);
			ArrayList<String> list = new ArrayList<>(List.of("Day", "Mon",
					"","Tue","", "Wed", "","Thr", "", "Fri", ""));
			float[] colsWidth2 = {0.5f, 1f, 1f, 1f, 1f, 1f, 1f, 1f};
			table = new PdfPTable(colsWidth2);
			table.setWidthPercentage(100);
			/*
			 * PdfPCell c1 = new PdfPCell(new Phrase("Day")); table.addCell(c1);
			 * 
			 * c1 = new PdfPCell(new Phrase("Period1")); table.addCell(c1);
			 * 
			 * c1 = new PdfPCell(new Phrase("Period2")); table.addCell(c1);
			 * 
			 * c1 = new PdfPCell(new Phrase("Period3")); table.addCell(c1);
			 * 
			 * c1 = new PdfPCell(new Phrase("Period4")); table.addCell(c1);
			 * 
			 * c1 = new PdfPCell(new Phrase("Period5")); table.addCell(c1);
			 * 
			 * c1 = new PdfPCell(new Phrase("Period6")); table.addCell(c1);
			 * 
			 * table.setHeaderRows(1);
			 */
			int i = 0;
			while (set.next()) {
				String day = list.get(i);
				
				PdfPCell c1 = new PdfPCell(new Phrase(day, fontStyle_Bold_16));
				table.addCell(c1);
				
				String period7 = set.getString(1);
				c1 = new PdfPCell(new Phrase(period7, fontSize_16));
				if(i == 0)
					c1 = new PdfPCell(new Phrase(period7, fontStyle_Bold_16));
				table.addCell(c1);
				
				String period1 = set.getString(2);
				c1 = new PdfPCell(new Phrase(period1, fontSize_16));
				if(i == 0)
					c1 = new PdfPCell(new Phrase(period1, fontStyle_Bold_16));
				table.addCell(c1);
				String period2 = set.getString(3);
				c1 = new PdfPCell(new Phrase(period2, fontSize_16));
				if(i == 0)
					c1 = new PdfPCell(new Phrase(period2, fontStyle_Bold_16));
				table.addCell(c1);
				String period3 = set.getString(4);
				c1 = new PdfPCell(new Phrase(period3, fontSize_16));
				if(i == 0)
					c1 = new PdfPCell(new Phrase(period3, fontStyle_Bold_16));
				table.addCell(c1);
				String period4 = set.getString(5);
				c1 = new PdfPCell(new Phrase(period4, fontSize_16));
				if(i == 0)
					c1 = new PdfPCell(new Phrase(period4, fontStyle_Bold_16));
				table.addCell(c1);
				String period5 = set.getString(6);
				c1 = new PdfPCell(new Phrase(period5, fontSize_16));
				if(i == 0)
					c1 = new PdfPCell(new Phrase(period5, fontStyle_Bold_16));
				table.addCell(c1);
				String period6 = set.getString(7);
				c1 = new PdfPCell(new Phrase(period6, fontSize_16));
				if(i == 0)
					c1 = new PdfPCell(new Phrase(period6, fontStyle_Bold_16));
				table.addCell(c1);
				//c1.setVerticalAlignment(Element.ALIGN_MIDDLE);
				//table.addCell(day);
//				table.addCell(period7);
//				table.addCell(period1);
//				table.addCell(period2);
//				table.addCell(period3);
//				table.addCell(period4);
//				table.addCell(period5);
//				table.addCell(period6);
				if(i == 0)
					table.setHeaderRows(1);
				i = i+1;
			}
			
			
			con.close();
			//Document document = new Document();
//			PdfWriter.getInstance(document, new FileOutputStream(fullPath));
//			document.open();
			document.add(table);
			document.close();
		} catch (Exception e) {
			System.out.println(e);
		}
	}

	public static void main(String[] args) throws FileNotFoundException, DocumentException {
		generatePdf("G:\\1\\Java Workspace\\TimeTableGenerator\\Time_Tables_Pdf","test");
	}
}

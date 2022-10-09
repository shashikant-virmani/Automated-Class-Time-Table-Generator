package com.generatePDF;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;



public class generatePDF {
	public static void generatePdf(String path, String course) {
		String fullPath = path + course + ".pdf";
		try {
			
			Connection con = CP.creatC();
			String q = "select * from ";
			
			course = "semester3";	//for testing
			
			q += course;
			Statement stmt = con.createStatement();

			ResultSet set = stmt.executeQuery(q);
			
			PdfPTable table = new PdfPTable(7);
			PdfPCell c1 = new PdfPCell(new Phrase("Day"));
			table.addCell(c1);
			
			c1 = new PdfPCell(new Phrase("Period1"));
			table.addCell(c1);
			
			c1 = new PdfPCell(new Phrase("Period2"));
			table.addCell(c1);
			
			c1 = new PdfPCell(new Phrase("Period3"));
			table.addCell(c1);
			
			c1 = new PdfPCell(new Phrase("Period4"));
			table.addCell(c1);
			
			c1 = new PdfPCell(new Phrase("Period5"));
			table.addCell(c1);
			
			c1 = new PdfPCell(new Phrase("Period6"));
			table.addCell(c1);
			
			table.setHeaderRows(1);
			while (set.next()) {
				String day = set.getString(1);
				String period1 = set.getString(2);
				String period2 = set.getString(3);
				String period3 = set.getString(4);
				String period4 = set.getString(5);
				String period5 = set.getString(6);
				String period6 = set.getString(7);
				
				table.addCell(day);
				table.addCell(period1);
				table.addCell(period2);
				table.addCell(period3);
				table.addCell(period4);
				table.addCell(period5);
				table.addCell(period6);
			}
			
			con.close();
			Document document = new Document();
			PdfWriter.getInstance(document, new FileOutputStream(fullPath));
			document.open();
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

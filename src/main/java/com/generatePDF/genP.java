package com.generatePDF;

import java.util.Date;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Date;

import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
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
import com.itextpdf.text.pdf.PdfContentByte;
import com.itextpdf.text.pdf.PdfDate;



public class genP {
	public static void generatePdf(String path, String course) {
		String fullPath = path + course + ".pdf";
		try {
			
			Connection con = CP.creatC();
			String q = "select * from ";
			
			course = "stock";	//for testing
			
			q += course;
			Statement stmt = con.createStatement();

			ResultSet set = stmt.executeQuery(q);
			
			
			Rectangle pageSize = new Rectangle(595, 842);
			Document document = new Document(pageSize);
			PdfWriter.getInstance(document,new FileOutputStream(fullPath) );
			//PdfWriter.getInstance(document, response.getOutputStream());
			document.open();
			
			
			float[] colsWidthnum = {0.025f, 1.8f, 0.025f}; // Code 1
			PdfPTable table = new PdfPTable(colsWidthnum);
			//Image image = Image.getInstance(path+"employee/payslip/view/fly-hind.jpg");
			table = new PdfPTable(colsWidthnum);
			table.getDefaultCell().setBorder(0);
			table.setWidthPercentage(100); // Code 2
			
//			Image img = Image.getInstance("E:\\generate_pdf\\logo1.png");
//			img.scaleToFit(60, 60);
			
			//table.addCell(img);
			table.addCell("");
			table.addCell(Image.getInstance("E:\\generate_pdf\\nitrrlogo2.png"));
			table.addCell("");
			//table.addCell(img);
			document.add(table);
			
			LineSeparator objectName = new LineSeparator();              
			document.add(objectName);
			
			document.add(new Paragraph("\n"));
			
			
			float[] colsWidth1 = {1f, 1f, 1f}; // Code 1
//			//Image image = Image.getInstance(path+"employee/payslip/view/fly-hind.jpg");
			table = new PdfPTable(colsWidth1);
			table.getDefaultCell().setBorder(0);
			table.setWidthPercentage(100); // Code 2
			
			Font fontSize_18 =  FontFactory.getFont(FontFactory.TIMES, 18f);
			Font fontStyle_Bold =  FontFactory.getFont(FontFactory.TIMES, 18f, Font.BOLD);
			//document.add(new Paragraph("This is fontSize_16", fontSize_16));
			
			table.addCell("");
			table.addCell(new Paragraph("Available Blood Stock", fontStyle_Bold));
			table.addCell("");
			document.add(table);
			
			
			document.add(new Paragraph("\n"));
			

			
			
			table.setHorizontalAlignment(Element.ALIGN_CENTER);//Code 3
			
			Font fontStyle_Bold_14 =  FontFactory.getFont(FontFactory.TIMES, 14f, Font.BOLD);
						
			float[] colsWidth2 = {0.2f, 1.2f, 0.7f, 0.4f};
			
			table = new PdfPTable(colsWidth2);
			PdfPCell c1 = new PdfPCell(new Phrase(""));
			table.addCell(c1);
			
			c1 = new PdfPCell(new Phrase("Blood Banks", fontStyle_Bold_14));
			table.addCell(c1);
			
			c1 = new PdfPCell(new Phrase("Bloodgroup", fontStyle_Bold_14));
			table.addCell(c1);
			
			c1 = new PdfPCell(new Phrase("Units", fontStyle_Bold_14));
			table.addCell(c1);
			
			int var=1;
			
			table.setHeaderRows(1);
			while (set.next()) {
				
				String bloodbank = set.getString(3);
				String bloodgroup = set.getString(1);
				String unit = set.getString(2);
								
				table.addCell(""+var);
				table.addCell(bloodbank);
				table.addCell(bloodgroup);
				table.addCell(unit);

				var++;
			}
			document.add(table);
			
			document.add(new Paragraph("\n"));
			           
			document.add(objectName);
			
			document.add(new Paragraph("\n"));
			
			
			float[] colsWidth3 = {1f, 1f, 1f}; // Code 1

			table = new PdfPTable(colsWidth1);
			table.getDefaultCell().setBorder(0);
			table.setWidthPercentage(100); // Code 2
			
			
			Font fontStyle_Italic_16 =  FontFactory.getFont(FontFactory.TIMES, 16f, Font.ITALIC);
			//document.add(new Paragraph("This is fontSize_16", fontSize_16));
			
			table.addCell("");
			table.addCell(new Paragraph("Donate Blood, Save Lives.", fontStyle_Italic_16));
			table.addCell("");
			document.add(table);
			
					
			document.add(new Paragraph("\n"));
			document.add(new Paragraph("\n"));
			document.add(new Paragraph("\n"));
			document.add(new Paragraph("\n"));
			document.add(new Paragraph("\n"));
			document.add(new Paragraph("\n"));
			document.add(new Paragraph("\n"));
			document.add(new Paragraph("\n"));
			document.add(new Paragraph("\n"));
			document.add(new Paragraph("\n"));
			document.add(new Paragraph("\n"));
			document.add(new Paragraph("\n"));
			document.add(new Paragraph("\n"));
			document.add(new Paragraph("\n"));
			document.add(new Paragraph("\n"));
			document.add(new Paragraph("\n"));
			document.add(new Paragraph("\n"));
			document.add(new Paragraph("\n"));
			document.add(new Paragraph("\n"));
			document.add(new Paragraph("\n"));
			document.add(new Paragraph("\n"));
			document.add(new Paragraph("\n"));
			document.add(new Paragraph("\n"));
			document.add(objectName);
			document.add(new Paragraph(new Date().toString()));
			con.close();
						
			document.close();
		} catch (Exception e) {
			System.out.println(e);
		}
	}

	public static void main(String[] args) throws FileNotFoundException, DocumentException {
		generatePdf("E:\\generate_pdf","bloodbank");
	}
}

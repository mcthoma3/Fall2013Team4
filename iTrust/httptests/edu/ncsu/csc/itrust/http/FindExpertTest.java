package edu.ncsu.csc.itrust.http;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.SQLException;
import com.meterware.httpunit.HttpUnitOptions;
import com.meterware.httpunit.WebConversation;
import com.meterware.httpunit.WebForm;
import com.meterware.httpunit.WebResponse;

public class FindExpertTest extends iTrustHTTPTest {
	
	public static final String location = "890 Oval Drive, Raleigh NC";

	protected void setUp() throws FileNotFoundException, SQLException, IOException{
		gen.clearAllTables();
		gen.standardData();	
		gen.uc47SetUp();
	}
	
	public void test100RadiusGeneral() throws Exception{
		HttpUnitOptions.setExceptionsThrownOnScriptError( false );
		WebConversation wc = login("1", "pw");
		WebResponse wr = wc.getCurrentPage();
		assertEquals("iTrust - Patient Home", wr.getTitle());
		wr = wr.getLinkWith("Find an Expert").click();
		assertEquals("iTrust - Find an Expert", wr.getTitle());
		WebForm form = wr.getFormWithID("mainForm");
		form.setParameter("specialty", "general physician");

		form.getSubmitButton("findExpert").click();		
		assertEquals("iTrust - Find an Expert", wr.getTitle());
	}
	
	public void test10RadiusSurgeon() throws Exception{
		HttpUnitOptions.setExceptionsThrownOnScriptError( false );
		WebConversation wc = login("1", "pw");
		WebResponse wr = wc.getCurrentPage();
		assertEquals("iTrust - Patient Home", wr.getTitle());
		wr = wr.getLinkWith("Find an Expert").click();
		assertEquals("iTrust - Find an Expert", wr.getTitle());
		WebForm form = wr.getFormWithID("mainForm");
		form.setParameter("specialty", "surgeon");

		form.getSubmitButton("findExpert").click();		
		assertEquals("iTrust - Find an Expert", wr.getTitle());
	}
	
	public void test500RadiusSurgeon() throws Exception{
		HttpUnitOptions.setExceptionsThrownOnScriptError( false );
		WebConversation wc = login("1", "pw");
		WebResponse wr = wc.getCurrentPage();
		assertEquals("iTrust - Patient Home", wr.getTitle());
		wr = wr.getLinkWith("Find an Expert").click();
		assertEquals("iTrust - Find an Expert", wr.getTitle());
		WebForm form = wr.getFormWithID("mainForm");
		form.setParameter("specialty", "surgeon");

		form.getSubmitButton("findExpert").click();		
		assertEquals("iTrust - Find an Expert", wr.getTitle());
	}
	
	public void test10RadiusHeartSurgeon() throws Exception{
		HttpUnitOptions.setExceptionsThrownOnScriptError( false );
		WebConversation wc = login("1", "pw");
		WebResponse wr = wc.getCurrentPage();
		assertEquals("iTrust - Patient Home", wr.getTitle());
		wr = wr.getLinkWith("Find an Expert").click();
		assertEquals("iTrust - Find an Expert", wr.getTitle());
		WebForm form = wr.getFormWithID("mainForm");
		form.setParameter("specialty", "heart surgeon");

		form.getSubmitButton("findExpert").click();		
		assertEquals("iTrust - Find an Expert", wr.getTitle());
	}
	
	public void test100RadiusOBGYN() throws Exception{
		HttpUnitOptions.setExceptionsThrownOnScriptError( false );
		WebConversation wc = login("1", "pw");
		WebResponse wr = wc.getCurrentPage();
		assertEquals("iTrust - Patient Home", wr.getTitle());
		wr = wr.getLinkWith("Find an Expert").click();
		assertEquals("iTrust - Find an Expert", wr.getTitle());
		WebForm form = wr.getFormWithID("mainForm");
		form.setParameter("specialty", "ob/gyn");

		form.getSubmitButton("findExpert").click();		
		assertEquals("iTrust - Find an Expert", wr.getTitle());
	}
	
	public void test10RadiusPediatrician() throws Exception{
		HttpUnitOptions.setExceptionsThrownOnScriptError( false );
		WebConversation wc = login("1", "pw");
		WebResponse wr = wc.getCurrentPage();
		assertEquals("iTrust - Patient Home", wr.getTitle());
		wr = wr.getLinkWith("Find an Expert").click();
		assertEquals("iTrust - Find an Expert", wr.getTitle());
		WebForm form = wr.getFormWithID("mainForm");
		form.setParameter("specialty", "pediatrician");

		form.getSubmitButton("findExpert").click();		
		assertEquals("iTrust - Find an Expert", wr.getTitle());
	}
	
	
	protected void tearDown() throws FileNotFoundException, SQLException, IOException{
		gen.uc47TearDown();
	}
}

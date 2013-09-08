package edu.ncsu.csc.itrust.action;

import java.util.ArrayList;
import java.util.List;
import junit.framework.TestCase;
import edu.ncsu.csc.itrust.beans.HospitalBean;
import edu.ncsu.csc.itrust.dao.DAOFactory;
import edu.ncsu.csc.itrust.testutils.TestDAOFactory;

public class FindExpertActionTest extends TestCase {
	private DAOFactory factory = TestDAOFactory.getTestInstance();

	private FindExpertAction fea;
		
	protected void setUp(){
		fea = new FindExpertAction(factory);
	}
	
	public void testFindExperts(){
		List<HospitalBean> hospitals = new ArrayList<HospitalBean>();
		HospitalBean realHospital = new HospitalBean();
		hospitals.add(realHospital);
		
		//Test a single result
		assertTrue(fea.findExperts(hospitals, "ob/gyn").size() == 1);
	}
	
	public void testFilterHospitals(){
		//Test with hospital with no lat/lng
		HospitalBean blankHospital = new HospitalBean();
		List<HospitalBean> hospitals = new ArrayList<HospitalBean>();
		hospitals.add(blankHospital);
		assertTrue(fea.filterHospitals(hospitals, 1L).size() == 0);

	}
	
	public void testCalculateDistance(){
		//Test for near location, less than 5 miles
		assertTrue(fea.calculateDistance(35.794443, 35.797349, -78.738906, -78.78047) < 5);
		//Test same location is (close to) 0
		assertTrue(fea.calculateDistance(35.794443, 35.794443, -78.738906, -78.738906) < .1);
	}

}

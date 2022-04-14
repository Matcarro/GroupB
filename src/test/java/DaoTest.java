import java.sql.Date;

import com.course.dao.impl.Dao;
import com.course.dao.impl.DaoImpl;

public class DaoTest {
public static void main(String[] args) {
	Dao dao=DaoImpl.getInstance();
	
	//System.out.println(dao.isCountry("Italy"));
	//System.out.println(dao.insertUser("FedericoCiao2", "Pippo123", "Pippo", "Sega",Date.valueOf("1980-04-22")));
	
	System.out.println(dao.insertTrain("OscarDeFilpo","Italy","LPPPPPRP"));
}
}

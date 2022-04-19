import java.sql.Date;
import java.util.ArrayList;

import com.course.dao.impl.Dao;
import com.course.dao.impl.DaoImpl;
import com.course.model.User;
import com.course.dao.CountryDao;
import com.course.dao.SearchDao;
import com.course.dao.TrainDao;

public class DaoTest {
public static void main(String[] args) {
	Dao dao=DaoImpl.getInstance();
	
 ArrayList<SearchDao> searches=new ArrayList<>(dao.getAllSearches());
	
	for(SearchDao s: searches)
		System.out.println(s.getSearch()+" "+s.getStandardCountry().getCountry()+" "+s.getMethod()+" "+s.getInsertDate());
	
	

}
}

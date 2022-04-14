import com.course.dao.impl.Dao;
import com.course.dao.impl.DaoImpl;

public class DaoTest {
public static void main(String[] args) {
	Dao dao=DaoImpl.getInstance();
	
	
	System.out.println(dao.getCountryBySearch("uk"));
}
}

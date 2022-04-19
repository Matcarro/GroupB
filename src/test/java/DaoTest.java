import java.sql.Date;
import java.util.ArrayList;

import com.course.dao.impl.Dao;
import com.course.dao.impl.DaoImpl;
import com.course.model.User;
import com.course.dao.TrainDao;

public class DaoTest {
public static void main(String[] args) {
	Dao dao=DaoImpl.getInstance();
	
	ArrayList<User> users=new ArrayList<>(dao.serviceUserView());
	
	for(User u: users)
		System.out.println(u.getUsername()+" "+u.getFirstName()+" "+u.getLastName()+" "+u.getTrainNumber());
	
}
}

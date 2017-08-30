package youngun.tis.user.admin.service;

import youngun.tis.user.admin.dao.FunctionDao;
import youngun.tis.user.admin.dao.FunctionDaoImpl;
import youngun.tis.user.admin.domain.User;

public class FunctionServiceImpl implements FunctionService {
	private FunctionDao functionDao;
	private User user;
	
	
	public FunctionServiceImpl(String userId, String gradeNum, String reason) {
		this.functionDao = new FunctionDaoImpl();
		this.user = new User(userId, gradeNum, reason);
	}


	@Override
	public void changeGrade() {
		functionDao.updateUser(user);
	}

}

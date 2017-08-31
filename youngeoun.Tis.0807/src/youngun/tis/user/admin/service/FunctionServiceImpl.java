package youngun.tis.user.admin.service;

import youngun.tis.user.admin.dao.FunctionDao;
import youngun.tis.user.admin.dao.FunctionDaoImpl;
import youngun.tis.user.admin.domain.User;

public class FunctionServiceImpl implements FunctionService {
	private FunctionDao functionDao;
	private User user;
	
	
	public FunctionServiceImpl(String userId, String gradeNum, String reason, int memberNum) {
		this.functionDao = new FunctionDaoImpl();
		this.user = new User(userId, gradeNum, reason, memberNum);
	}


	@Override
	public int changeGrade() {
		functionDao.updateUser(user);
		return saveBlackList(user);
	}


	@Override
	public int saveBlackList(User user) {
		return functionDao.insetBlackList(user);
	}

}

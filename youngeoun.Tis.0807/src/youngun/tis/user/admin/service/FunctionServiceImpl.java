package youngun.tis.user.admin.service;

import youngun.tis.user.admin.dao.FunctionDao;
import youngun.tis.user.admin.dao.FunctionDaoImpl;
import youngun.tis.user.admin.domain.User;

public class FunctionServiceImpl implements FunctionService {
	private FunctionDao functionDao;
	private User user;
	private int chack;
	
	
	public FunctionServiceImpl(String userId, String gradeNum, String reason, int memberNum) {
		this.functionDao = new FunctionDaoImpl();
		this.user = new User(userId, gradeNum, reason, memberNum);
		
	}

	public FunctionServiceImpl(String userId, String reason, int memberNum) {
		this.functionDao = new FunctionDaoImpl();
		this.user = new User(userId, reason, "f01", memberNum);
		
	}
	
	public FunctionServiceImpl(String userId, int memberNum) {
		this.functionDao = new FunctionDaoImpl();
		this.user = new User(userId, "g03", memberNum);
		
	}

	@Override
	public int changeGrade() {
		chack = functionDao.updateUser(user);
		saveBlackList(user);
		
		return chack;
	}

	@Override
	public int clearGrade() {
		chack = functionDao.updateUser(user);
		
		return chack;
	}

	@Override
	public int saveBlackList(User user) {
		System.out.println("seveblacklist : "+ user);
		return functionDao.insetBlackList(user);
	}

}

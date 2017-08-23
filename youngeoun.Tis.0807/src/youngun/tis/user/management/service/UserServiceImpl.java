package youngun.tis.user.management.service;

import youngun.tis.user.management.dao.UserDao;
import youngun.tis.user.management.dao.UserDaoImpl;
import youngun.tis.user.management.domain.User;

public class UserServiceImpl implements UserService {
	private UserDao userDao;
	private int check;
	private int userNum;
	
	private boolean flag = false; //성공여부
	
	public UserServiceImpl() {
		this.userDao = new UserDaoImpl();
	}

	@Override
	public User findUserAll() {
		// TODO Auto-generated method stub
		return null;
	}

	
	//아이디 중복
	@Override
	public boolean findUserId(String userId) {
		User vo = userDao.selectUserId(userId);
		/* 인터셉터로 빼기 */
				
		if(vo==null){
			vo = new User();
			vo.setFlag(false);
		}else{
			vo.setFlag(true);
		}
		return vo.isFlag();
	}
	
	
	//회원 가입
	@Override
	public boolean saveUser(User user) {
		System.out.println("serviceuser : " + user);
		
		check = userDao.insertUser(user);
		
		System.out.println("service : " + check);
		
		if(check!=1){
			flag=false;
		}else{
			userNum = findUserNum().getMemberNum();
			writeUser(userNum);
			replUser(userNum);
			flag=true;
		}
		return flag;
	}
	
	//마지막 유저번호 찾기
	public User findUserNum(){
		return userDao.selectUserNum();
		
	}
	
	//글작성 개수 공간생성
	public void writeUser(int userNum){
		userDao.createWriteSpace(userNum);
	}
	
	//댓글 개수 공간생성
	public void replUser(int userNum){
		userDao.createReplSpace(userNum);
	}
	
	@Override
	public boolean modifyUser(String userId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteUser(String userId) {
		// TODO Auto-generated method stub
		return false;
	}
}

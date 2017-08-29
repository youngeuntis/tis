package youngun.tis.user.login.service;

import youngun.tis.user.login.dao.LoginDao;
import youngun.tis.user.login.dao.LoginDaoImpl;
import youngun.tis.user.login.domain.Login;

public class LoginServiceImpl implements LoginService {
	private LoginDao loginDao;
	private String loginId; // 아이디 체크
	private String loginPw; // 비밀번호 체크
	private String email;   //
	
	public LoginServiceImpl(String email) {
		this.loginDao = new LoginDaoImpl();
		this.email = email;
	}

	
	public LoginServiceImpl(String loginId, String loginPw) {
		this.loginDao = new LoginDaoImpl();
		this.loginId = loginId;
		this.loginPw = loginPw;
	}


	@Override
	public Login findUserLogin(String userId){
		Login vo = loginDao.getUser(userId);
		
		//System.out.println("service"+vo.getUserId());
		
		/* 인터셉터로 빼기 */
		if(vo==null){
			vo = new Login();
			vo.setFlag(false);
		}else{
			if(vo.getUserId().equals(loginId) && vo.getPassword().equals(loginPw)){
				vo.setFlag(true);
				changUserDate(userId);
			}else{
				vo.setFlag(false);
			}
		}
		return vo;
	}
	
	@Override
	public void changUserDate(String userId){
		loginDao.updateUserUntilVisit(userId);
	}


	@Override
	public Login findUserPw(String userEmail) {
		int viewPw = 4;
		String tmp = "";
		String pw = "";
		Login vo = loginDao.getUserPw(userEmail);
		
		if(vo==null){
			vo = new Login();
			vo.setFlag(false);
		}else{
			if(vo.getEmail().equals(email)){
				for(int i=0; i<viewPw;i++){
					tmp += vo.getPassword().charAt(i);
				}
				pw = tmp + "*************";
				vo.setFlag(true);
				vo.setPassword(pw);
			}else{
				vo.setFlag(false);
			}
		}
		return vo;
	}
	
}
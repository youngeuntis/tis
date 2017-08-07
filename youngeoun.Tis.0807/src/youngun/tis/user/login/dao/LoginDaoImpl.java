package youngun.tis.user.login.dao;

import youngun.tis.config.Configuration;
import youngun.tis.user.login.dao.mapper.LoginMapper;
import youngun.tis.user.login.domain.Login;

public class LoginDaoImpl implements LoginDao {
	private LoginMapper loginMapper;
	
	public LoginDaoImpl(){
		this.loginMapper = Configuration.getMapper(LoginMapper.class);
	}
	
	public Login getUser(String userId){
		return loginMapper.getUser(userId);
	}
}

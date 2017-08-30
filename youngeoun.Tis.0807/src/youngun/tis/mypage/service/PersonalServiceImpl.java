package youngun.tis.mypage.service;

import youngun.tis.mypage.dao.PersonalDao;
import youngun.tis.mypage.dao.PersonalDaoImpl;
import youngun.tis.mypage.domain.Personal;

public class PersonalServiceImpl implements PersonalService {
	private PersonalDao personalDao;
	private Personal personal;
	
	
	public PersonalServiceImpl(int memberNum, String email) {
		this.personalDao = new PersonalDaoImpl();
		this.personal = new Personal(memberNum, email);
	}
	
	

	//이메일 수정
	@Override
	public void changeEmail() {
		personalDao.updateEmail(personal);
	}
	
}

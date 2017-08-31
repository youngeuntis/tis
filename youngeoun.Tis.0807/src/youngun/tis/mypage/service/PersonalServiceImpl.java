package youngun.tis.mypage.service;

import youngun.tis.mypage.dao.PersonalDao;
import youngun.tis.mypage.dao.PersonalDaoImpl;
import youngun.tis.mypage.domain.Personal;

public class PersonalServiceImpl implements PersonalService {
	private PersonalDao personalDao;
	private Personal personal;
	
	
	public PersonalServiceImpl(int memberNum, String email, String phone, String pw) {
		this.personalDao = new PersonalDaoImpl();
		this.personal = new Personal(memberNum, email, phone, pw);
	}
	
	

	//이메일 수정
	@Override
	public void changeEmail() {
		System.out.println("처리:"+personalDao.updateEmail(personal));
	}



	@Override
	public void changePhone() {
		System.out.println("처리:"+personalDao.updatePhone(personal));
	}
	
	
}

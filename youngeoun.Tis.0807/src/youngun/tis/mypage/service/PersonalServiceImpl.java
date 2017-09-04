package youngun.tis.mypage.service;

import youngun.tis.mypage.dao.PersonalDao;
import youngun.tis.mypage.dao.PersonalDaoImpl;
import youngun.tis.mypage.domain.Personal;

public class PersonalServiceImpl implements PersonalService {
	private PersonalDao personalDao;
	private Personal personal;
	
	
	public PersonalServiceImpl() {
		this.personalDao = new PersonalDaoImpl();
		
	}
	
	

	//이메일 수정
	@Override
	public void changeEmail(int memberNum,String email) {
		this.personal = new Personal();
		personal.setmemberNum(memberNum);
		personal.setUserEmail(email);
		System.out.println("처리:"+personalDao.updateEmail(personal));
	}



	@Override
	public void changePhone(int memberNum,String Phone) {
		this.personal = new Personal();
		personal.setmemberNum(memberNum);
		personal.setUserPh(Phone);
		System.out.println("처리:"+personalDao.updatePhone(personal));
	}



	@Override
	public void changePw(int memberNum,String pw) {
		this.personal = new Personal();
		personal.setmemberNum(memberNum);
		personal.setUserPw(pw);
		System.out.println("처리:"+personalDao.updatePw(personal));
		
	}
	
	
}

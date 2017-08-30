package youngun.tis.mypage.dao;

import youngun.tis.config.Configuration;
import youngun.tis.mypage.dao.mapper.PersonalMapper;
import youngun.tis.mypage.domain.Personal;

public class PersonalDaoImpl implements PersonalDao {
	private PersonalMapper personalMapper;
	
	
	
	public PersonalDaoImpl() {
		this.personalMapper = Configuration.getMapper(PersonalMapper.class);
	}

	@Override
	public Personal updateEmail(Personal personal) {
		return personalMapper.updateEmail(personal);
	}

	@Override
	public Personal updatePw(String memberNum) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Personal updatePh(String memberNum) {
		// TODO Auto-generated method stub
		return null;
	}

}

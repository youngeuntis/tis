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
	public int updateEmail(Personal personal) {
		return personalMapper.updateEmail(personal);
	}

	@Override
	public int updatePw(Personal personal) {
		return personalMapper.updatePw(personal);
	}

	@Override
	public int updatePhone(Personal personal) {
		return personalMapper.updatePhone(personal);
	}


}

package youngun.tis.mypage.dao.mapper;

import youngun.tis.mypage.domain.Personal;

public interface PersonalMapper {
	public int updateEmail(Personal personal);
	public int updatePw(Personal personal);
	public int updatePhone(Personal personal);
}

package youngun.tis.mypage.dao.mapper;

import youngun.tis.mypage.domain.Personal;

public interface PersonalMapper {
	public int updateEmail(Personal personal);
	public Personal updatePw(Personal personal);
	public Personal updatePhone(Personal personal);
}

package youngun.tis.mypage.dao.mapper;

import youngun.tis.mypage.domain.Personal;

public interface PersonalMapper {
	public int updateEmail(Personal personal);
	Personal updatePw(String memberNum);
	public Personal updatePhone(Personal personal);
}

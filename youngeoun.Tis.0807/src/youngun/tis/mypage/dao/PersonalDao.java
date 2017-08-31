package youngun.tis.mypage.dao;

import youngun.tis.mypage.domain.Personal;

public interface PersonalDao {
	public int updateEmail(Personal personal);
	Personal updatePw(String memberNum);
	Personal updatePh(String memberNum);
}

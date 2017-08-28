package youngun.tis.user.admin.service;

import youngun.tis.user.admin.domain.Page;

public interface PageService {
	Page getPage();
	boolean isPrev();
	boolean isNext();
	int getStartPage();
	int getEndPage();
	void getTotRowCnt(int number);
}
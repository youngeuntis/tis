package youngun.tis.user.admin.dao;

import youngun.tis.config.Configuration;
import youngun.tis.user.admin.dao.mapper.FunctionMapper;
import youngun.tis.user.admin.domain.User;

public class FunctionDaoImpl implements FunctionDao {
	private FunctionMapper functionMapper;
	
	
	public FunctionDaoImpl() {
		this.functionMapper = Configuration.getMapper(FunctionMapper.class);
	}


	@Override
	public int updateUser(User user) {
		return functionMapper.updateUser(user);
	}

}

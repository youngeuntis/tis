package youngun.tis.travel.blog.dao;

import java.util.List;

import youngun.tis.config.Configuration;
import youngun.tis.travel.blog.domain.Country;
import youngun.tis.travel.blog.mapper.TravelMapper;

public class TravelDao implements TravelMapper{
	private TravelMapper travelMapper;
	
	public TravelDao(){
		TravelMapper travelMapper = Configuration.getMapper(TravelMapper.class);
		this.travelMapper = travelMapper;
	}

	@Override
	public List<Country> getCountryList(String continentCode) {
		return travelMapper.getCountryList(continentCode);
	}

	@Override
	public Country searchParam(String nationCode) {
		return travelMapper.searchParam(nationCode);
	}
	
	
}

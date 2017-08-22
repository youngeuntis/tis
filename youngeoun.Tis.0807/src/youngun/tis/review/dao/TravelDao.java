package youngun.tis.review.dao;

import java.util.List;

import youngun.tis.config.Configuration;
import youngun.tis.review.domain.Country;
import youngun.tis.review.mapper.TravelMapper;

public class TravelDao implements TravelMapper {
	private TravelMapper travelMapper;
	
	public TravelDao(){
		TravelMapper travelMapper = Configuration.getMapper(TravelMapper.class);
		this.travelMapper = travelMapper;
	}

	@Override
	public List<Country> getCountryList(String continentCode) {
		return travelMapper.getCountryList(continentCode);
	}
	
}

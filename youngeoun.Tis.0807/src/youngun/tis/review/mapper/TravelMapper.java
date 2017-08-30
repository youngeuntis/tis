package youngun.tis.review.mapper;

import java.util.List;

import youngun.tis.review.domain.Country;

public interface TravelMapper {
	public List<Country> getCountryList(String continentCode);
	public Country searchParam(String nationCode);
}

package youngun.tis.travel.blog.mapper;

import java.util.List;

import youngun.tis.travel.blog.domain.Country;

public interface TravelMapper {
	public List<Country> getCountryList(String continentCode);
}

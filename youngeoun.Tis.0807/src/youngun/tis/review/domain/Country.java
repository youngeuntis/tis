package youngun.tis.review.domain;

public class Country {
	String nationalCode;
	String countryName;
	Country(){}
	public String getCountryName() {
		return countryName;
	}
	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}
	
	public String getNationalCode() {
		return nationalCode;
	}
	public void setNationalCode(String nationalCode) {
		this.nationalCode = nationalCode;
	}
	@Override
	public String toString() {
		return String.format("%s", countryName);
	}
}

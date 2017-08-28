package youngun.tis.travel.blog.service;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;

import youngun.tis.travel.blog.dao.BlogDao;
import youngun.tis.travel.blog.dao.BlogDaoImpl;
import youngun.tis.travel.blog.domain.Blog;
import youngun.tis.travel.blog.domain.Country;
import youngun.tis.travel.blog.domain.Wish;
import youngun.tis.travel.blog.mapper.BlogMapper;

public class SearchService {
	
	private BlogDao blogDao;
	
	public SearchService(){}
	public SearchService(BlogDao blogDao){
		this.blogDao = blogDao;
	}
	
	public String transferCode(List<Country> countries, String nationName){
		String nationCode = "";
		for(Country nation : countries){
			if(nation.getCountryName().equals(nationName)){
					nationCode = "%"+nation.getNationalCode()+"%";
			}
		}
		return nationCode;
	}
	
	public Blog searchBlog(List<Blog> blogs, String blogNum){
		Blog selectBlog = null;
		for(int i=0; i < blogs.size(); i++){
  			
  			if(blogs.get(i).getBlogNum()==Integer.parseInt(blogNum)){
  					selectBlog = blogs.get(i);
  			}
  		}
		return selectBlog;
	}
	public void writeBlog(Blog blog,String title, String content,String continent, String country,Matcher m, int memberNum){
		blog.setContinentCode(continent);
		blog.setNationCode(country);
		blog.setBlogTitle(title);
		blog.setBlogContent(content);
		blog.setMemberNum(memberNum);
		String strImg = "";
		int repeat =0;
		while(m.find()){
			if(repeat>=1) strImg += ","+ m.group();
			else strImg = m.group();
			repeat++;
		}
		blog.setImg(strImg);
	}
	public void modifyBlog(Blog blog){
		blogDao.updateInfo(blog);
	}
	
	public void eleminateBlog(Blog blog){
		blogDao.deleteBlog(blog);
	}
	
	public void addWish(Wish wish){
		blogDao.insertWish(wish);
	}
	
	public Wish configureWish(int memberNum, int blogNum){
		List<Wish> wishLists = blogDao.selectWish(memberNum);
		Wish wish = null;
		for(int i=0; i<wishLists.size(); i++){
			if(wishLists.get(i).getInfoNum() == blogNum)
				wish = wishLists.get(i);
		}
		return wish;
	}
	
	public int deleteWish(Wish wish){
		return blogDao.deleteWish(wish);
	}
	
	//조회수순으로 정렬하기
	public List<Blog> sortArrayByViewCnt(List<Blog> blogList){
		//배열 복사
		List<Blog> blogListNew = new ArrayList<>();
		for(int i=0; i<blogList.size(); i++){
			blogListNew.add(blogList.get(i));
			System.out.println(blogListNew);
		}
		//조회 순으로 정렬
		for(int j=0; j<blogListNew.size()-1; j++){
			for(int i=0; i<blogListNew.size(); i++){
				if((i+1)==blogListNew.size()) break;
				if(blogListNew.get(i).getHits() < blogListNew.get(i+1).getHits()){
					Blog tmp = blogListNew.get(i);
					blogListNew.set(i, blogListNew.get(i+1));
					blogListNew.set(i+1, tmp);
				}
			}
		}
		System.out.println(blogListNew);
		
		return blogListNew;
	}
}

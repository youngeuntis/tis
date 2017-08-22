package youngun.tis.travel.blog.dao;

import java.util.List;

import youngun.tis.config.Configuration;
import youngun.tis.travel.blog.domain.Blog;
import youngun.tis.travel.blog.domain.Wish;
import youngun.tis.travel.blog.mapper.BlogMapper;

public class BlogDaoImpl implements BlogDao{
	private BlogMapper blogMapper;
	
	public BlogDaoImpl(){
		BlogMapper blogMapper = Configuration.getMapper(BlogMapper.class);
		this.blogMapper = blogMapper;
		
	}
	@Override
	public int insertBlog(Blog blog) {
		return blogMapper.insertBlog(blog);
	}

	@Override
	public int insertInfo(Blog blog) {
		return blogMapper.insertInfo(blog);
	}

	@Override
	public List<Blog> getBlogList(String country) {
		return blogMapper.getBlogList(country);
	}

	@Override
	public List<Blog> getBlogListNoPara() {
		return blogMapper.getBlogListNoPara();
	}

	@Override
	public List<Blog> getBlogListContinent(String continent) {
		return blogMapper.getBlogListContinent(continent);
	}
	@Override
	public int updateInfo(Blog blog) {
		return blogMapper.updateInfo(blog);
	}
	@Override
	public int updateHits(Blog blog) {
		return blogMapper.updateHits(blog);
	}
	@Override
	public int deleteBlog(Blog blog) {
		return blogMapper.deleteBlog(blog);
	}
	@Override
	public int insertWish(int blogNum) {
		return blogMapper.insertWish(blogNum);
	}
	@Override
	public List<Wish> selectWish(int memberNum) {
		return blogMapper.selectWish(memberNum);
	}
	@Override
	public int deleteWish(Wish wish) {
		return blogMapper.deleteWish(wish);
	}
	

}

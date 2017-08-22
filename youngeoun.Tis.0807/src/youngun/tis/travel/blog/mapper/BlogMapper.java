package youngun.tis.travel.blog.mapper;

import java.util.List;

import youngun.tis.travel.blog.domain.Blog;
import youngun.tis.travel.blog.domain.Wish;

public interface BlogMapper {
	public int insertBlog(Blog blog);
	public int insertInfo(Blog blog);
	public List<Blog> getBlogList(String country);
	public List<Blog> getBlogListNoPara();
	public List<Blog> getBlogListContinent(String continent);
	public int updateInfo(Blog blog);
	public int updateHits(Blog blog);
	public int deleteBlog(Blog blog);
	public int insertWish(int blogNum);
	public List<Wish> selectWish(int memNum);
	public int deleteWish(Wish wish);
}

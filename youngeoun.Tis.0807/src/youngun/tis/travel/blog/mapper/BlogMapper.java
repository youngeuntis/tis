package youngun.tis.travel.blog.mapper;

import java.util.List;

import youngun.tis.travel.blog.domain.Blog;
import youngun.tis.travel.blog.domain.Wish;
import youngun.tis.user.login.domain.Login;

public interface BlogMapper {
	public int insertBlog(Blog blog);
	public int insertInfo(Blog blog);
	public List<Blog> getBlogList(String country);
	public List<Blog> getBlogListNoPara();
	public List<Blog> getBlogListContinent(String continent);
	public int updateInfo(Blog blog);
	public int updateHits(Blog blog);
	public int deleteBlog(Blog blog);
	public int insertWish(Wish wish);
	public List<Wish> selectWish(int memNum);
	public int deleteWish(Wish wish);
	public Login getUser(int userNum);
}

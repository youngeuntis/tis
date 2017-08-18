package youngun.tis.travel.blog.mapper;

import java.util.List;

import youngun.tis.travel.blog.domain.Blog;

public interface BlogMapper {
	public int insertBlog(Blog blog);
	public int insertInfo(Blog blog);
	public List<Blog> getBlogList(String country);
	public List<Blog> getBlogListNoPara();
	public Blog selectBlog(Blog blog);
	public List<Blog> getBlogListContinent(String continent);
}

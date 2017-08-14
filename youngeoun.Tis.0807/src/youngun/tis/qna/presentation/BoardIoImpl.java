package youngun.tis.qna.presentation;

import java.util.List;

import youngun.tis.qna.domain.CODE;
import youngun.tis.qna.domain.Page;
import youngun.tis.qna.domain.Post;
import youngun.tis.qna.service.PostService;


public class BoardIoImpl implements BoardIo {
	private PostService postService;
	
	public BoardIoImpl(PostService  postService){
		this.postService = postService;
	}
	
	public void listPosts() {
		List<Post> posts = postService.listPosts(new Page());
		if(posts.size() != 0)
			for(int i=0; i<posts.size(); i++){
				System.out.println(posts.get(i));
			}
		//else Console.info("게시판 불러오기 실패.");
	}

	@Override
	public void write() {
		Post post = null;
		Console.in("작성자 이름을 입력.");
		String writer = Console.inStr();
		Console.in("제목을 입력.");
		String title = Console.inStr();
		Console.in("내용을 입력.");
		String content = Console.inStr();
		
		if(writer.equals("0")||title.equals("0")||content.equals("0")){
			Console.info("게시물 쓰기 취소.");
			return;
		}
	
		if(postService.write(new Post(writer,title,content)))
			Console.info("게시물 쓰기 성공.");
		else Console.err("게시물 쓰기 실패.");
		
	}

	@Override
	public void updateBoard() {	
		Post post = null;
		do{
			Console.in("수정할 게시물 번호를 입력하세요.");
			int postNo = Console.inNum();
			if(postNo == 0){
				Console.info("게시물 없음.");
				return;
			}
			post = postService.findPost(postNo);
			if(post == null) Console.err("게시물 없음..");
		}while (post ==null);
		
		Console.in("수정할 제목 입력.");
		post.setTitle((Console.inStr()));
		Console.in("수정할 내용 입력.");
		post.setContent((Console.inStr()));
		if(postService.updateBoard(post)) Console.info("게시물 수정 성공.");
		else Console.err("게시물 수정 실패.");
	}

	@Override
	public void delBoard() {	
		Post post= null;
		int postNo = 0;
		do{
			Console.in("삭제할 게시물 번호를 입력.");
			postNo = Console.inNum();
			if(postNo ==0){
				Console.info("게시물 없음.");
				return;
			}
			post = postService.findPost(postNo);
			if(post == null) Console.err("게시물 없음..");
		}while (post == null);
		
		if(postService.delBoard(postNo)) Console.info("게시물 삭제 성공");
		else Console.err("게시물 삭제 실패");
	}


	public void getUser(){
		Post post = null;
		int postNo = 0;
		System.out.print("가져올 게시판번호?");
		postNo = Console.inNum();
		post = postService.findPost(postNo);
		System.out.println(post);
	}

	
}

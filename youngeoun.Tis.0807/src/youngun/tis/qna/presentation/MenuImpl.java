package youngun.tis.qna.presentation;

import youngun.tis.qna.domain.CODE;
import youngun.tis.qna.presentation.Console;
import youngun.tis.qna.presentation.BoardIo;

public class MenuImpl implements Menu {
	private String[] menuItem;
	private String menu="";
	private BoardIo BoardIo;
	
	public MenuImpl(String[] menuItem, BoardIo BoardIo){
		this.menuItem = menuItem;
		this.BoardIo = BoardIo;
		
		for(int i=0; i<menuItem.length; i++)
			this.menu += (i+1) + "." + menuItem[i] + ",";
		this.menu += "0.종료";
	}
	
	@Override
	public void play() {
		int choice = 0;
		while((choice = choose()) !=0){
			switch(choice){
			case CODE.BOARD_VIEW : BoardIo.listPosts(); break;
			case CODE.WRITE_BOARD : BoardIo.write(); break;
			case CODE.UPDATE_BOARD : BoardIo.updateBoard(); break;
			case CODE.DEL_BOARD : BoardIo.delBoard();
			case 7 : BoardIo.getUser();
			}
		}
	}
	
	private int choose(){
		boolean isMenuNum = false;
		int choice = 0;
		do{
			Console.in(menu);
			choice = Console.inNum();
			if(choice < 0 || choice > 8)
				Console.err("게시물 없음.");
			else isMenuNum = true;
		}while(!isMenuNum);
		return choice;
	}
}

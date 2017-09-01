package youngun.tis.user.admin.domain;

import java.text.SimpleDateFormat;
import java.util.Date;

public class User {
	SimpleDateFormat sdf = new SimpleDateFormat("yy. MM. dd");
	private String userId;     //아이디
	private String userName;   //이름
	private int memberNum;     //
	private String blackReason;
	private String untilvisit;
	private String joinDate;
	private String writeCount;
	private String replCount;
	private String visitCount;
	private String gradeNum;
	
	
	
	public User(String userId, String blackReason, String gradeNum, int memberNum) {
		this.userId = userId;
		this.blackReason = blackReason;
		this.gradeNum = gradeNum;
		this.memberNum = memberNum;
	}

	public User(String userId, String gradeNum, int memberNum) {
		this.userId = userId;
		this.gradeNum = gradeNum;
		this.memberNum = memberNum;
	}
	
	public String getGradeNum() {
		return gradeNum;
	}

	public void setGradeNum(String gradeNum) {
		this.gradeNum = gradeNum;
	}

	public String getVisitCount() {
		return visitCount;
	}

	public void setVisitCount(String visitCount) {
		this.visitCount = visitCount;
	}

	public String getReplCount() {
		return replCount;
	}

	public void setReplCount(String replCount) {
		this.replCount = replCount;
	}

	public String getWriteCount() {
		return writeCount;
	}

	public void setWriteCount(String writeCount) {
		this.writeCount = writeCount;
	}

	public String getUntilvisit() {
		return untilvisit;
	}

	public void setUntilvisit(Date untilvisit) {
		this.untilvisit = sdf.format(untilvisit);
	}

	public String getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(Date joinDate) {
		this.joinDate = sdf.format(joinDate);
	}

	public String getBlackReason() {
		return blackReason;
	}

	public void setBlackReason(String blackReason) {
		this.blackReason = blackReason;
	}

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public User(String userId, String userName) {
		super();
		this.userId = userId;
		this.userName = userName;
	}
		
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}

	public int getMemberNum() {
		return memberNum;
	}

	public void setMemberNum(int memberNum) {
		this.memberNum = memberNum;
	}


	@Override
	public String toString() {
		return "User [sdf=" + sdf + ", userId=" + userId + ", userName=" + userName + ", memberNum=" + memberNum
				+ ", blackReason=" + blackReason + ", untilvisit=" + untilvisit + ", joinDate=" + joinDate
				+ ", writeCount=" + writeCount + ", replCount=" + replCount + ", visitCount=" + visitCount
				+ ", gradeNum=" + gradeNum + "]";
	}
	
}

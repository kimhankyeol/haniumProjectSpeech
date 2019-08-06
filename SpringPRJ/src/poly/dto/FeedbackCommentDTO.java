package poly.dto;

public class FeedbackCommentDTO {
	
    private String commentNo;
	private String feedbackNo;
	private String commenttext;
	private String regDate;
	private String regNo;
	private String updDate;
	private String updNo;
	
	
	
	public String getCommentNo() {
		return commentNo;
	}
	public void setCommentNo(String commentNo) {
		this.commentNo = commentNo;
	}
	public String getFeedbackNo() {
		return feedbackNo;
	}
	public void setFeedbackNo(String feedbackNo) {
		this.feedbackNo = feedbackNo;
	}
	public String getCommenttext() {
		return commenttext;
	}
	public void setCommenttext(String commenttext) {
		this.commenttext = commenttext;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public String getRegNo() {
		return regNo;
	}
	public void setRegNo(String regNo) {
		this.regNo = regNo;
	}
	public String getUpdDate() {
		return updDate;
	}
	public void setUpdDate(String updDate) {
		this.updDate = updDate;
	}
	public String getUpdNo() {
		return updNo;
	}
	public void setUpdNo(String updNo) {
		this.updNo = updNo;
	}
	
	@Override
	public String toString() {
		return "FeedbackCommentDTO [commentNo=" + commentNo + ", feedbackNo=" + feedbackNo + ", commenttext="
				+ commenttext + ", regDate=" + regDate + ", regNo=" + regNo + ", updDate=" + updDate + ", updNo="
				+ updNo + "]";
	}
	
	
}
package poly.dto;

public class ResFeedbackDTO {
/*
 * 테이블 정보랑 연결지어서 생각을 해야하는데...
 */
	private String feedback_no;
	private String f_title;
	private String qset_no;
	private String qset_title;
	private String content;
	private String regdate;
	private String regno;
	private String upddate;
    private String updno;
	
	public String getFeedback_no() {
		return feedback_no;
	}
	public void setFeedback_no(String feedback_no) {
		this.feedback_no = feedback_no;
	}
	public String getF_title() {
		return f_title;
	}
	public void setF_title(String f_title) {
		this.f_title = f_title;
	}
	public String getQset_no() {
		return qset_no;
	}
	public void setQset_no(String qset_no) {
		this.qset_no = qset_no;
	}
	public String getQset_title() {
		return qset_title;
	}
	public void setQset_title(String qset_title) {
		this.qset_title = qset_title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getRegno() {
		return regno;
	}
	public void setRegno(String regno) {
		this.regno = regno;
	}
	public String getUpddate() {
		return upddate;
	}
	public void setUpddate(String upddate) {
		this.upddate = upddate;
	}
	public String getUpdno() {
		return updno;
	}
	public void setUpdno(String updno) {
		this.updno = updno;
	}
    
	
}
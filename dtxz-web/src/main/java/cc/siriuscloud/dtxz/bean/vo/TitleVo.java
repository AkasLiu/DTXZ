package cc.siriuscloud.dtxz.bean.vo;

/**
 * 
 * @author beanSeedling
 *  答题和创题的vo类
 *
 */
public class TitleVo {
	private String examId;			// 考场ID
	private String epId;	// 试卷ID
	private String exerciseId;		// 试题I
	private String title;					// 各类title
	private int pageNum;			// 页数
	private int page;					// 答题页面的页码
	
	private int flag;						// 结束考试的标志
	
	private String type;				// 类型
	
	private String aOtpion;			// a选项
	private String bOtpion;			// b选项
	private String cOtpion;			// c选项
	private String dOtpion;			// d选项
	
	private String radioAnswer;			// 单选题答案
	private String[] checkAnswer;		// 多选题答案
	private String textAnswer;				// 填空题答案
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "examId: " + examId + "epId: " + epId + "exerciseId" + exerciseId + "pageNum" + pageNum
				+ "page" + page + "flag " + flag + "type" + type + "aOtpion" + aOtpion + "bOtpion" + bOtpion
				+ "cOtpion" + cOtpion + "dOtpion" + dOtpion +  "textAnswer" + textAnswer; 
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	public int getFlag() {
		return flag;
	}
	public void setFlag(int flag) {
		this.flag = flag;
	}
	
	public String getEpId() {
		return epId;
	}
	public void setEpId(String epId) {
		this.epId = epId;
	}
	
	
	public String getExamId() {
		return examId;
	}
	public void setExamId(String examId) {
		this.examId = examId;
	}
	
	public String getExerciseId() {
		return exerciseId;
	}
	public void setExerciseId(String exerciseId) {
		this.exerciseId = exerciseId;
	}
	
	
	public String getaOtpion() {
		return aOtpion;
	}
	public void setaOtpion(String aOtpion) {
		this.aOtpion = aOtpion;
	}
	public String getbOtpion() {
		return bOtpion;
	}
	public void setbOtpion(String bOtpion) {
		this.bOtpion = bOtpion;
	}
	public String[] getCheckAnswer() {
		return checkAnswer;
	}
	public void setCheckAnswer(String[] checkAnswer) {
		this.checkAnswer = checkAnswer;
	}
	public String getcOtpion() {
		return cOtpion;
	}
	public void setcOtpion(String cOtpion) {
		this.cOtpion = cOtpion;
	}
	public String getdOtpion() {
		return dOtpion;
	}
	public void setdOtpion(String dOtpion) {
		this.dOtpion = dOtpion;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	public String getRadioAnswer() {
		return radioAnswer;
	}
	public void setRadioAnswer(String radioAnswer) {
		this.radioAnswer = radioAnswer;
	}
	public String getTextAnswer() {
		return textAnswer;
	}
	public void setTextAnswer(String textAnswer) {
		this.textAnswer = textAnswer;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
}

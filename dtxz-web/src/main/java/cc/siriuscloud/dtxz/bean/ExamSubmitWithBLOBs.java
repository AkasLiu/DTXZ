package cc.siriuscloud.dtxz.bean;

public class ExamSubmitWithBLOBs extends ExamSubmit {
    private String ecAnswer;

    private String smAnswer;

    public String getEcAnswer() {
        return ecAnswer;
    }

    public void setEcAnswer(String ecAnswer) {
        this.ecAnswer = ecAnswer == null ? null : ecAnswer.trim();
    }

    public String getSmAnswer() {
        return smAnswer;
    }

    public void setSmAnswer(String smAnswer) {
        this.smAnswer = smAnswer == null ? null : smAnswer.trim();
    }
}
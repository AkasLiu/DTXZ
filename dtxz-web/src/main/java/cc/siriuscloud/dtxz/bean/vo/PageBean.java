package cc.siriuscloud.dtxz.bean.vo;

import java.util.List;

public class PageBean<T> {

	@Override
	public String toString() {
		return "PageBean [pageNum=" + pageNum + ", pageSize=" + pageSize + ", totalRecord=" + totalRecord
				+ ", startIndex=" + startIndex + ", totalPage=" + totalPage + ", start=" + start + ", end=" + end
				+ ", indexRang=" + indexRang + ", data=" + data + "]";
	}






	//必要数据
	private int pageNum;	//当前第几页
	private int pageSize;	//每页显示数据条数
	private int totalRecord;//总记录数
	
	
	//人造数据
	private int startIndex; //开始索引
	private int	totalPage;	//总页数
	private int start;		//动态显示条的开始节点
	private int end;		//动态显示条的结束为止
	private int indexRang=10;//索引范围
	
	
	//默认值
	public static int def_indexRang=10;
	public static int def_pageSize=10;
	
	
	//封装数据集
	private List<T> data;
	
	
	public PageBean(){
		
		this.pageNum = 1;	
		this.pageSize = def_pageSize;
	}
	
	
	
	
	
	
	/**
	 * @param pageNum 	当前页码，>0
	 * @param pageSize	页大小	>0
	 * @param totalRecord	总记录数	>0
	 * @param indexRang		导航范围	>0
	 */
	public PageBean(int pageNum, int pageSize, int totalRecord,int indexRang) { 
		
		this.pageNum = (pageNum>0)?pageNum:1;		//当前页,>0
		this.pageSize = pageSize;	//页大小>0
		this.totalRecord = totalRecord;//总记录数>0
		this.indexRang=indexRang;		//索引范围>0
		
		buildParams();
	}
	
	
	
	public void buildParams(){

		
		//总页数
		this.totalPage=((this.totalRecord+this.pageSize)%this.pageSize==0)?
				this.totalRecord/this .pageSize:this.totalRecord/this.pageSize+1;
		
		//开始索引
		this.startIndex=(this.pageNum-1)*this.pageSize;

		
		//左边有多少个导航点
		int left=(this.indexRang-1)/2;
		if(this.pageNum-left<1){
			left=this.pageNum-1;
		}
		
		//右边有多少个导航点
		int right=this.indexRang-left-1;
		if(this.pageNum+right>this.totalPage){
			right=totalPage-this.pageNum;
		}
		
		this.start=this.pageNum-left;
		this.end=this.pageNum+right;
	
		
	}
	
	
	
	
	
	
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getTotalRecord() {
		return totalRecord;
	}
	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
	}
	public int getStartIndex() {
		return startIndex;
	}
	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}




	public int getIndexRang() {
		return indexRang;
	}




	public void setIndexRang(int indexRang) {
		this.indexRang = indexRang;
	}


	public List<T> getData() {
		return data;
	}



	public void setData(List<T> data) {
		this.data = data;
	}

	public void setTotalRecord(Long totalRecord2) {
		
		this.totalRecord=totalRecord2.intValue();
		
	}
	
	
	
	
	
}

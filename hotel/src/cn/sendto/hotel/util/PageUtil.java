package cn.sendto.hotel.util;

import java.util.List;

/**
 * 封装界面显示分页的信息
 * @author eiah
 * @param <T>
 */
public class PageUtil<T> {
	// 当前页数(第几页)
	private int pageIndex = 1;
	// 显示分页的数字序号
	private int[] pageNums;
	// 开头是否有省略号
	private boolean hasPreOmit = false;
	// 结尾是否有省略号
	private boolean hasSuffixOmit = false;

	// 每页显示条数
	private int pageSize = 5;
	// 总条数
	private int recordCount;
	// 总页数
	private int pageCount;
	// 页面中显示的数据
	List<T> list;
	// 分页查询条件
	private String where;

	//获取当前页，第N页为N
	public int getPageIndex() {
		return pageIndex;
	}

	// 设置当前页，第N页为N
	public void setPageIndex(int pageIndex) {
		if (pageIndex <= 1) {
			this.pageIndex = 1;
		} else if (pageIndex > getPageCount()) {
			this.pageIndex = getPageCount();
		} else {
			this.pageIndex = pageIndex;
		}
	}

	// 获取页面显示的页码数组
	public int[] getPageNums() {
		return pageNums;
	}

	// 设置页码显示的页码数组
	public void setPageNums(int displayPageNumber) {
		if (this.getPageCount() <= displayPageNumber) {
			pageNums = new int[this.getPageCount()];
			for (int i = 1; i <= this.getPageCount(); i++) {
				pageNums[i - 1] = i;
			}
			this.setHasPreOmit(false);
			this.setHasSuffixOmit(false);
		} 
		//this.getPageIndex()=6,this.getPageCount()=15,displayPageNumber=5
		else if (this.getPageIndex() - displayPageNumber / 2 > 1	&& this.getPageIndex() + displayPageNumber / 2 < this.getPageCount()) {
			pageNums = new int[displayPageNumber];
			for (int i = this.getPageIndex() - displayPageNumber / 2, _index = 0; i <= this
					.getPageIndex() + displayPageNumber / 2; i++, _index++) {
				pageNums[_index] = i;
			}
			this.setHasPreOmit(true);
			this.setHasSuffixOmit(true);
		} else if (this.getPageIndex() - displayPageNumber / 2 > 1
				&& this.getPageIndex() + displayPageNumber / 2 >= this
						.getPageCount()) {
			pageNums = new int[displayPageNumber];
			for (int i = this.getPageCount() - displayPageNumber + 1, _index = 0; i <= this
					.getPageCount(); i++, _index++) {
				pageNums[_index] = i;
			}
			this.setHasPreOmit(true);
			this.setHasSuffixOmit(false);
		} else {
			pageNums = new int[displayPageNumber];
			for (int i = 1; i <= displayPageNumber; i++) {
				pageNums[i - 1] = i;
			}
			this.setHasPreOmit(false);
			this.setHasSuffixOmit(true);
		}

	}

	// 获取开头是否有省略号
	public boolean isHasPreOmit() {
		return hasPreOmit;
	}

	// 设置开头是否有省略号
	public void setHasPreOmit(boolean hasPreOmit) {
		this.hasPreOmit = hasPreOmit;
	}

	// 获取结尾是否有省略号
	public boolean isHasSuffixOmit() {
		return hasSuffixOmit;
	}

	// 设置结尾是否有省略号
	public void setHasSuffixOmit(boolean hasSuffixOmit) {
		this.hasSuffixOmit = hasSuffixOmit;
	}

	// 获取每页大小
	public int getPageSize() {
		return pageSize;
	}

	// 设置每页大小
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	// 获取纪录总数
	public int getRecordCount() {
		return recordCount;
	}

	// 设置纪录总数
	public void setRecordCount(int recordCount) {
		this.recordCount = recordCount;
	}

	// 获取总页数
	public int getPageCount() {
		this.pageCount=(recordCount + pageSize - 1)/pageSize;
		return this.pageCount;
	}

	public List<T> getList() {
		return list;
	}

	public void setList(List<T> list) {
		this.list = list;
	}

	public String getWhere() {
		return where;
	}

	public void setWhere(String where) {
		this.where = where;
	}

}

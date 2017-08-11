package cn.sendto.hotel.tag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class PageTaglib extends TagSupport {
	private static final long serialVersionUID = 1L;
	// 标签的属性必须配置get，set方法
	private String actionName;
	private String pageSize;
	private String pageIndex;
	private String recordCount;
	private int[] pageNums = new int[0];
	private boolean hasPreOmit;
	private boolean hasSuffixOmit;
	private String where;

	public String getActionName() {
		return actionName;
	}

	public void setActionName(String actionName) {
		this.actionName = actionName;
	}

	public String getPageSize() {
		return pageSize;
	}

	public void setPageSize(String pageSize) {
		this.pageSize = pageSize;
	}

	public String getPageIndex() {
		return pageIndex;
	}

	public void setPageIndex(String pageIndex) {
		this.pageIndex = pageIndex;
	}

	public String getRecordCount() {
		return recordCount;
	}

	public void setRecordCount(String recordCount) {
		this.recordCount = recordCount;
	}

	public int[] getPageNums() {
		return pageNums;
	}

	public void setPageNums(int[] pageNums) {
		this.pageNums = pageNums;
	}

	public boolean isHasPreOmit() {
		return hasPreOmit;
	}

	public void setHasPreOmit(boolean hasPreOmit) {
		this.hasPreOmit = hasPreOmit;
	}

	public boolean isHasSuffixOmit() {
		return hasSuffixOmit;
	}

	public void setHasSuffixOmit(boolean hasSuffixOmit) {
		this.hasSuffixOmit = hasSuffixOmit;
	}

	public String getWhere() {
		return where;
	}

	public void setWhere(String where) {
		this.where = where;
	}

	@Override
	public int doStartTag() throws JspException {
		try {
			JspWriter out = this.pageContext.getOut();
			int size = Integer.parseInt(pageSize);
			int index = Integer.parseInt(pageIndex);
			int recordCounts = Integer.parseInt(recordCount);
			int pages = recordCounts / size;
			if (recordCounts % size != 0) {
				pages++;
			}

			out.print(
					"<table width=\"450\" align=\"center\" style=\"border:none\" cellspacing=\"0\" cellpadding=\"0\">");
			out.print("<tr>");
			out.print("<form action=\"" + actionName + where + "\">");
			out.print("<td height=\"25\" align=\"center\">");
			out.print("<a class=\"pagelinkstyle1\" href=\"" + actionName + "?pageIndex=1" + where + "\">首页</a>");
			if (hasPreOmit) {
				out.print("<span class=\"pointstyle\">...</span>");
			}
			for (int i = 0; i < pageNums.length; i++) {
				if (index == pageNums[i]) {
					out.print("<span class=\"currentpagestyle\">" + pageNums[i] + "</span>");
				} else {
					out.print("<a class=\"pagelinkstyle\" href=\"" + actionName + "?pageIndex=" + pageNums[i] + where
							+ "\">" + pageNums[i] + "</a>");
				}
			}
			if (hasSuffixOmit) {
				out.print("<span class=\"pointstyle\">...</span>");
			}
			out.print("<a class=\"pagelinkstyle1\" href=\"" + actionName + "?pageIndex=" + pages + where + "\">尾页</a>");
			out.print("<input type=\"text\" name=\"pageIndex\" style=\"width:40px\" value=\"" + pageIndex + "\" />");
			out.print("<input class='button' type=\"submit\" value=\"GO\"/>");
			out.print("</td>");
			out.print("</form>");
			out.print("</tr>");
			out.print("</table>");

		} catch (Exception e) {
			e.printStackTrace();
		}

		return SKIP_BODY;

	}

}

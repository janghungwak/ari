package kr.co.ari.common.util;

import egovframework.rte.ptl.mvc.tags.ui.pagination.AbstractPaginationRenderer;

public class CustomPaginationRenderer extends AbstractPaginationRenderer {
	public CustomPaginationRenderer() {
		firstPageLabel = "<li><a href=\"#\" onclick=\"{0}({1}); return false;\">처음</a></li>&#160;"; 
		previousPageLabel = "<li><a href=\"#\" onclick=\"{0}({1}); return false;\">이전</a></li>&#160;";
		currentPageLabel = "<li><a><strong>{0}</strong></a></li>&#160;";
		otherPageLabel = "<li><a href=\"#\" onclick=\"{0}({1}); return false;\">{2}</a></li>&#160;";
		nextPageLabel = "<li><a href=\"#\" onclick=\"{0}({1}); return false;\">다음</a></li>&#160;";
		lastPageLabel = "<li><a href=\"#\" onclick=\"{0}({1}); return false;\">마지막</a></li>&#160;";
	}
}

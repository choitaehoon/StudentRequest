package net.student.dto;

import java.util.ArrayList;
import java.util.List;

public class Pagination {
	int currentPage = 1;
	int pageSize = 5;
	int recordCount;
	int id;

	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getRecordCount() {
		return recordCount;
	}
	public void setRecordCount(int recordCount) {
		this.recordCount = recordCount;
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	/* query string과 같은 이름의 메소드들 구현 */
    public int getPg() {
        return currentPage;
    }

    public void setPg(int currentPage) {
        this.currentPage = currentPage;
    }

    public int getSz() {
        return pageSize;
    }


	public void setSz(int pageSize) {
        this.pageSize = pageSize;
    }

    /* 멤버 변수 값들을 quey string으로 출력하기 위한 메소드 */
    public String getQueryString() {
        return String.format("pg=%d&sz=%d", currentPage, pageSize);
    }

    /* 화면 하단에 페이지 번호 링크들을 출력하기 위한 메소드와 클래스 */
    public List<Page> getPageList() {
        ArrayList<Page> list = new ArrayList<Page>();
        int pageCount = (recordCount + pageSize - 1) / pageSize;
        int basePage = ((currentPage - 1) / 10) * 10;
        if (basePage > 0)
            list.add(new Page("Prev", basePage));
        for (int i = 1; i <= 10 && basePage + i <= pageCount; ++i)
            list.add(new Page(basePage + i, currentPage == basePage + i));
        if (basePage + 11 <= pageCount)
            list.add(new Page("Next", basePage + 11));
        return list;
    }

    public class Page {
        String label;
        int number;
        String cssClass;

        public Page(int number, boolean active) {
            this.label = "" + number;
            this.number = number;
            this.cssClass = active ? "active" : "";
        }

        public Page(String label, int number) {
            this.label = label;
            this.number = number;
            this.cssClass = "";
        }

        public Object getLabel() {
            return label;
        }

        public int getNumber() {
            return number;
        }

        public String getCssClass() {
            return cssClass;
        }
    }
}
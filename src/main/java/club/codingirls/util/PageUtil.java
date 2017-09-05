package club.codingirls.util;

public class PageUtil {
    private Long totalPage;//总页数
    private Integer currentIndex;
    private Integer pageSize; //每页数量
    private Long totalCount;//总记录数

    public Long getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(Long totalSize) {
        this.totalCount = totalSize;
        if (totalSize % pageSize != 0) {
            this.totalPage = totalSize / pageSize + 1;
        } else {
            this.totalPage = totalSize / pageSize;
        }
    }

    public Long getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(Long totalCount) {
        this.totalCount = totalCount;
    }

    public Integer getCurrentIndex() {
        return currentIndex;
    }

    public void setCurrentIndex(Integer currentIndex) {
        this.currentIndex = currentIndex;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

}

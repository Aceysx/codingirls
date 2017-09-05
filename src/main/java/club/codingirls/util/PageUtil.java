package club.codingirls.util;

public class PageUtil {
    private Long totalSize;//总页数
    private Integer currentIndex;
    private Integer pageSize; //每页数量
    private Long totalCount;//总记录数

    public Long getTotalSize() {
        return totalSize;
    }

    public void setTotalSize(Long totalSize) {
        this.totalCount = totalSize;
        if (totalSize % pageSize != 0) {
            this.totalSize = totalSize / pageSize + 1;
        } else {
            this.totalSize = totalSize / pageSize;
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

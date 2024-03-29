package com.rmj.common.page;

import java.util.Collections;
import java.util.List;

/**
 * @author YUSUI
 * created by YUSUI 2019/7/22
 */
public class Page {

    private static final int DEFAULT_PAGE_SIZE = 5;

    /**
     * 当前页
     */
    private Integer currentPage;
    /**
     * 每页显示数据条数
     */
    private Integer pageSize;
    /**
     * 所有记录数
     */
    private int totalRows;
    /**
     * sql查询起始行
     */
    private Integer startRow;
    /**
     * 总页数
     */
    private Integer totalPage;
    /**
     * 查询所得数据集
     */
    private List<?> items;

    public Page() {
        super();
    }

    public final Integer getStartRow() {
        if (startRow == null) {
            startRow = (currentPage == null ? 0 : (currentPage - 1) * getPageSize());
        }
        return startRow;
    }

    public final void setStartRow(Integer startRow) {
        this.startRow = startRow;
    }

    public final Integer getPageSize() {
        return pageSize == null ? DEFAULT_PAGE_SIZE : pageSize;
    }

    public final void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public final int getTotalRows() {
        return totalRows;
    }

    public final void setTotalRows(int totalRows) {
        this.totalRows = totalRows;
        int totalPage = totalRows % getPageSize() == 0 ? totalRows / getPageSize() : totalRows / getPageSize() + 1;
        setTotalPage(totalPage);
    }

    public final List<?> getItems() {
        return items == null ? Collections.EMPTY_LIST : items;
    }

    public final void setItems(List<?> items) {
        this.items = items;
    }

    public final Integer getCurrentPage() {
        return currentPage;
    }

    public final void  setCurrentPage(Integer currentPage) {
        this.currentPage = currentPage;
    }

    public final Integer getTotalPage() {
        return totalPage == null || totalPage == 0 ? 1 : totalPage;
    }

    private final void setTotalPage(Integer totalPage) {
        this.totalPage = totalPage;
    }

}

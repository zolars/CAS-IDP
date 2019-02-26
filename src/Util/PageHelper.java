package Util;

import java.util.ArrayList;
import java.util.List;

public class PageHelper<T> {
    //实体类集合
    private List<T> rows = new ArrayList<T>();
    //数据总条数
    private int total;
    private int page;

    public PageHelper() {
        super();
    }

    public List<T> getRows() {
        return rows;
    }

    public void setRows(List<T> rows) {
        this.rows = rows;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }
}

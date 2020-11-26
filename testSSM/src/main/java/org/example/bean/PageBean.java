package org.example.bean;

import lombok.Data;

@Data
public class PageBean {
    //总记录数
    private Integer total;
    //每页条数
    private Integer count;
    //当前页数
    private Integer nowPage;
    //起始页数
    private Integer beginCount;
    private Integer endPage;

    public PageBean(Integer count, Integer total, Integer nowPage) {
        if (nowPage <= 0) {
            this.nowPage = 1;
        }
        this.nowPage = nowPage;
        this.count = count;
        this.beginCount = (nowPage - 1) * count + 1;
        this.endPage = total / count + 1;
        if (nowPage > endPage) {
            this.nowPage = endPage;
        }
    }

    public Integer getTotal() {
        return total;
    }

    public Integer getCount() {
        return count;
    }

    public Integer getNowPage() {
        return nowPage;
    }

    public Integer getBeginCount() {
        return beginCount;
    }

    public Integer getEndPage() {
        return endPage;
    }
}

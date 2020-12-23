package org.example.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
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
        this.nowPage = nowPage <= 0 ? nowPage = 1 : nowPage;
        this.count = count;
        this.total = total;
        this.endPage = total / count + 1;
        this.nowPage = nowPage > endPage ? nowPage = endPage : nowPage;
        this.beginCount = (nowPage - 1) * count;

    }

}

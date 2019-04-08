package cn.faqm.entity;

//实体类类别信息表
public class Classes {
    private Integer id; //类别编号
    private String cname; //类别名称

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }
}
